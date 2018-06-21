prompt PL/SQL Developer import file
prompt Created on 2018年6月19日 by Sun
set feedback off
set define off
prompt Disabling triggers for MESSAGE...
alter table MESSAGE disable all triggers;
prompt Deleting MESSAGE...
delete from MESSAGE;
commit;
prompt Loading MESSAGE...
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1199, '我', 'WEB-INF文件夹', 'TomCat 服务器下的WEB-INF文件夹是一个非常安全的文件，在页面中不能直接访问其中的文件，必须通过web.xml文件对要访问的文件进行相应映射才能访问。', to_date('12-06-2018 10:43:17', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1200, '我', '纯EL表达式表达', '<%=request.getContextPath()%>/ ---  <c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>', to_date('12-06-2018 10:45:07', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1201, 'w', '我', ' <c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>', to_date('12-06-2018 10:45:23', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1202, '我', '纯EL', ' < c:set value="${pageContext.request.contextPath}" var="path" scope="page"/ >', to_date('12-06-2018 10:45:56', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1205, '我', '<url-pattern>/</url-pattern> ', '<url-pattern>/</url-pattern> ', to_date('12-06-2018 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1206, '我', '<url-pattern>/</url-pattern> ', '<url-pattern>/</url-pattern> ', to_date('12-06-2018 11:12:24', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1209, '我', '【问题解决】静态资源访问问题解决', 'servlet.DispatcherServlet noHandlerFound 警告: No mapping found for HTTP request with URI [/SpringMVCPro1/css/bootstrap.css] in DispatcherServlet with name ''springmvc''    静态资源访问   要在spring中配置默认静态资源的处理：<mvc:default-servlet-handler/>', to_date('12-06-2018 11:22:32', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1210, '我', '接上', ' < mvc:default-servlet-handler/ >', to_date('12-06-2018 11:22:49', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1212, '我', '【重用性增强】--2', 'Service中，页码的计算，不能写死，要根据显示页码个数（pagesNumber）（Page中设置的默认值）进行判断', to_date('12-06-2018 11:42:19', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1219, '<h2>qqq</h2>', '&lt;h2&gt;qqqsss是是是&lt;/h2&gt;', '&lt;h2&gt;q对对对qq&lt;/h2&gt;', to_date('12-06-2018 15:45:25', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1214, '我', 'EL表达式', 'EL表达式要求bean类要有get/set方法', to_date('12-06-2018 13:30:11', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1217, '我', '现在可以', '可以了可以了', to_date('12-06-2018 15:12:19', 'dd-mm-yyyy hh24:mi:ss'), '10.25.39.151');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1288, '我', '【【问题描述】', '1. 插入删除等更新操作报错：attempted to return null from a method with a primitive return type (int).' || chr(13) || '' || chr(10) || '2. 解决1，抛出null异常。插入数据库中，数据库不显示，但是能读取出来这一条记录。' || chr(13) || '' || chr(10) || '3. 解决2，在更新操作之后加了commit操作。' || chr(13) || '' || chr(10) || '--重启服务器数据丢失' || chr(13) || '' || chr(10) || '--still insert返回值应该是0或1，为什么是null?为什么插入不了？', to_date('19-06-2018 13:05:38', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1289, '我', '【问题解决】】', '更新操作的返回值，竟然返回了null，但本应该返回int的1或者0.' || chr(13) || '' || chr(10) || '考虑，是mapper.xml中配置的问题！！' || chr(13) || '' || chr(10) || 'insert若是用select包围，其返回值就是null!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!解决即可。' || chr(13) || '' || chr(10) || '【十分愤怒和开心】', to_date('19-06-2018 13:07:25', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1285, '我', '回来了回来了', '我的脑子回来了 我现在看看这两天 浏览器搜索记录 总结一下  然后配置一下log4j输出到文件', to_date('19-06-2018 10:57:31', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1291, '我', '【突然发现】', '回车的问题突然解决了。一直没放在心上哈哈哈！' || chr(13) || '' || chr(10) || '【想想为什么得到了解决】目前对字符串的处理： 传入不处理，直接存入数据库。传出处理。' || chr(13) || '' || chr(10) || '因为传入处理了，传出的时候会显示转码后的字符，不会自动解码', to_date('19-06-2018 13:11:50', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1292, '我', '【日志记录到文件】直接使用log4j', 'log4j.rootLogger=DEBUG, stdout, D, E' || chr(13) || '' || chr(10) || '### 输出到日志文件 ###' || chr(13) || '' || chr(10) || 'log4j.appender.D = org.apache.log4j.DailyRollingFileAppender' || chr(13) || '' || chr(10) || '###设置DatePattern，当天日志保存到log.log文件，前一天的日志文件名将被修改为' || chr(13) || '' || chr(10) || '#log.log + _yyyy-MM-dd.log' || chr(13) || '' || chr(10) || 'log4j.appender.D.File =D:/Users/Sun/Java_workspace/neuedu/SSMPro2/logs/log.log' || chr(13) || '' || chr(10) || 'log4j.appender.D.DatePattern = ''_''yyyy-MM-dd''.log''' || chr(13) || '' || chr(10) || 'log4j.appender.D.Append = true', to_date('19-06-2018 13:14:26', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1247, '我', '&lt;&gt;&lt;&gt;', '&lt;&gt;&lt;&gt;', to_date('17-06-2018 20:53:00', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1058, '111', '2', '3333333', to_date('11-06-2018 12:23:15', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1230, '我', 'Spring拦截器Interceptor', 'public class MyInterceptor implements HandlerInterceptor {', to_date('13-06-2018 13:42:16', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1059, '我就是我', '6月11日 做了SpringMVC', 'SpringMVCPro1 第一个demo', to_date('11-06-2018 12:24:02', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1063, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:10', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1064, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:14', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1065, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:30', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1066, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:31', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1226, '<>', '<>', '<script>' || chr(13) || '' || chr(10) || 'while(true) {' || chr(13) || '' || chr(10) || 'alert("hhh");' || chr(13) || '' || chr(10) || '}' || chr(13) || '' || chr(10) || '</script>', to_date('12-06-2018 18:43:01', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1068, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:32', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1069, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:32', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1070, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:33', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1071, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:33', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1072, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:34', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1073, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:34', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1231, '我', '拦截器', '本质也是AOP（面向切面编程），也就是说符合横切关注点的所有功能都可以放入拦截器实现。  http://jinnianshilongnian.iteye.com/blog/1670856/', to_date('13-06-2018 13:43:36', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1248, '我', '遍历用&lt;foreach&gt;&lt;/foreach&gt;&nbsp;&nbsp;', '遍历用&lt;foreach&gt;&lt;/foreach&gt;&nbsp;&nbsp;', to_date('17-06-2018 20:54:28', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1076, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:35', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1232, '我', '拦截器适配器  拦截器应用', 'http://jinnianshilongnian.iteye.com/blog/1670856/', to_date('13-06-2018 13:49:31', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1078, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:36', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1233, '我', '/**    /*', '/**的意思是所有文件夹及里面的子文件夹' || chr(13) || '' || chr(10) || '/*是所有文件夹，不含子文件夹' || chr(13) || '' || chr(10) || '/是web项目的根目录', to_date('13-06-2018 14:06:28', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1080, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:37', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1081, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:37', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1082, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:38', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1084, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:39', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1127, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:30:10', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1128, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:30:11', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1129, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:30:11', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1130, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:30:11', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1236, '我', ' Spring MVC 框架中拦截器 Interceptor', 'https://blog.csdn.net/qq_35246620/article/details/68487904', to_date('13-06-2018 20:32:08', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1132, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:30:12', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1133, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:30:13', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1140, '这是一个阴雨天', '这是一个阴雨天', '这是一个阴雨天，很快雨停了！', to_date('11-06-2018 15:26:26', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1177, 'wo ', '有意思的东西', '一点有意思的东西', to_date('11-06-2018 20:04:46', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1246, '我', '处理恶意字符串', '原本是在从DAO取出数据时候处理的，这样做的好处是，可以直接在数据库中查看数据内容。但考虑到正常操作下不应该把数据库暴露给外部，所以应该在进数据库之前处理。', to_date('17-06-2018 20:32:37', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1249, '我', '【问题】传入数据转码，', '【问题】传入数据转码，获取数据不自动解码！在handler中对传入数据转码，从数据库中读出来的时候并不会自动解码。为什么', to_date('17-06-2018 21:00:15', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1283, '我', '【刚刚找了个bug，我的脑子可能生病受到了影响】', '这个bug真的是，让我十分fine啊！！mybatis中mapper文件中插入语句竟然用<select></select>包住了。我很厉害的', to_date('19-06-2018 10:50:44', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1284, '我', '【问题】我的字符串过滤的工具类可能也出了毛病', '脑子快回来。', to_date('19-06-2018 10:51:35', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1229, '我', 'springxml文件配置', 'rg.xml.sax.SAXParseException; lineNumber: 31; columnNumber: 8; 注释中不允许出现字符串 "--"。', to_date('13-06-2018 13:35:44', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1057, '222222222222 ', '3eeeeeeeee', 'ffffffffffffff', to_date('11-06-2018 10:45:37', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1083, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:38', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1178, '111111111111', '111111111111', '111111111111111111111111111111111111111111111111', to_date('12-06-2018 09:44:21', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1179, '111111111111', '111111111111', '111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', to_date('12-06-2018 09:44:32', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1181, '我', '自动换行', 'style="word-break:break-all; word-wrap:break-all;"', to_date('12-06-2018 09:50:23', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1188, 'autowired', 'autowired', 'autowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowired', to_date('12-06-2018 10:04:26', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1191, 'https://www.cnblo', 'https://www.cnblogs.com/che', 'https://www.cnblogs.com/chenglc/p/6856734.html', to_date('12-06-2018 10:10:44', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1198, '我', 'jsp页面如何访问WebRoot中的CSS和JS文件 ', '关于JAVA EE项目在WEB-INF目录下的jsp页面如何访问WebRoot中的CSS和JS文件 ' || chr(13) || '' || chr(10) || '  http://www.cnblogs.com/coolhwm/archive/2011/11/27/2265272.html', to_date('12-06-2018 10:41:26', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1194, '我', '获得客户端发送请求的完整url', 'String url = request.getRequestURL().toString();', to_date('12-06-2018 10:30:35', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1195, '我', '获得客户端发送请求的完整url', 'String url = request.getRequestURL().toString();', to_date('12-06-2018 10:31:37', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1203, '我', 'spring MVC的困惑--url-pattern的/和/*有区别', 'https://www.cnblogs.com/springmvc3/archive/2011/10/24/2223093.html', to_date('12-06-2018 11:06:52', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1204, '我', '我', '<url-pattern>/</url-pattern>  会匹配到/login这样的路径型url，不会匹配到模式为*.jsp这样的后缀型url' || chr(13) || '' || chr(10) || '<url-pattern>/*</url-pattern> 会匹配所有url：路径型的和后缀型的url(包括/login,*.jsp,*.js和*.html等)', to_date('12-06-2018 11:07:49', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1207, '我', 'u/p/5552034.html', '如何你的DispatcherServlet拦截 *.do这样的URL，就不存在访问不到静态资源的问题。如果你的DispatcherServlet拦截“/”，拦截了所有的请求，同时对*.js,*.jpg的访问也就被拦截了 。  https://www.cnblogs.com/shanheyongmu/p/5552034.html', to_date('12-06-2018 11:17:39', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1208, '我', '一个很好的博客网站', 'http://www.blogjava.net/Steven-bot/articles/361333.html', to_date('12-06-2018 11:18:57', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1211, '我', '【重用性增强】--1', 'Page类，结果集不使用Message，使用范型Object', to_date('12-06-2018 11:38:50', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1241, '我', '最佳作用域的概念', '理解我们目前已经讨论过的不同作用域和生命周期类是至关重要的，因为错误的使用会导致非常严重的并发问题。', to_date('15-06-2018 11:21:56', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1216, '我', '使用JDBC和存储过程进行Oracle分页查询', '' || chr(9) || 'https://my.oschina.net/realfighter/blog/349717', to_date('12-06-2018 15:07:59', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1218, 'test', 'test', '<h1>哈哈哈</h1>', to_date('12-06-2018 15:29:54', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1224, '<><>', '< ><>', '<><><>', to_date('12-06-2018 18:38:50', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1225, '<><>', '< ><>', '<><><>', to_date('12-06-2018 18:38:54', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1242, '我', 'MyBatis传入多个参数的处理办法', '1. 封装一个类,#{ }匹配类的属性 2. 使用Map, #{ } 匹配map的key 3. 使用List封装，#{ }匹配遍历的item，遍历用<foreach></foreach>    (只能用mapper.方法，调用接口)4. 直接传参 #{ } 匹配index  5. 带注解传参method(@param int a, @param int b) #{ } 匹配参数', to_date('15-06-2018 13:47:05', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1245, '我', '解决pageMapper.xml中的问题', '1. 类名写全写到包名 2. #{ }只能用来取值  不能用来计算', to_date('17-06-2018 20:31:01', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1060, '威威威威威威威威威威', '强强强强强强强强强强', '咩咩咩咩咩咩咩咩咩咩咩咩吗', to_date('11-06-2018 12:43:45', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1061, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:27:57', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1062, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:07', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1085, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:39', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1086, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:40', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1087, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:40', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1088, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:41', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1089, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:41', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1091, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:43', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1092, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:44', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1093, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:44', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1094, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:45', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1095, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:45', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1096, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:46', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1097, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:46', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1098, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:47', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1099, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:48', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1100, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:48', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1101, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:49', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1102, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:49', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1103, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:50', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1104, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:50', 'dd-mm-yyyy hh24:mi:ss'), null);
commit;
prompt 100 records committed...
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1105, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:50', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1106, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:51', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1107, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:51', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1108, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:52', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1110, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:28:53', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1112, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:29:56', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1113, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:29:57', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1115, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:29:58', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1116, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:29:59', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1117, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:29:59', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1118, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:29:59', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1120, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:30:07', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1121, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:30:07', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1123, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:30:08', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1124, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:30:09', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1125, '强强强强强强强强强强', '强强强强强强强强强强', '强强强强强强强强强强', to_date('11-06-2018 14:30:09', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1136, '我我我我我我我我我我', '我我我我我我我我我我', '我我我我我我我我我我', to_date('11-06-2018 14:33:49', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1137, '我我我我我我我我我我', '我我我我我我我我我我', '我我我我我我我我我我', to_date('11-06-2018 14:33:52', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1139, '我我我我我我我我我我', '我我我我我我我我我我', '我我我我我我我我我我', to_date('11-06-2018 14:33:54', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1141, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:28:52', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1142, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:28:58', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1143, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:28:59', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1144, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:28:59', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1145, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:00', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1146, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:01', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1147, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:01', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1148, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:02', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1149, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:02', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1150, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:02', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1151, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:03', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1152, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:03', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1153, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:03', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1154, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:04', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1155, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:04', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1156, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:04', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1157, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:05', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1158, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:05', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1159, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:06', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1160, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:06', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1161, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:06', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1162, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:06', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1163, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:07', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1164, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:07', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1165, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:07', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1182, '我', '自动换行', 'style="word-break:break-all; word-wrap:break-all;"', to_date('12-06-2018 09:50:54', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1167, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:08', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1168, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:08', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1169, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:08', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1170, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:09', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1176, '我', 'SpringMVC获取session', '通过@SessionAttributes注解进行设置', to_date('11-06-2018 15:36:54', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1172, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:10', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1173, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:10', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1174, '这是一个大晴天', '这是一个大晴天', '这是一个大晴天', to_date('11-06-2018 15:29:10', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1180, 'w', 'bootstrap table自动换行', 'https://blog.csdn.net/pyphrb/article/details/48652437', to_date('12-06-2018 09:48:16', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1183, '我', 'bootstrap表格如何固定宽度或者自适应内容的宽度', 'http://dbaspider.iteye.com/blog/2244532', to_date('12-06-2018 09:52:03', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1196, 'zz', 'zzz', 'zzzzz', to_date('12-06-2018 10:34:12', 'dd-mm-yyyy hh24:mi:ss'), '10.25.39.151');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1189, '我', 'Java中使用HttpRequest获取用户真实IP地址端口', 'https://www.cnblogs.com/chenglc/p/6856734.html', to_date('12-06-2018 10:09:17', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1197, '我', '访问jsp页面 css没被加载', 'https://ask.csdn.net/questions/194782', to_date('12-06-2018 10:40:58', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
commit;
prompt 158 records loaded
prompt Enabling triggers for MESSAGE...
alter table MESSAGE enable all triggers;
set feedback on
set define on
prompt Done.
