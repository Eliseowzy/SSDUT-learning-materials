#!/usr/bin/env python
# -*- coding: UTF-8 -*-
import codecs
import csv
import json
import math
import os
import re
import random
import sys
import traceback
import urllib.request
import json
import pandas as pd
#
#头像
import jieba.analyse
import matplotlib as mpl
from PIL import Image
import numpy as np
from wordcloud import WordCloud
import collections # 词频统计库
from collections import OrderedDict
#

from datetime import date, datetime, timedelta
from time import sleep
import requests
from lxml import etree
from requests.adapters import HTTPAdapter
from tqdm import tqdm


#记录程序运行时间(爬虫爬取微博时间)
import time

class Weibo(object):
    def __init__(self, config):
        """Weibo类初始化"""
        self.validate_config(config)
        self.filter = config[
            'filter']  # 取值范围为0、1,程序默认值为0,代表要爬取用户的全部微博,1代表只爬取用户的原创微博
        since_date = str(config['since_date'])
        if since_date.isdigit():
            since_date = str(date.today() - timedelta(int(since_date)))
        self.since_date = since_date  # 起始时间，即爬取发布日期从该值到现在的微博，形式为yyyy-mm-dd
        self.write_mode = config[
            'write_mode']  # 结果信息保存类型，为list形式，可包含csv、mongo和mysql三种类型
        self.original_pic_download = config[
            'original_pic_download']  # 取值范围为0、1, 0代表不下载原创微博图片,1代表下载
        self.retweet_pic_download = config[
            'retweet_pic_download']  # 取值范围为0、1, 0代表不下载转发微博图片,1代表下载
        self.original_video_download = config[
            'original_video_download']  # 取值范围为0、1, 0代表不下载原创微博视频,1代表下载
        self.retweet_video_download = config[
            'retweet_video_download']  # 取值范围为0、1, 0代表不下载转发微博视频,1代表下载
        user_id_list = config['user_id_list']
        if not isinstance(user_id_list, list):
            if not os.path.isabs(user_id_list):
                user_id_list = os.path.split(
                    os.path.realpath(__file__))[0] + os.sep + user_id_list
            user_id_list = self.get_user_list(user_id_list)
        self.user_id_list = user_id_list  # 要爬取的微博用户的user_id列表
        self.user_id = ''  # 用户id,如昵称为"Dear-迪丽热巴"的id为'1669879400'
        self.user = {}  # 存储目标微博用户信息
        self.got_count = 0  # 存储爬取到的微博数
        self.weibo = []  # 存储爬取到的所有微博信息
        self.weibo_id_list = []  # 存储爬取到的所有微博id

    def validate_config(self, config):
        """验证配置是否正确"""
        # 验证filter、original_pic_download、retweet_pic_download、original_video_download、retweet_video_download
        argument_lsit = [
            'filter', 'original_pic_download', 'retweet_pic_download',
            'original_video_download', 'retweet_video_download'
        ]
        for argument in argument_lsit:
            if config[argument] != 0 and config[argument] != 1:
                sys.exit(u'%s值应为0或1,请重新输入' % config[argument])

        # 验证since_date
        since_date = str(config['since_date'])
        if (not self.is_date(since_date)) and (not since_date.isdigit()):
            sys.exit(u'since_date值应为yyyy-mm-dd形式或整数,请重新输入')

        # 验证write_mode
        write_mode = ['csv']
        if not isinstance(config['write_mode'], list):
            sys.exit(u'write_mode值应为list类型')
        for mode in config['write_mode']:
            if mode not in write_mode:
                sys.exit(u'%s为无效模式，请从csv、mongo和mysql中挑选一个或多个作为write_mode' %
                         mode)

        # 验证user_id_list
        user_id_list = config['user_id_list']
        if (not isinstance(user_id_list,
                           list)) and (not user_id_list.endswith('.txt')):
            sys.exit(u'user_id_list值应为list类型或txt文件路径')
        if not isinstance(user_id_list, list):
            if not os.path.isabs(user_id_list):
                user_id_list = os.path.split(
                    os.path.realpath(__file__))[0] + os.sep + user_id_list
            if not os.path.isfile(user_id_list):
                sys.exit(u'不存在%s文件' % user_id_list)

    def is_date(self, since_date):
        """判断日期格式是否正确"""
        try:
            datetime.strptime(since_date, "%Y-%m-%d")
            return True
        except ValueError:
            return False

    def get_json(self, params):
        """获取网页中json数据"""
        url = 'https://m.weibo.cn/api/container/getIndex?'
        r = requests.get(url, params=params)
        print("jsonUrl:%s"%r.url)
        return r.json()

    def get_weibo_json(self, page):
        """获取网页中微博json数据"""
        params = {'containerid': '107603' + str(self.user_id), 'page': page}
        js = self.get_json(params)
        return js
        
    def get_user_info(self):
        """获取用户信息"""
        params = {'containerid': '100505' + str(self.user_id)}
        js = self.get_json(params)
        if js['ok']:
            info = js['data']['userInfo']
            user_info = {}
            user_info['id'] = self.user_id#用户id
            user_info['screen_name'] = info.get('screen_name', '')#用户昵称
            user_info['gender'] = info.get('gender', '')#用户性别
            user_info['statuses_count'] = info.get('statuses_count', 0)#微博数量
            user_info['followers_count'] = info.get('followers_count', 0)#粉丝数量
            user_info['follow_count'] = info.get('follow_count', 0)#关注数
            user_info['description'] = info.get('description', '')#描述
            user_info['profile_url'] = info.get('profile_url', '')#微博主页url
            user_info['profile_image_url'] = info.get('profile_image_url', '')#用户头像url
            user_info['avatar_hd'] = info.get('avatar_hd', '')#用户高清头像...
            user_info['urank'] = info.get('urank', 0)
            user_info['mbrank'] = info.get('mbrank', 0)
            user_info['verified'] = info.get('verified', False)
            user_info['verified_type'] = info.get('verified_type', 0)
            user_info['verified_reason'] = info.get('verified_reason', '')
            user = self.standardize_info(user_info)
            self.user = user
            return user

    def get_long_weibo(self, id):
        """获取长微博"""
        url = 'https://m.weibo.cn/detail/%s' % id
        html = requests.get(url).text
        html = html[html.find('"status":'):]
        html = html[:html.rfind('"hotScheme"')]
        html = html[:html.rfind(',')]
        html = '{' + html + '}'
        js = json.loads(html, strict=False)
        weibo_info = js.get('status')
        if weibo_info:
            weibo = self.parse_weibo(weibo_info)
            return weibo

    def get_pics(self, weibo_info):
        """获取微博原始图片url"""
        if weibo_info.get('pics'):
            pic_info = weibo_info['pics']
            pic_list = [pic['large']['url'] for pic in pic_info]
            pics = ','.join(pic_list)
        else:
            pics = ''
        return pics



    def download_one_file(self, url, file_path, type, weibo_id):
        """下载单个文件(图片)"""
        try:
            if not os.path.isfile(file_path):
                s = requests.Session()
                s.mount(url, HTTPAdapter(max_retries=5))
                downloaded = s.get(url, timeout=(5, 10))
                with open(file_path, 'wb') as f:
                    f.write(downloaded.content)
        except Exception as e:
            error_file = self.get_filepath(
                type) + os.sep + 'not_downloaded.txt'
            with open(error_file, 'ab') as f:
                url = str(weibo_id) + ':' + url + '\n'
                f.write(url.encode(sys.stdout.encoding))
            print('Error: ', e)
            traceback.print_exc()

    def download_files(self, file_type, weibo_type):
        """下载文件(图片)"""
        try:
            describe = ''
            if file_type == 'img':
                describe = u'图片'
                key = 'pics'
            if weibo_type == 'original':
                describe = u'原创微博' + describe
            else:
                describe = u'转发微博' + describe
            print(u'即将进行%s下载' % describe)
            file_dir = self.get_filepath(file_type)
            file_dir = file_dir + os.sep + describe
            if not os.path.isdir(file_dir):
                os.makedirs(file_dir)
            for w in tqdm(self.weibo, desc='Download progress'):
                if weibo_type == 'retweet':
                    if w.get('retweet'):
                        w = w['retweet']
                    else:
                        continue
                if w.get(key):
                    file_prefix = w['created_at'][:11].replace(
                        '-', '') + '_' + str(w['id'])
                    if file_type == 'img' and ',' in w[key]:
                        w[key] = w[key].split(',')
                        for j, url in enumerate(w[key]):
                            file_suffix = url[url.rfind('.'):]
                            file_name = file_prefix + '_' + str(
                                j + 1) + file_suffix
                            file_path = file_dir + os.sep + file_name
                            self.download_one_file(url, file_path, file_type,
                                                   w['id'])
            print(u'%s下载完毕,保存路径:' % describe)
            print(file_dir)
        except Exception as e:
            print('Error: ', e)
            traceback.print_exc()

    def get_location(self, selector):
        """获取微博发布位置"""
        location_icon = 'timeline_card_small_location_default.png'
        span_list = selector.xpath('//span')
        location = ''
        for i, span in enumerate(span_list):
            if span.xpath('img/@src'):
                if location_icon in span.xpath('img/@src')[0]:
                    location = span_list[i + 1].xpath('string(.)')
                    break
        return location

    def get_topics(self, selector):
        """获取参与的微博话题"""
        span_list = selector.xpath("//span[@class='surl-text']")
        topics = ''
        topic_list = []
        for span in span_list:
            text = span.xpath('string(.)')
            if len(text) > 2 and text[0] == '#' and text[-1] == '#':
                topic_list.append(text[1:-1])
        if topic_list:
            topics = ','.join(topic_list)
        return topics

    def get_at_users(self, selector):
        """获取@用户"""
        a_list = selector.xpath('//a')
        at_users = ''
        at_list = []
        for a in a_list:
            if '@' + a.xpath('@href')[0][3:] == a.xpath('string(.)'):
                at_list.append(a.xpath('string(.)')[1:])
        if at_list:
            at_users = ','.join(at_list)
        return at_users

    def string_to_int(self, string):
        """字符串转换为整数"""
        if isinstance(string, int):
            return string
        elif string.endswith(u'万+'):
            string = int(string[:-2] + '0000')
        elif string.endswith(u'万'):
            string = int(string[:-1] + '0000')
        return int(string)

    def standardize_date(self, created_at):
        """标准化微博发布时间"""
        if u"刚刚" in created_at:
            created_at = datetime.now().strftime("%Y-%m-%d")
        elif u"分钟" in created_at:
            minute = created_at[:created_at.find(u"分钟")]
            minute = timedelta(minutes=int(minute))
            created_at = (datetime.now() - minute).strftime("%Y-%m-%d")
        elif u"小时" in created_at:
            hour = created_at[:created_at.find(u"小时")]
            hour = timedelta(hours=int(hour))
            created_at = (datetime.now() - hour).strftime("%Y-%m-%d")
        elif u"昨天" in created_at:
            day = timedelta(days=1)
            created_at = (datetime.now() - day).strftime("%Y-%m-%d")
        elif created_at.count('-') == 1:
            year = datetime.now().strftime("%Y")
            created_at = year + "-" + created_at
        return created_at

    def standardize_info(self, weibo):
        """标准化信息，去除乱码"""
        for k, v in weibo.items():
            if 'int' not in str(type(v)) and 'long' not in str(
                    type(v)) and 'bool' not in str(type(v)):
                weibo[k] = v.replace(u"\u200b", "").encode(
                    sys.stdout.encoding, "ignore").decode(sys.stdout.encoding)
        return weibo

    def parse_weibo(self, weibo_info):
        weibo = OrderedDict()
        if weibo_info['user']:
            weibo['user_id'] = weibo_info['user']['id']
            weibo['screen_name'] = weibo_info['user']['screen_name']
        else:
            weibo['user_id'] = ''
            weibo['screen_name'] = ''
        weibo['id'] = int(weibo_info['id'])
        weibo['bid'] = weibo_info['bid']
        text_body = weibo_info['text']
        selector = etree.HTML(text_body)
        weibo['text'] = etree.HTML(text_body).xpath('string(.)')
        weibo['pics'] = self.get_pics(weibo_info)
        weibo['location'] = self.get_location(selector)
        weibo['created_at'] = weibo_info['created_at']
        
        weibo['attitudes_count'] = self.string_to_int(
            weibo_info['attitudes_count'])
        weibo['comments_count'] = self.string_to_int(
            weibo_info['comments_count'])
        weibo['reposts_count'] = self.string_to_int(
            weibo_info['reposts_count'])
        weibo['topics'] = self.get_topics(selector)
        weibo['at_users'] = self.get_at_users(selector)
        return self.standardize_info(weibo)
 
    def print_user_info(self):
        """下载用户信息"""
        file_dir = os.path.split(
                os.path.realpath(__file__)
            )[0] + os.sep + 'weibo' + os.sep + self.user['screen_name']
        if not os.path.exists(file_dir):
            os.makedirs(file_dir)
        with open(os.path.join(file_dir,'info.csv'),'w',encoding='utf-8',newline="") as f:
            writer=csv.writer(f)
            writer.writerow(['用户id',self.user['id']])
            writer.writerow(['用户昵称',self.user['screen_name']])
            gender = u'女' if self.user['gender'] == 'f' else u'男'
            writer.writerow(['用户性别',gender])
            writer.writerow(['微博数',self.user['statuses_count']])
            writer.writerow(['粉丝数',self.user['followers_count']])
            writer.writerow(['关注数',self.user['follow_count']])
            writer.writerow(['用户主页URL',self.user['profile_url']])
            writer.writerow(['用户头像URL',self.user['profile_image_url']])
            writer.writerow(['用户头像大图URL',self.user['avatar_hd']])
            if self.user.get('verified_reason'):
                writer.writerow(['用户简介',self.user['description']+","+self.user['verified_reason']])
                
        self.get_touxiang(self.user['avatar_hd'],os.path.join(file_dir,''))
        texts=[]
        texts.append('昵称:'+self.user['screen_name'])
        texts.append('性别:'.join(gender))
        texts.append('粉丝数:'+str(self.user['followers_count']))
        if self.user.get('verified_reason'):
            texts.append(str(self.user['description']))
        #self.get_mingpian(texts,os.path.join(file_dir,'touxiang.png'))
        
       
    def get_touxiang(self,image_url,file_path):
    ###image_url是图片的url,file_path是本地图片储存的位置###
        try:
            if not os.path.exists(file_path):
                os.makedirs(file_path) #如果没有这个path则直接创建
            file_suffix = 'touxiang.png'
            filename = '{}{}'.format(file_path, file_suffix)# 拼接文件名。
            
            urllib.request.urlretrieve(image_url, filename=filename)#利用urllib.request.urltrieve方法下载图片
            
        except IOError as e:
            pass
        except Exception as e:
            pass
    def get_mingpian(self,texts,img_file):
        #word_counts = collections.Counter(texts) # 对分词做词频统计
        print(texts)
        data = ' '.join(text for text in texts)
        
        image_coloring = np.array(Image.open(img_file))
        wc = WordCloud(
            background_color='white',
            mask=image_coloring,
           font_path='fonts//mysh.ttf'
        )
        wc.generate(data)
        wc.to_file(img_file.split('.')[0] + '_wc.png')    

    #生成微博言,第一个参数是微博正文,第二个参数是背景图
    def get_words(self,string_data,img_url):
            # 文本预处理
       
        
        cut_content = ' '.join(string_data)
        image_coloring = np.array(Image.open(img_url))
        wc = WordCloud(
            background_color='white',
            mask=image_coloring,
           font_path='fonts//mysh.ttf'
        )
        #wc.generate_from_text(cut_content)
    
        #wc.to_file(img_url.split('.')[0] + '_word.png')  
       
    def print_one_weibo(self, weibo):
        """打印一条微博"""
        print(u'微博id：%d' % weibo['id'])
        print(u'微博正文：%s' % weibo['text'])
        print(u'原始图片url：%s' % weibo['pics'])
        print(u'微博位置：%s' % weibo['location'])
        print(u'发布时间：%s' % weibo['created_at'])
        
        print(u'点赞数：%d' % weibo['attitudes_count'])
        print(u'评论数：%d' % weibo['comments_count'])
        print(u'转发数：%d' % weibo['reposts_count'])
        print(u'话题：%s' % weibo['topics'])
        print(u'@用户：%s' % weibo['at_users'])
    
    def print_weibo(self, weibo):
        """打印微博，若为转发微博，会同时打印原创和转发部分"""
        if weibo.get('retweet'):
            print('*' * 100)
            print(u'转发部分：')
            self.print_one_weibo(weibo['retweet'])
            print('*' * 100)
            print(u'原创部分：')
        self.print_one_weibo(weibo)
        print('-' * 120)

    def get_one_weibo(self, info):
        """获取一条微博的全部信息"""
        try:
            weibo_info = info['mblog']
            weibo_id = weibo_info['id']
            retweeted_status = weibo_info.get('retweeted_status')
            is_long = weibo_info['isLongText']
            if retweeted_status:  # 转发
                retweet_id = retweeted_status['id']
                is_long_retweet = retweeted_status['isLongText']
                if is_long:
                    weibo = self.get_long_weibo(weibo_id)
                    if not weibo:
                        weibo = self.parse_weibo(weibo_info)
                else:
                    weibo = self.parse_weibo(weibo_info)
                if is_long_retweet:
                    retweet = self.get_long_weibo(retweet_id)
                    if not retweet:
                        retweet = self.parse_weibo(retweeted_status)
                else:
                    retweet = self.parse_weibo(retweeted_status)
                retweet['created_at'] = self.standardize_date(
                    retweeted_status['created_at'])
                weibo['retweet'] = retweet
            else:  # 原创
                if is_long:
                    weibo = self.get_long_weibo(weibo_id)
                    if not weibo:
                        weibo = self.parse_weibo(weibo_info)
                else:
                    weibo = self.parse_weibo(weibo_info)
            weibo['created_at'] = self.standardize_date(
                weibo_info['created_at'])
            return weibo
        except Exception as e:
            print("Error: ", e)
            traceback.print_exc()

    def is_pinned_weibo(self, info):
        """判断微博是否为置顶微博"""
        weibo_info = info['mblog']
        title = weibo_info.get('title')
        if title and title.get('text') == u'置顶':
            return True
        else:
            return False

    def get_one_page(self, page):
        """获取一页的全部微博"""
        try:
            js = self.get_weibo_json(page)
            if js['ok']:
                weibos = js['data']['cards']
                for w in weibos:
                    if w['card_type'] == 9:
                        wb = self.get_one_weibo(w)
                        if wb:
                            if wb['id'] in self.weibo_id_list:
                                continue
                            created_at = datetime.strptime(
                                wb['created_at'], "%Y-%m-%d")
                            since_date = datetime.strptime(
                                self.since_date, "%Y-%m-%d")
                            if created_at < since_date:
                                if self.is_pinned_weibo(w):
                                    continue
                                else:
                                    return True
                            if (not self.filter) or (
                                    'retweet' not in wb.keys()):
                                self.weibo.append(wb)
                                self.weibo_id_list.append(wb['id'])
                                self.got_count = self.got_count + 1
                                self.print_weibo(wb)
        except Exception as e:
            print("Error: ", e)
            traceback.print_exc()

    def get_page_count(self):
        """获取微博页数"""
        weibo_count = self.user['statuses_count']
        page_count = int(math.ceil(weibo_count / 10.0))
        return page_count

    def get_write_info(self, wrote_count):
        """获取要写入的微博信息"""
        write_info = []
        for w in self.weibo[wrote_count:]:
            wb = OrderedDict()
            for k, v in w.items():
                if k not in ['user_id', 'screen_name', 'retweet']:
                    if 'unicode' in str(type(v)):
                        v = v.encode('utf-8')
                    wb[k] = v
            if not self.filter:
                if w.get('retweet'):
                    wb['is_original'] = False
                    for k2, v2 in w['retweet'].items():
                        if 'unicode' in str(type(v2)):
                            v2 = v2.encode('utf-8')
                        wb['retweet_' + k2] = v2
                else:
                    wb['is_original'] = True
            write_info.append(wb)
        return write_info

    def get_filepath(self, type):
        """获取结果文件路径"""
        try:
            file_dir = os.path.split(
                os.path.realpath(__file__)
            )[0] + os.sep + 'weibo' + os.sep + self.user['screen_name']
            if type == 'img' or type == 'video':
                file_dir = file_dir + os.sep + type
            if not os.path.isdir(file_dir):
                os.makedirs(file_dir)
            if type == 'img' or type == 'video':
                return file_dir
            if type=='csv':
                file_path = file_dir + os.sep + self.user_id + '.' + type
                return file_path
            if type=='path':
                return file_dir;
              
        except Exception as e:
            print('Error: ', e)
            traceback.print_exc()

    def get_result_headers(self):
        """获取要写入结果文件的表头"""
        result_headers = [
            'id', 'bid', '正文', '原始图片url', '视频url', '日期', '点赞数',
            '评论数', '转发数', '话题', '@用户'
        ]
        if not self.filter:
            result_headers2 = ['是否原创', '源用户id', '源用户昵称']
            result_headers3 = ['源微博' + r for r in result_headers]
            result_headers = result_headers + result_headers2 + result_headers3
        return result_headers

    def write_csv(self, wrote_count):
        """将爬到的信息写入csv文件"""
        write_info = self.get_write_info(wrote_count)
        result_headers = self.get_result_headers()#获得csv文件的列头
        result_data = [w.values() for w in write_info]
        if sys.version < '3':  # python2.x
            with open(self.get_filepath('csv'), 'ab') as f:
                f.write(codecs.BOM_UTF8)
                writer = csv.writer(f)
                if wrote_count == 0:
                    writer.writerows([result_headers])
                writer.writerows(result_data)
        else:  # python3.x
            with open(self.get_filepath('csv'),
                      'a',
                      encoding='utf-8-sig',
                      newline='') as f:
                writer = csv.writer(f)
                if wrote_count == 0:
                    writer.writerows([result_headers])
                writer.writerows(result_data)
        print(u'%d条微博写入csv文件完毕,保存路径:' % self.got_count)
        print(self.get_filepath('csv'))
    
    def write_data(self, wrote_count):
        """将爬到的信息写入文件"""
        if self.got_count > wrote_count:
            if 'csv' in self.write_mode:
                self.write_csv(wrote_count)
            
            

    def get_pages(self):
        """获取全部微博"""
        self.get_user_info()#得到微博的信息
        page_count = self.get_page_count()#得到微博页数
        wrote_count = 0
        self.print_user_info()#打印进度
        page1 = 0
        random_pages = random.randint(1, 5)
        for page in tqdm(range(1, page_count + 1), desc='Progress'):
            print(u'第%d页' % page)
            is_end = self.get_one_page(page)
            if is_end:
                break

            if page % 100 == 0:  # 每爬100页写入一次文件
                self.write_data(wrote_count)
                wrote_count = self.got_count

            # 通过加入随机等待避免被限制。爬虫速度过快容易被系统限制(一段时间后限
            # 制会自动解除)，加入随机等待模拟人的操作，可降低被系统限制的风险。默
            # 认是每爬取1到5页随机等待6到10秒，如果仍然被限，可适当增加sleep时间
            if page - page1 == random_pages and page < page_count:
                sleep(random.randint(6, 10))
                page1 = page
                random_pages = random.randint(1, 5)
        self.write_data(wrote_count)  # 将剩余不足20页的微博写入文件
        ##在这里开始对微博写入的东西
        #self.get_filepath('csv')获得csv文件路径
        #tPath=self.get_filepath('csv')
       # with open(tPath,'r',encoding='utf-8',newline='') as file:
            #reader=csv.reader(file)
            #content=[]#用来储存所有微博
            #for line in reader:
               # if not line[2]=='正文':
                  #  content.append(line[2])
        #self.get_words(content,os.path.join(self.get_filepath('path'),'touxiang.png'))
        #开始分析
        print(u'微博爬取完成，共爬取%d条微博' % self.got_count)

    def get_user_list(self, file_name):
        """获取文件中的微博id信息"""
        with open(file_name, 'rb') as f:
            lines = f.read().splitlines()
            lines = [line.decode('utf-8') for line in lines]
            user_id_list = [
                line.split(' ')[0] for line in lines
                if len(line.split(' ')) > 0 and line.split(' ')[0].isdigit()
            ]
        return user_id_list

    def initialize_info(self, user_id):
        """初始化爬虫信息"""
        self.weibo = []
        self.user = {}
        self.got_count = 0
        self.user_id = user_id
        self.weibo_id_list = []

    def start(self):
        """运行爬虫"""
        try:
            for user_id in self.user_id_list:
                self.initialize_info(user_id)
                self.get_pages()
                print(u'信息抓取完毕')
                print('*' * 100)
                if self.original_pic_download:
                    self.download_files('img', 'original')
                if self.original_video_download:
                    self.download_files('video', 'original')
                if not self.filter:
                    if self.retweet_pic_download:
                        self.download_files('img', 'retweet')
                    if self.retweet_video_download:
                        self.download_files('video', 'retweet')
        except Exception as e:
            print('Error: ', e)
            traceback.print_exc()


def main():
    start_time=time.time()
    try:
        config_path = os.path.split(
            os.path.realpath(__file__))[0] + os.sep + 'settings.json'
        if not os.path.isfile(config_path):
            sys.exit(u'当前路径：%s 不存在配置文件settings.json' %
                     (os.path.split(os.path.realpath(__file__))[0] + os.sep))
        with open(config_path) as f:
            config = json.loads(f.read())
        wb = Weibo(config)
        wb.start()  # 爬取微博信息
    
    except ValueError:
        print(u'config.json 格式不正确，请参考 ')
    except Exception as e:
        print('Error: ', e)
        traceback.print_exc()
    end_time=time.time()
    
    print("程序运行时间:{}".format(end_time-start_time))

if __name__ == '__main__':
    main()
    
