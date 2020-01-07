#作图需要的
import json
import os
from pyecharts import options as opts
from pyecharts.charts import Graph, Page
import csv
#词云图
from pyecharts.charts import  WordCloud
from pyecharts.globals import SymbolType
import random #用来随机选定词云形状
#
#这个函数的主要用作是用来生成ralations关系图
#参数source_url代表了已经抓取的目标用户微博信息的路径,
#target_url代表了关系图储存的路径
#
def get_relations():
    
    source_url='E:\\PythonProjects\\weibo-crawler-master\\res\\weibo\\人民日报\\2803301701.csv';
    target_url='E:\\PythonProjects\\weibo-crawler-master\\weibo\\人民日报';
    info_url='E:\\PythonProjects\\weibo-crawler-master\\weibo\\人民日报\\info.csv'
    with open(info_url,'r',encoding='utf-8',newline='') as file:
        reader=csv.reader(file)
        for line in reader:
            if line[0]=='用户昵称':
                usr_name=line[1]#得到这个博主昵称
                break
    
    with open(source_url,'r',encoding='utf-8',newline='') as file:
        reader=csv.reader(file)
        content={}#用来储存所有微博
        haoyou_url={}
        nodes=[{"name":str(usr_name),"symbolSize":30,"category":usr_name}]#结点
        links=[]#连接
        categories=[{"name":usr_name},{"name":'friends'},{"name":'friend'}]
       
        counter=0
        for line in reader:
            if line[10]:
                if line[10]!='@用户':
                    for usr in str(line[10]).split(','):
                        if usr in content.keys():
                            content[usr]+=1
                            if line[3]:#当 话题对应图片的url不是空,把第一张图片加进去
                                pic_url=str(line[3]).split(',')[0]
                                haoyou_url[usr]=pic_url
                                print(pic_url)
                        else :
                            content[usr]=1;
                            if  line[3]:#当 话题对应图片的url不是空,把第一张图片加进去
                                pic_url=str(line[3]).split(',')[0]
                                haoyou_url[usr]=pic_url
                        #print(usr)#测试成功
                    ##利用字典,对字典进行++操作
    ##这里考虑写一个过滤器,根据微博id预测博主可能是什么类型的
    ##明星
    ##政府官微
    ##新闻类..
    for w,t in content.items():
        if w!=usr_name:
            if t>0:
                counter+=1
                if w not in haoyou_url.keys():
                    nodes.append({"name":str(w),"symbolSize":str(t+20),'category':'friends'})
                else:
                    nodes.append({"name":str(w),"symbolSize":str(t+20),'category':'friends',"symbol":"image://"+haoyou_url[w]})
                links.append({"source":str(w),"target":usr_name})
                print(str(w)+":"+str(t))
        
                   ##旭日图,词云图 
    #先做个关系图吧       
    c = (
        Graph(init_opts=opts.InitOpts(width="1600px", height="700px",theme='vintage',page_title="博主@圈图"))
        .add("", nodes, links, categories, repulsion=8000)
        .set_global_opts(title_opts=opts.TitleOpts(title="博主@圈"),legend_opts=opts.LegendOpts(is_show=False))
    )
    #return c
    #print(len(nodes))
    #功能以及简单实现
    c.render("博主@圈.html")
    
    
    
