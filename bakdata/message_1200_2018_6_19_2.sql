prompt Importing table MESSAGE...
set feedback off
set define off
insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1294, '��', '�������ܽ᡿ֱ�ӵ�����ʦ����Ŀ�ļ�����Ҫ���������', '1. jar���Ĳ�����һ����������Ŀ��ʱ��jar�����Զ�build����ֱ�Ӹ��ƹ�������Ҫ����Ŀ�ֶ�����build path�����Ӷ������
2. ��Ŀ���ԣ�project facetsѡ�������Ŀ�����ͣ��綯̬web��Ŀ�������һ�run��ʱ��Ϳ������ڷ�����������run on serve��ѡ���ˡ�
3. jar��������jdk��build path��JREϵͳ�⡣����ɾ��ԭ����jre���ã�Ȼ������library��ѡjreϵͳ�⡣
4. jar��������servlet-api.jar ����������tomcatĿ¼�������EAR������Ҫ�������롣
5. �������漰�������ݿ�ģ��޸Ĵ���', to_date('19-06-2018 14:38:27', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1293, '��', '�������ܽ᡿eclipse��Ŀ������ -- 4������', '1. ��Ŀ����������Ŀ�һ�����������
2. web.xml����Ŀ������
3. ��ĿĿ¼��.project�ļ�����Ŀ����
4. ��ĿĿ¼��.settings/org.eclipse.wst.common.component�ļ�����Ŀ�����Լ�·������', to_date('19-06-2018 14:32:04', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1292, '��', '����־��¼���ļ���ֱ��ʹ��log4j', 'log4j.rootLogger=DEBUG, stdout, D, E
### �������־�ļ� ###
log4j.appender.D = org.apache.log4j.DailyRollingFileAppender
###����DatePattern��������־���浽log.log�ļ���ǰһ�����־�ļ��������޸�Ϊ
#log.log + _yyyy-MM-dd.log
log4j.appender.D.File =D:/Users/Sun/Java_workspace/neuedu/SSMPro2/logs/log.log
log4j.appender.D.DatePattern = ''_''yyyy-MM-dd''.log''
log4j.appender.D.Append = true', to_date('19-06-2018 13:14:26', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1291, '��', '��ͻȻ���֡�', '�س�������ͻȻ����ˡ�һֱû�������Ϲ�������
������Ϊʲô�õ��˽����Ŀǰ���ַ����Ĵ��� ���벻����ֱ�Ӵ������ݿ⡣��������
��Ϊ���봦���ˣ�������ʱ�����ʾת�����ַ��������Զ�����', to_date('19-06-2018 13:11:50', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1289, '��', '������������', '���²����ķ���ֵ����Ȼ������null������Ӧ�÷���int��1����0.
���ǣ���mapper.xml�����õ����⣡��
insert������select��Χ���䷵��ֵ����null!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!������ɡ�
��ʮ�ַ�ŭ�Ϳ��ġ�', to_date('19-06-2018 13:07:25', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1288, '��', '��������������', '1. ����ɾ���ȸ��²�������attempted to return null from a method with a primitive return type (int).
2. ���1���׳�null�쳣���������ݿ��У����ݿⲻ��ʾ�������ܶ�ȡ������һ����¼��
3. ���2���ڸ��²���֮�����commit������
--�������������ݶ�ʧ
--still insert����ֵӦ����0��1��Ϊʲô��null?Ϊʲô���벻�ˣ�', to_date('19-06-2018 13:05:38', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1285, '��', '�����˻�����', '�ҵ����ӻ����� �����ڿ��������� �����������¼ �ܽ�һ��  Ȼ������һ��log4j������ļ�', to_date('19-06-2018 10:57:31', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1284, '��', '�����⡿�ҵ��ַ������˵Ĺ��������Ҳ����ë��', '���ӿ������', to_date('19-06-2018 10:51:35', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1283, '��', '���ո����˸�bug���ҵ����ӿ��������ܵ���Ӱ�졿', '���bug����ǣ�����ʮ��fine������mybatis��mapper�ļ��в�����侹Ȼ��<select></select>��ס�ˡ��Һ�������', to_date('19-06-2018 10:50:44', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1249, '��', '�����⡿��������ת�룬', '�����⡿��������ת�룬��ȡ���ݲ��Զ����룡��handler�жԴ�������ת�룬�����ݿ��ж�������ʱ�򲢲����Զ����롣Ϊʲô', to_date('17-06-2018 21:00:15', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1248, '��', '������&lt;foreach&gt;&lt;/foreach&gt;&nbsp;&nbsp;', '������&lt;foreach&gt;&lt;/foreach&gt;&nbsp;&nbsp;', to_date('17-06-2018 20:54:28', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1247, '��', '&lt;&gt;&lt;&gt;', '&lt;&gt;&lt;&gt;', to_date('17-06-2018 20:53:00', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1246, '��', '��������ַ���', 'ԭ�����ڴ�DAOȡ������ʱ����ģ��������ĺô��ǣ�����ֱ�������ݿ��в鿴�������ݡ������ǵ����������²�Ӧ�ð����ݿⱩ¶���ⲿ������Ӧ���ڽ����ݿ�֮ǰ����', to_date('17-06-2018 20:32:37', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1245, '��', '���pageMapper.xml�е�����', '1. ����дȫд������ 2. #{ }ֻ������ȡֵ  ������������', to_date('17-06-2018 20:31:01', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1242, '��', 'MyBatis�����������Ĵ���취', '1. ��װһ����,#{ }ƥ��������� 2. ʹ��Map, #{ } ƥ��map��key 3. ʹ��List��װ��#{ }ƥ�������item��������<foreach></foreach>    (ֻ����mapper.���������ýӿ�)4. ֱ�Ӵ��� #{ } ƥ��index  5. ��ע�⴫��method(@param int a, @param int b) #{ } ƥ�����', to_date('15-06-2018 13:47:05', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1241, '��', '���������ĸ���', '�������Ŀǰ�Ѿ����۹��Ĳ�ͬ�������������������������Ҫ�ģ���Ϊ�����ʹ�ûᵼ�·ǳ����صĲ������⡣', to_date('15-06-2018 11:21:56', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1236, '��', ' Spring MVC ����������� Interceptor', 'https://blog.csdn.net/qq_35246620/article/details/68487904', to_date('13-06-2018 20:32:08', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1233, '��', '/**    /*', '/**����˼�������ļ��м���������ļ���
/*�������ļ��У��������ļ���
/��web��Ŀ�ĸ�Ŀ¼', to_date('13-06-2018 14:06:28', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1232, '��', '������������  ������Ӧ��', 'http://jinnianshilongnian.iteye.com/blog/1670856/', to_date('13-06-2018 13:49:31', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1231, '��', '������', '����Ҳ��AOP�����������̣���Ҳ����˵���Ϻ��й�ע������й��ܶ����Է���������ʵ�֡�  http://jinnianshilongnian.iteye.com/blog/1670856/', to_date('13-06-2018 13:43:36', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1230, '��', 'Spring������Interceptor', 'public class MyInterceptor implements HandlerInterceptor {', to_date('13-06-2018 13:42:16', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1229, '��', 'springxml�ļ�����', 'rg.xml.sax.SAXParseException; lineNumber: 31; columnNumber: 8; ע���в���������ַ��� "--"��', to_date('13-06-2018 13:35:44', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

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
values (1219, '<h2>qqq</h2>', '&lt;h2&gt;qqqsss������&lt;/h2&gt;', '&lt;h2&gt;q�ԶԶ�qq&lt;/h2&gt;', to_date('12-06-2018 15:45:25', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1218, 'test', 'test', '<h1>������</h1>', to_date('12-06-2018 15:29:54', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1217, '��', '���ڿ���', '�����˿�����', to_date('12-06-2018 15:12:19', 'dd-mm-yyyy hh24:mi:ss'), '10.25.39.151');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1216, '��', 'ʹ��JDBC�ʹ洢���̽���Oracle��ҳ��ѯ', '	https://my.oschina.net/realfighter/blog/349717', to_date('12-06-2018 15:07:59', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1214, '��', 'EL���ʽ', 'EL���ʽҪ��bean��Ҫ��get/set����', to_date('12-06-2018 13:30:11', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1212, '��', '����������ǿ��--2', 'Service�У�ҳ��ļ��㣬����д����Ҫ������ʾҳ�������pagesNumber����Page�����õ�Ĭ��ֵ�������ж�', to_date('12-06-2018 11:42:19', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1211, '��', '����������ǿ��--1', 'Page�࣬�������ʹ��Message��ʹ�÷���Object', to_date('12-06-2018 11:38:50', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1210, '��', '����', ' < mvc:default-servlet-handler/ >', to_date('12-06-2018 11:22:49', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1209, '��', '������������̬��Դ����������', 'servlet.DispatcherServlet noHandlerFound ����: No mapping found for HTTP request with URI [/SpringMVCPro1/css/bootstrap.css] in DispatcherServlet with name ''springmvc''    ��̬��Դ����   Ҫ��spring������Ĭ�Ͼ�̬��Դ�Ĵ���<mvc:default-servlet-handler/>', to_date('12-06-2018 11:22:32', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1208, '��', 'һ���ܺõĲ�����վ', 'http://www.blogjava.net/Steven-bot/articles/361333.html', to_date('12-06-2018 11:18:57', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1207, '��', 'u/p/5552034.html', '������DispatcherServlet���� *.do������URL���Ͳ����ڷ��ʲ�����̬��Դ�����⡣������DispatcherServlet���ء�/�������������е�����ͬʱ��*.js,*.jpg�ķ���Ҳ�ͱ������� ��  https://www.cnblogs.com/shanheyongmu/p/5552034.html', to_date('12-06-2018 11:17:39', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1206, '��', '<url-pattern>/</url-pattern> ', '<url-pattern>/</url-pattern> ', to_date('12-06-2018 11:12:24', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1205, '��', '<url-pattern>/</url-pattern> ', '<url-pattern>/</url-pattern> ', to_date('12-06-2018 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1204, '��', '��', '<url-pattern>/</url-pattern>  ��ƥ�䵽/login������·����url������ƥ�䵽ģʽΪ*.jsp�����ĺ�׺��url
<url-pattern>/*</url-pattern> ��ƥ������url��·���͵ĺͺ�׺�͵�url(����/login,*.jsp,*.js��*.html��)', to_date('12-06-2018 11:07:49', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1203, '��', 'spring MVC������--url-pattern��/��/*������', 'https://www.cnblogs.com/springmvc3/archive/2011/10/24/2223093.html', to_date('12-06-2018 11:06:52', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1202, '��', '��EL', ' < c:set value="${pageContext.request.contextPath}" var="path" scope="page"/ >', to_date('12-06-2018 10:45:56', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

insert into MESSAGE (ID, USERNAME, TITLE, CONTEXT, DELIVERTIME, IP)
values (1201, 'w', '��', ' <c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>', to_date('12-06-2018 10:45:23', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');

prompt Done.
