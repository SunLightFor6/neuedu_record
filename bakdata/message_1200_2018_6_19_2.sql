prompt Importing table MESSAGE...
set feedback off
set define off
insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1294, '我', '【操作总结】直接导入老师的项目文件夹需要处理的事情', '1. jar包的操作。一步步创建项目的时候jar包会自动build，但直接复制过来的需要给项目手动配置build path，增加额外包。
2. 项目属性，project facets选项，配置项目的类型，如动态web项目。这样右击run的时候就可以有在服务器上运行run on serve的选项了。
3. jar包。配置jdk。build path，JRE系统库。首先删除原本的jre配置，然后新增library，选jre系统库。
4. jar包。配置servlet-api.jar 由于这是在tomcat目录下引入的EAR，所以要重新引入。
5. 代码中涉及连接数据库的，修改代码', to_date('19-06-2018 14:38:27', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1293, '我', '【操作总结】eclipse项目重命名 -- 4件事情', '1. 项目重命名，项目右击属性重命名
2. web.xml中项目重命名
3. 项目目录下.project文件中项目命名
4. 项目目录下.settings/org.eclipse.wst.common.component文件中项目命名以及路径命名', to_date('19-06-2018 14:32:04', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1292, '我', '【日志记录到文件】直接使用log4j', 'log4j.rootLogger=DEBUG, stdout, D, E
### 输出到日志文件 ###
log4j.appender.D = org.apache.log4j.DailyRollingFileAppender
###设置DatePattern，当天日志保存到log.log文件，前一天的日志文件名将被修改为
#log.log + _yyyy-MM-dd.log
log4j.appender.D.File =D:/Users/Sun/Java_workspace/neuedu/SSMPro2/logs/log.log
log4j.appender.D.DatePattern = ''_''yyyy-MM-dd''.log''
log4j.appender.D.Append = true', to_date('19-06-2018 13:14:26', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1291, '我', '【突然发现】', '回车的问题突然解决了。一直没放在心上哈哈哈！
【想想为什么得到了解决】目前对字符串的处理： 传入不处理，直接存入数据库。传出处理。
因为传入处理了，传出的时候会显示转码后的字符，不会自动解码', to_date('19-06-2018 13:11:50', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1289, '我', '【问题解决】】', '更新操作的返回值，竟然返回了null，但本应该返回int的1或者0.
考虑，是mapper.xml中配置的问题！！
insert若是用select包围，其返回值就是null!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!解决即可。
【十分愤怒和开心】', to_date('19-06-2018 13:07:25', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1288, '我', '【【问题描述】', '1. 插入删除等更新操作报错：attempted to return null from a method with a primitive return type (int).
2. 解决1，抛出null异常。插入数据库中，数据库不显示，但是能读取出来这一条记录。
3. 解决2，在更新操作之后加了commit操作。
--重启服务器数据丢失
--still insert返回值应该是0或1，为什么是null?为什么插入不了？', to_date('19-06-2018 13:05:38', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1285, '我', '回来了回来了', '我的脑子回来了 我现在看看这两天 浏览器搜索记录 总结一下  然后配置一下log4j输出到文件', to_date('19-06-2018 10:57:31', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1284, '我', '【问题】我的字符串过滤的工具类可能也出了毛病', '脑子快回来。', to_date('19-06-2018 10:51:35', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1283, '我', '【刚刚找了个bug，我的脑子可能生病受到了影响】', '这个bug真的是，让我十分fine啊！！mybatis中mapper文件中插入语句竟然用<select></select>包住了。我很厉害的', to_date('19-06-2018 10:50:44', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1249, '我', '【问题】传入数据转码，', '【问题】传入数据转码，获取数据不自动解码！在handler中对传入数据转码，从数据库中读出来的时候并不会自动解码。为什么', to_date('17-06-2018 21:00:15', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1248, '我', '遍历用&lt;foreach&gt;&lt;/foreach&gt;&nbsp;&nbsp;', '遍历用&lt;foreach&gt;&lt;/foreach&gt;&nbsp;&nbsp;', to_date('17-06-2018 20:54:28', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1247, '我', '&lt;&gt;&lt;&gt;', '&lt;&gt;&lt;&gt;', to_date('17-06-2018 20:53:00', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1246, '我', '处理恶意字符串', '原本是在从DAO取出数据时候处理的，这样做的好处是，可以直接在数据库中查看数据内容。但考虑到正常操作下不应该把数据库暴露给外部，所以应该在进数据库之前处理。', to_date('17-06-2018 20:32:37', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1245, '我', '解决pageMapper.xml中的问题', '1. 类名写全写到包名 2. #{ }只能用来取值  不能用来计算', to_date('17-06-2018 20:31:01', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1242, '我', 'MyBatis传入多个参数的处理办法', '1. 封装一个类,#{ }匹配类的属性 2. 使用Map, #{ } 匹配map的key 3. 使用List封装，#{ }匹配遍历的item，遍历用<foreach></foreach>    (只能用mapper.方法，调用接口)4. 直接传参 #{ } 匹配index  5. 带注解传参method(@param int a, @param int b) #{ } 匹配参数', to_date('15-06-2018 13:47:05', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1241, '我', '最佳作用域的概念', '理解我们目前已经讨论过的不同作用域和生命周期类是至关重要的，因为错误的使用会导致非常严重的并发问题。', to_date('15-06-2018 11:21:56', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1236, '我', ' Spring MVC 框架中拦截器 Interceptor', 'https://blog.csdn.net/qq_35246620/article/details/68487904', to_date('13-06-2018 20:32:08', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1233, '我', '/**    /*', '/**的意思是所有文件夹及里面的子文件夹
/*是所有文件夹，不含子文件夹
/是web项目的根目录', to_date('13-06-2018 14:06:28', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1232, '我', '拦截器适配器  拦截器应用', 'http://jinnianshilongnian.iteye.com/blog/1670856/', to_date('13-06-2018 13:49:31', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1231, '我', '拦截器', '本质也是AOP（面向切面编程），也就是说符合横切关注点的所有功能都可以放入拦截器实现。  http://jinnianshilongnian.iteye.com/blog/1670856/', to_date('13-06-2018 13:43:36', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1230, '我', 'Spring拦截器Interceptor', 'public class MyInterceptor implements HandlerInterceptor {', to_date('13-06-2018 13:42:16', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1229, '我', 'springxml文件配置', 'rg.xml.sax.SAXParseException; lineNumber: 31; columnNumber: 8; 注释中不允许出现字符串 "--"。', to_date('13-06-2018 13:35:44', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1226, '<>', '<>', '<script>
while(true) {
alert("hhh");
}
</script>', to_date('12-06-2018 18:43:01', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1225, '<><>', '< ><>', '<><><>', to_date('12-06-2018 18:38:54', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1224, '<><>', '< ><>', '<><><>', to_date('12-06-2018 18:38:50', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1219, '<h2>qqq</h2>', '&lt;h2&gt;qqqsss是是是&lt;/h2&gt;', '&lt;h2&gt;q对对对qq&lt;/h2&gt;', to_date('12-06-2018 15:45:25', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1218, 'test', 'test', '<h1>哈哈哈</h1>', to_date('12-06-2018 15:29:54', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1217, '我', '现在可以', '可以了可以了', to_date('12-06-2018 15:12:19', 'dd-mm-yyyy hh24:mi:ss'), '10.25.39.151');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1216, '我', '使用JDBC和存储过程进行Oracle分页查询', '	https://my.oschina.net/realfighter/blog/349717', to_date('12-06-2018 15:07:59', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1214, '我', 'EL表达式', 'EL表达式要求bean类要有get/set方法', to_date('12-06-2018 13:30:11', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1212, '我', '【重用性增强】--2', 'Service中，页码的计算，不能写死，要根据显示页码个数（pagesNumber）（Page中设置的默认值）进行判断', to_date('12-06-2018 11:42:19', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1211, '我', '【重用性增强】--1', 'Page类，结果集不使用Message，使用范型Object', to_date('12-06-2018 11:38:50', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1210, '我', '接上', ' < mvc:default-servlet-handler/ >', to_date('12-06-2018 11:22:49', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1209, '我', '【问题解决】静态资源访问问题解决', 'servlet.DispatcherServlet noHandlerFound 警告: No mapping found for HTTP request with URI [/SpringMVCPro1/css/bootstrap.css] in DispatcherServlet with name ''springmvc''    静态资源访问   要在spring中配置默认静态资源的处理：<mvc:default-servlet-handler/>', to_date('12-06-2018 11:22:32', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1208, '我', '一个很好的博客网站', 'http://www.blogjava.net/Steven-bot/articles/361333.html', to_date('12-06-2018 11:18:57', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1207, '我', 'u/p/5552034.html', '如何你的DispatcherServlet拦截 *.do这样的URL，就不存在访问不到静态资源的问题。如果你的DispatcherServlet拦截“/”，拦截了所有的请求，同时对*.js,*.jpg的访问也就被拦截了 。  https://www.cnblogs.com/shanheyongmu/p/5552034.html', to_date('12-06-2018 11:17:39', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1206, '我', '<url-pattern>/</url-pattern> ', '<url-pattern>/</url-pattern> ', to_date('12-06-2018 11:12:24', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1205, '我', '<url-pattern>/</url-pattern> ', '<url-pattern>/</url-pattern> ', to_date('12-06-2018 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1204, '我', '我', '<url-pattern>/</url-pattern>  会匹配到/login这样的路径型url，不会匹配到模式为*.jsp这样的后缀型url
<url-pattern>/*</url-pattern> 会匹配所有url：路径型的和后缀型的url(包括/login,*.jsp,*.js和*.html等)', to_date('12-06-2018 11:07:49', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1203, '我', 'spring MVC的困惑--url-pattern的/和/*有区别', 'https://www.cnblogs.com/springmvc3/archive/2011/10/24/2223093.html', to_date('12-06-2018 11:06:52', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1202, '我', '纯EL', ' < c:set value="${pageContext.request.contextPath}" var="path" scope="page"/ >', to_date('12-06-2018 10:45:56', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1201, 'w', '我', ' <c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>', to_date('12-06-2018 10:45:23', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

prompt Done.