###########################
#source_url:博文文件的path
#target_url,博文文件所在文件夹
#
#
###########################
def get_huati():
    #print("?")
    source_url='E:\\PythonProjects\\weibo-crawler-master\\res\\weibo\\人民日报\\2803301701.csv';
    target_url='E:\\PythonProjects\\weibo-crawler-master\\res\\weibo\\人民日报';
    with open(source_url,'r',encoding='utf-8',newline='') as file:
        reader=csv.reader(file)
        content={}#用来储存所有微博
        nodes=[]
        links=[]
        huati_url={}#话题图片
        categories=[]
        counter=0
        for line in reader:
            if line[9]:
                if line[9]!='话题':
                    for usr in str(line[9]).split(','):
                        #print(usr)#测试成功
                        ##利用字典,对字典进行++操作
                        if usr in content.keys():
                            content[usr]+=1
                            if line[3]:#当 话题对应图片的url不是空,把第一张图片加进去
                                pic_url=str(line[3]).split(',')[0]
                                huati_url[usr]=pic_url
                                print(pic_url)
                        else :
                            content[usr]=1;
                            if  line[3]:#当 话题对应图片的url不是空,把第一张图片加进去
                                pic_url=str(line[3]).split(',')[0]
                                huati_url[usr]=pic_url
                        ##旭日图
    ##这里要写一系列的过滤规则,话题数太多,怎么分析,
    ##梯度过滤,如果话题过多,就筛选话题被重复提起的次数
    ##
    for k ,v in huati_url.items():
        print(huati_url[k])
    i=1

    for w,t in content.items():
        counter+=1
        if t>0:
            if w not in huati_url.keys():
                nodes.append({"name":w,"symbolSize":t+20,"category":w})
            else :
                nodes.append({"name":w,"symbolSize":t+20,"category":w,"symbol":"image://"+huati_url[w]})
            categories.append({"name":w})
           # print(str(i)+"      "+str(w)+":"+str(t))
            i+=1
    huatiCircle = (
        Graph(init_opts=opts.InitOpts(width="1600px", height="700px",theme='vintage',page_title="博主话题圈"))
        .add("", nodes, links, categories, repulsion=8000)
        .set_global_opts(title_opts=opts.TitleOpts(title="博主话题圈"),legend_opts=opts.LegendOpts(is_show=False))
        
    )
    #return c
    #print(len(nodes))
    #功能以及简单实现
    huatiCircle.render("博主话题圈.html")
                        
def get_cloud_word():
    source_url='E:\\PythonProjects\\weibo-crawler-master\\res\\weibo\\人民日报\\2803301701.csv';
    target_url='E:\\PythonProjects\\weibo-crawler-master\\res\\weibo\\人民日报';
    with open(source_url,'r',encoding='utf-8',newline='') as file:
        reader=csv.reader(file)
        huati_content={}#用来储存所有话题微博
        haoyou_content={}#用来储存所有@的好友
        for line in reader:
            if line[9]:
                if line[9]!='话题':
                    for usr in str(line[9]).split(','):
                        #print(usr)#测试成功
                        ##利用字典,对字典进行++操作
                        if usr in huati_content.keys():
                            huati_content[usr]+=1
                        else :
                            huati_content[usr]=0
            if line[10]:
                if line[10]!='@用户':
                    for usr in str(line[10]).split(','):
                        if usr in haoyou_content.keys():
                            haoyou_content[usr]+=1
                        else:
                            haoyou_content[usr]=0
    huati_words=[]
    haoyou_words=[]
    for w ,t in huati_content.items():
        if t>0:
            huati_words.append((w,t))
    for w,t in haoyou_content.items():
        if t>0:
            haoyou_words.append((w,t))
# 词云图轮廓，有 'circle', 'cardioid', 'diamond', 'triangle-forward', 'triangle', 'pentagon', 'star' 可选
    shapes=['circle', 'cardioid', 'diamond', 'triangle-forward', 'triangle', 'pentagon', 'star']#7个
    shape=shapes[random.randint(0,7)]
    huati_wc = (
        WordCloud(init_opts=opts.InitOpts(width="1600px", height="700px",theme='vintage',page_title="博主话题词云图"))
        .add("", huati_words, word_size_range=[20, 100],shape=shape)
        .set_global_opts(title_opts=opts.TitleOpts(title="博主话题词云库"))
    )
    huati_wc.render("博主话题词云图.html")
    shape=shapes[random.randint(0,7)]
    haoyou_wc = (
        WordCloud(init_opts=opts.InitOpts(width="1600px", height="700px",theme='vintage',page_title="博主@的用户词云图"))
        .add("", haoyou_words, word_size_range=[20, 100],shape=shape)
        .set_global_opts(title_opts=opts.TitleOpts(title="博主话题词云图"))
    )
    haoyou_wc.render("博主好友词云图.html")
    
if __name__=='__main__':
    get_cloud_word()
    
                
    
    