> 学习过程中，遇到问题可以咨询作者
### 说明
管理员界面
用户名：sa 密码：123
### 功能介绍
平台采用B/S结构，后端采用主流的java语言进行开发，前端采用常见的tomcat进行开发。
整个平台包括前台和后台两个部分。

*  前台功能包括：首页、我的购物车、我的订单、用户中心、会员登录、会员注册、配送说明、关于我们、超市公告、注销退出。
*  后台功能包括：商品管理、商品类别管理、公告信息管理、销售订单管理、系统用户管理、注销退出。
### 代码结构
*  src/java/com/example/meal_ordering_system目录是后端代码
*  src/webapp目录是前端代码
### 部署运行
注意在安装完各个软件或依赖后要配置环境变量！

(1) 安装 jdk 1.8

(2) 安装专业版 IntelliJ IDEA 2023.2.5

(3) 安装 tomcat 8.8.53

(4) 安装mysql 5.7 数据库

(5) 安装Navicat Premium 12，破解后打开并创建数据库，命名为apsfc

*  创建数据库方法：

![image](https://github.com/Seven0610/yaoyaolingxian_ordering_system/assets/131602007/85399c05-cdb1-4a5b-b481-6d7ffe4bc6bb)

*  从navicat中向数据库中导入apsfc.sql文件（该文件在主目录下）
*  在idea中修改数据库配置（所有的username和password都要修改成自己之前数据库中设置的）

![image](https://github.com/Seven0610/yaoyaolingxian_ordering_system/assets/131602007/b90aba51-8669-4055-82d8-449e494a6744)

(6) 在idea中添加tomcat

![image](https://github.com/Seven0610/yaoyaolingxian_ordering_system/assets/131602007/5e2827ce-18b9-4d91-82a9-324ac67be0d2)

![image](https://github.com/Seven0610/yaoyaolingxian_ordering_system/assets/131602007/17424d4a-6d68-4319-9c1f-ee33c676fbd7)

点击local

![image](https://github.com/Seven0610/yaoyaolingxian_ordering_system/assets/131602007/65029e51-5371-4c67-836d-52eb086af663)

选择yaoyaolingxian_ordering_system:war exploded，然后点击OK

![image](https://github.com/Seven0610/yaoyaolingxian_ordering_system/assets/131602007/bb5f2638-5572-4e7b-91a0-97fe3d14fde6)

这里只保留一个“/”，否则以后得有些功能会有些影响

点击Apply，然后点击OK

配置好后点击右上角启动项目

![image](https://github.com/Seven0610/yaoyaolingxian_ordering_system/assets/131602007/5e807d72-b7c3-4294-af65-e09ab77d5dff)

若出现关于数据库的错误请修改上图中选中的区域，并改为下面的语句来进行修复

    jdbc:mysql://127.0.0.1/apsfc?autoReconnect=true&amp;useUnicode=true&amp;characterEncoding=utf8&amp;useSSL=false&amp;serverTimezone=Asia/Shanghai
    
