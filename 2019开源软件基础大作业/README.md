





**iDouWord**

---

[目录](#目录)

[项目介绍](#项目介绍)

[预期目标](#预期目标)

[运行环境](#运行环境)

[运行示例](#运行示例)

[项目进展](#项目进展)

[后期计划](#后期计划)





----

# 项目介绍

## 项目背景

当下微博已经成为各个年龄段网友冲浪的重要平台之一,许多影视明星、大V网红、官方代表也纷纷入驻微博这一平台.在此背景下,微博已经成为众多粉丝获取爱豆近况、爱豆自拍、和爱豆互动的有效平台之一,于是获取爱豆的微博照片、视频,能满足粉丝的追星需求.当然分析一些明星、知名博主微博点赞数、转发数、评论数并可视化,在一定程度上也能度量博主的受关注度和热度(看看就好,别当真(#^.^#)).



**对于个人用户来说,也能使用本项目分析自己的受关注程度,查看自己一定时期内所发微博内容,不仅仅是回忆青(s)春(b)岁月,也是下饭的小甜点**



**对于喜欢表情包或者喜欢收藏其他类型图片的个人用户来说,也可以相关方面比较活跃(微博数量较多)的博主UID,下载响应资源到本地,\\\\\\\^_^ **



## 项目目的

**~~为了开源大作业~~ **

**~~展示开源所学知识~~**

-----------------

**为了找到爱豆喜欢讲的话**

**为了私藏爱豆微博所发的写真照**

**为了及时关注爱豆热度,制定打榜计划**

**...**





-----

# 预期目标

1. 实现根据给定目标用户的微博UID,得到**目标用户微博个人资料**,保存到本地
   
2. 依据**目标用户微博UID**抓取一定时期内目标用户所发(原创和转发)微博(包含图片、视频),保存到本地

3. 依据所抓取目标用户微博内容、目标用户头像制作目标用户微博**关键词词云**

4. 依据目标用户微博个人资料,制作目标用户个人**电子名片**

5. 可视化目标用户日、月、年度微博点赞数、转发数

6. 依据目标用户原创微博所@用户,可视化用户好友关系图

7. 设置评论数阈值,爬取目标用户热门微博下热评

8. 统计目标用户热门微博下热评次数较多用户,挖掘目标用户狂热粉丝

   

# 运行环境

+ Python 3.6

+ requirements.txt文件内Python包

+ msyh.ttf字体 (主要用于生成目标用户电子名片以及微博关键词词云,项目使用者可以在更改源码以改用其他支持中文的TTF字体)

+ jupyter notebook 平台运行项目扩展功能

  

-----

# 运行示例

### 1.将项目克隆到本地

如图所示

### 2.配置settings.json文件

*settings.json*文件内容及含义如下:

```json
{
  "user_id_list": "user_id_list.txt",
  "filter": 1,
  "since_date": "2019-12-01",
  "write_mode": [ "csv" ],
  "original_pic_download": 0,
  "retweet_pic_download": 0,
  "original_video_download": 0,
  "retweet_video_download": 0
}
```

+ ^user_is_list^ :对应储存目标用户微博UID和昵称(用户自定义)的文件路径

  如目标用户为人民日报,通过[查找微博用户UID]()得到人民日报的微博UID为:2803301701

  可以在程序同一路径下定义^user_id_list.txt^文件储存目标用户微博UID和昵称

  ^user_id_list.txt^文件格式要求如下:

  + 一个目标用户微博UID 后跟空格,之后跟用户自定义昵称

  + 一个目标用户信息在一行

  + 可以自定义多个目标用户

    **user_id_list.txt文件名称可以更改,更改后相应的settings.json文件内user_id_list项所对值也要更改**

+ ^filter^ :取值为0代表仅仅下载目标用户的原创微博,取值为1代表下载目标用户的原创微博和转发微博

+ ^since_date^:代表爬取微博截止日期,格式应该以**年-月-日**的形式.(**ps:**在爬取目标用户微博的时候是从目标用户最近的微博开始爬取的,对于发博较多、发博较频繁的博主,应合理设置爬取微博截止日期,以防爬取时间过长,或者爬取过程中出现网络波动等意外情况终止了程序的进行,致使最后无法生成目标用户的微博关键词,当然**如果你的网络状况极其稳定,对目标用户的微博极其感兴趣,请忽视此条ps**)

+ ^write_mode^:储存模式,当前只支持csv模式,所爬取目标用户微博会以csv文件格式储存在本地

+ ^original_pic_download^:是否下载原创微博中包含的图片,只有0和1两个取值,默认为0(不下载),1代表下载

+ ^retweet_pic_download^:是否下载转发微博中包含的图片,只有0和1两个取值,默认为0(不下载),1代表下载

+ ^original_video_download^:是否下载原创微博中包含的视频,只有0和1两个取值,默认为0(不下载),1代表下载

+ ^retweet_video_download^:是否下载转发微博中包含的视频,只有0和1两个取值,默认为0(不下载),1代表下载

### 3.下载requirements.txt文件内python 包

命令行进入到项目所在路径下,输入**pip install requirements.txt**

即可,对于不能下载的包,请到[PyPI.org](https://pypi.org)内下载

### 4.下载ttf字体

项目默认使用fonts内的^msyh.ttf^字体,要使用其他的字体只需将字体下载到fonts内.并将程序内所有的msyh.ttf换成想要自定义字体即可

### 5.命令行运行

配置好上述设置后,在命令行输入**python iDouWord**即可运行

### 6.运行结果展示

相关配置如下:

程序运行时间:2019年12月22日16:16:36

目标用户UID:2803301701

**爬取之前进行的观察:**目标用户为人民日报,微博内查看其发博数量和频率,设置爬取微博截止日期为2019-12-01

借助开源项目pyecharts

+ 博主话题词云图

+ 博主好友词云图

+ 博主@圈

+ 博主话题圈

  结果在对人民日报爬取微博可视化内.

----

# 项目进展

**绿色项代表已经实现相应功能**

1. <font color=green>实现根据给定目标用户的微博UID,得到**目标用户微博个人资料**,保存到本地</font>
2. <font color=green>依据**目标用户微博UID**抓取一定时期内目标用户所发(原创和转发)微博(包含图片、视频),保存到本地</font>
3. <font color=green>依据所抓取目标用户微博内容、目标用户头像制作目标用户微博**关键词词云**</font>
4. <font color=green>依据目标用户微博个人资料,制作目标用户个人**电子名片**</font>
5. 可视化目标用户日、月、年度微博点赞数、转发数
6. <font color=green>依据目标用户原创微博所@用户,可视化用户好友关系图</font>
7. 设置评论数阈值,爬取目标用户热门微博下热评
8. 统计目标用户热门微博下热评次数较多用户,挖掘目标用户狂热粉丝



----

# 后期计划

1. 完成项目目标中没有完成的功能

2. 在目标用户的微博关键词词云已经初步完成的功能基础上去除文本中意义不大的文本(如微博正文夹杂的话题),添加文文本分析(利用结巴分词),筛选出更加具有代表性的微博正文内容关键词

3. 模拟微博根据用户昵称得到一些用户列表,并能依次获得用户微博UID

4. 在目标用户的"@好友圈词云"功能的基础上,添加智能分类功能:

   + 训练集包括微博用户昵称和账号所属类型标签(如歌手,演员,导演,官微,情感博主等)
   + 在目标用户所@的好友进行可视化的时候依据训练集训练的模型进行分类

5. 依据点赞数、转发数或者评论数抓取目标用户热度较高微博的评论,分析目标用户发什么内容热度较高

6. 在[后期计划](#后期计划) 3和4 的基础上,分析目标用户的微博关系网:

   + 根据目标用户关注列表以及经常@或者转发的用户分析和目标用户比较亲密的微博好友
   + 预测目标用户的亲密好友之后递归分析目标用户亲密好友的亲密好友
   + 可视化目标用户和目标用户的亲密好友关系
   + 依据目标用户和目标用户的亲密好友去加强[后期计划](#后期计划) 4的智能分类功能,预测目标用户可能感兴趣的圈子

7. **基于文本分析目标用户的可能性格**:根据用户微博所发内容试图分析用户的情感倾向(如对某些话题感兴趣,对某些用户感兴趣或厌恶),预测目标用户的性格,已经查阅参考资料如下:

   + [ 孔仪. 基于文本信息的人物性格分析算法的研究与实现[J]. 计算机科学与应用, 2019, 9(12): 2191-2207. ](https://www.hanspub.org/journal/PaperInformation.aspx?paperID=33231)
   + [基于文本分析的微博用户性格获取模型_毕崇武](https://wenku.baidu.com/view/16a7968fbdeb19e8b8f67c1cfad6195f312be82a.html)
   + [ 刘真亦. 不同人格倾向微博用户的情绪表达分析[D].浙江大学,2019. ](https://kns.cnki.net/KCMS/detail/detail.aspx?dbcode=CMFD&dbname=CMFD201902&filename=1019073806.nh&uid=WEEvREcwSlJHSldRa1FhdXNXaEhoRFR4OExrUUZyamxLbnlTc0NiV2RTcz0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4IQMovwHtwkF4VYPoHbKxJw!!&v=MTA5ODBWRjI2RjdPL0hkbk1xWkViUElSOGVYMUx1eFlTN0RoMVQzcVRyV00xRnJDVVJMT2VaZVJzRkNubFc3ekw=)
   + [ 李凯. 基于词典与改进信息增益的微博情感分析[D].安徽理工大学,2019. ](https://kns.cnki.net/KCMS/detail/detail.aspx?dbcode=CMFD&dbname=CMFDTEMP&filename=1019143859.nh&uid=WEEvREcwSlJHSldRa1FhdXNXaEhoRFR4OExrUUZyamxLbnlTc0NiV2RTcz0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4IQMovwHtwkF4VYPoHbKxJw!!&v=MjA5MzJGQ25tVXJySVZGMjZGN0s4SGRuSnBwRWJQSVI4ZVgxTHV4WVM3RGgxVDNxVHJXTTFGckNVUkxPZVplUnM=)
   + [ 张宇. 面向微博文本的情感分析模型研究[D].天津商业大学,2019. ](https://kns.cnki.net/KCMS/detail/detail.aspx?dbcode=CMFD&dbname=CMFD201902&filename=1019104091.nh&uid=WEEvREcwSlJHSldRa1FhdXNXaEhoRFR4OExrUUZyamxLbnlTc0NiV2RTcz0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4IQMovwHtwkF4VYPoHbKxJw!!&v=MTc1MTRubVU3M0lWRjI2RjdLNEd0SEZycEViUElSOGVYMUx1eFlTN0RoMVQzcVRyV00xRnJDVVJMT2VaZVJzRkM=)

8. 检测目标用户是否存在传播色情淫秽内容


   









