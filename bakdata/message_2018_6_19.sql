prompt PL/SQL Developer import file
prompt Created on 2018��6��19�� by Sun
set feedback off
set define off
prompt Disabling triggers for MESSAGE...
alter table MESSAGE disable all triggers;
prompt Deleting MESSAGE...
delete from MESSAGE;
commit;
prompt Loading MESSAGE...
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1199, '��', 'WEB-INF�ļ���', 'TomCat �������µ�WEB-INF�ļ�����һ���ǳ���ȫ���ļ�����ҳ���в���ֱ�ӷ������е��ļ�������ͨ��web.xml�ļ���Ҫ���ʵ��ļ�������Ӧӳ����ܷ��ʡ�', to_date('12-06-2018 10:43:17', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1200, '��', '��EL���ʽ���', '<%=request.getContextPath()%>/ ---  <c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>', to_date('12-06-2018 10:45:07', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1201, 'w', '��', ' <c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>', to_date('12-06-2018 10:45:23', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1202, '��', '��EL', ' < c:set value="${pageContext.request.contextPath}" var="path" scope="page"/ >', to_date('12-06-2018 10:45:56', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1205, '��', '<url-pattern>/</url-pattern> ', '<url-pattern>/</url-pattern> ', to_date('12-06-2018 11:08:18', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1206, '��', '<url-pattern>/</url-pattern> ', '<url-pattern>/</url-pattern> ', to_date('12-06-2018 11:12:24', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1209, '��', '������������̬��Դ����������', 'servlet.DispatcherServlet noHandlerFound ����: No mapping found for HTTP request with URI [/SpringMVCPro1/css/bootstrap.css] in DispatcherServlet with name ''springmvc''    ��̬��Դ����   Ҫ��spring������Ĭ�Ͼ�̬��Դ�Ĵ���<mvc:default-servlet-handler/>', to_date('12-06-2018 11:22:32', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1210, '��', '����', ' < mvc:default-servlet-handler/ >', to_date('12-06-2018 11:22:49', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1212, '��', '����������ǿ��--2', 'Service�У�ҳ��ļ��㣬����д����Ҫ������ʾҳ�������pagesNumber����Page�����õ�Ĭ��ֵ�������ж�', to_date('12-06-2018 11:42:19', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1219, '<h2>qqq</h2>', '&lt;h2&gt;qqqsss������&lt;/h2&gt;', '&lt;h2&gt;q�ԶԶ�qq&lt;/h2&gt;', to_date('12-06-2018 15:45:25', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1214, '��', 'EL���ʽ', 'EL���ʽҪ��bean��Ҫ��get/set����', to_date('12-06-2018 13:30:11', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1217, '��', '���ڿ���', '�����˿�����', to_date('12-06-2018 15:12:19', 'dd-mm-yyyy hh24:mi:ss'), '10.25.39.151');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1288, '��', '��������������', '1. ����ɾ���ȸ��²�������attempted to return null from a method with a primitive return type (int).' || chr(13) || '' || chr(10) || '2. ���1���׳�null�쳣���������ݿ��У����ݿⲻ��ʾ�������ܶ�ȡ������һ����¼��' || chr(13) || '' || chr(10) || '3. ���2���ڸ��²���֮�����commit������' || chr(13) || '' || chr(10) || '--�������������ݶ�ʧ' || chr(13) || '' || chr(10) || '--still insert����ֵӦ����0��1��Ϊʲô��null?Ϊʲô���벻�ˣ�', to_date('19-06-2018 13:05:38', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1289, '��', '������������', '���²����ķ���ֵ����Ȼ������null������Ӧ�÷���int��1����0.' || chr(13) || '' || chr(10) || '���ǣ���mapper.xml�����õ����⣡��' || chr(13) || '' || chr(10) || 'insert������select��Χ���䷵��ֵ����null!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!������ɡ�' || chr(13) || '' || chr(10) || '��ʮ�ַ�ŭ�Ϳ��ġ�', to_date('19-06-2018 13:07:25', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1285, '��', '�����˻�����', '�ҵ����ӻ����� �����ڿ��������� �����������¼ �ܽ�һ��  Ȼ������һ��log4j������ļ�', to_date('19-06-2018 10:57:31', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1291, '��', '��ͻȻ���֡�', '�س�������ͻȻ����ˡ�һֱû�������Ϲ�������' || chr(13) || '' || chr(10) || '������Ϊʲô�õ��˽����Ŀǰ���ַ����Ĵ��� ���벻����ֱ�Ӵ������ݿ⡣��������' || chr(13) || '' || chr(10) || '��Ϊ���봦���ˣ�������ʱ�����ʾת�����ַ��������Զ�����', to_date('19-06-2018 13:11:50', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1292, '��', '����־��¼���ļ���ֱ��ʹ��log4j', 'log4j.rootLogger=DEBUG, stdout, D, E' || chr(13) || '' || chr(10) || '### �������־�ļ� ###' || chr(13) || '' || chr(10) || 'log4j.appender.D = org.apache.log4j.DailyRollingFileAppender' || chr(13) || '' || chr(10) || '###����DatePattern��������־���浽log.log�ļ���ǰһ�����־�ļ��������޸�Ϊ' || chr(13) || '' || chr(10) || '#log.log + _yyyy-MM-dd.log' || chr(13) || '' || chr(10) || 'log4j.appender.D.File =D:/Users/Sun/Java_workspace/neuedu/SSMPro2/logs/log.log' || chr(13) || '' || chr(10) || 'log4j.appender.D.DatePattern = ''_''yyyy-MM-dd''.log''' || chr(13) || '' || chr(10) || 'log4j.appender.D.Append = true', to_date('19-06-2018 13:14:26', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1247, '��', '&lt;&gt;&lt;&gt;', '&lt;&gt;&lt;&gt;', to_date('17-06-2018 20:53:00', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1058, '111', '2', '3333333', to_date('11-06-2018 12:23:15', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1230, '��', 'Spring������Interceptor', 'public class MyInterceptor implements HandlerInterceptor {', to_date('13-06-2018 13:42:16', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1059, '�Ҿ�����', '6��11�� ����SpringMVC', 'SpringMVCPro1 ��һ��demo', to_date('11-06-2018 12:24:02', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1063, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:10', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1064, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:14', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1065, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:30', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1066, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:31', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1226, '<>', '<>', '<script>' || chr(13) || '' || chr(10) || 'while(true) {' || chr(13) || '' || chr(10) || 'alert("hhh");' || chr(13) || '' || chr(10) || '}' || chr(13) || '' || chr(10) || '</script>', to_date('12-06-2018 18:43:01', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1068, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:32', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1069, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:32', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1070, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:33', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1071, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:33', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1072, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:34', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1073, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:34', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1231, '��', '������', '����Ҳ��AOP�����������̣���Ҳ����˵���Ϻ��й�ע������й��ܶ����Է���������ʵ�֡�  http://jinnianshilongnian.iteye.com/blog/1670856/', to_date('13-06-2018 13:43:36', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1248, '��', '������&lt;foreach&gt;&lt;/foreach&gt;&nbsp;&nbsp;', '������&lt;foreach&gt;&lt;/foreach&gt;&nbsp;&nbsp;', to_date('17-06-2018 20:54:28', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1076, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:35', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1232, '��', '������������  ������Ӧ��', 'http://jinnianshilongnian.iteye.com/blog/1670856/', to_date('13-06-2018 13:49:31', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1078, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:36', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1233, '��', '/**    /*', '/**����˼�������ļ��м���������ļ���' || chr(13) || '' || chr(10) || '/*�������ļ��У��������ļ���' || chr(13) || '' || chr(10) || '/��web��Ŀ�ĸ�Ŀ¼', to_date('13-06-2018 14:06:28', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1080, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:37', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1081, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:37', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1082, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:38', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1084, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:39', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1127, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:30:10', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1128, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:30:11', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1129, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:30:11', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1130, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:30:11', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1236, '��', ' Spring MVC ����������� Interceptor', 'https://blog.csdn.net/qq_35246620/article/details/68487904', to_date('13-06-2018 20:32:08', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1132, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:30:12', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1133, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:30:13', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1140, '����һ��������', '����һ��������', '����һ�������죬�ܿ���ͣ�ˣ�', to_date('11-06-2018 15:26:26', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1177, 'wo ', '����˼�Ķ���', 'һ������˼�Ķ���', to_date('11-06-2018 20:04:46', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1246, '��', '��������ַ���', 'ԭ�����ڴ�DAOȡ������ʱ����ģ��������ĺô��ǣ�����ֱ�������ݿ��в鿴�������ݡ������ǵ����������²�Ӧ�ð����ݿⱩ¶���ⲿ������Ӧ���ڽ����ݿ�֮ǰ����', to_date('17-06-2018 20:32:37', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1249, '��', '�����⡿��������ת�룬', '�����⡿��������ת�룬��ȡ���ݲ��Զ����룡��handler�жԴ�������ת�룬�����ݿ��ж�������ʱ�򲢲����Զ����롣Ϊʲô', to_date('17-06-2018 21:00:15', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1283, '��', '���ո����˸�bug���ҵ����ӿ��������ܵ���Ӱ�졿', '���bug����ǣ�����ʮ��fine������mybatis��mapper�ļ��в�����侹Ȼ��<select></select>��ס�ˡ��Һ�������', to_date('19-06-2018 10:50:44', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1284, '��', '�����⡿�ҵ��ַ������˵Ĺ��������Ҳ����ë��', '���ӿ������', to_date('19-06-2018 10:51:35', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1229, '��', 'springxml�ļ�����', 'rg.xml.sax.SAXParseException; lineNumber: 31; columnNumber: 8; ע���в���������ַ��� "--"��', to_date('13-06-2018 13:35:44', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1057, '222222222222 ', '3eeeeeeeee', 'ffffffffffffff', to_date('11-06-2018 10:45:37', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1083, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:38', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1178, '111111111111', '111111111111', '111111111111111111111111111111111111111111111111', to_date('12-06-2018 09:44:21', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1179, '111111111111', '111111111111', '111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', to_date('12-06-2018 09:44:32', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1181, '��', '�Զ�����', 'style="word-break:break-all; word-wrap:break-all;"', to_date('12-06-2018 09:50:23', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1188, 'autowired', 'autowired', 'autowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowiredautowired', to_date('12-06-2018 10:04:26', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1191, 'https://www.cnblo', 'https://www.cnblogs.com/che', 'https://www.cnblogs.com/chenglc/p/6856734.html', to_date('12-06-2018 10:10:44', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1198, '��', 'jspҳ����η���WebRoot�е�CSS��JS�ļ� ', '����JAVA EE��Ŀ��WEB-INFĿ¼�µ�jspҳ����η���WebRoot�е�CSS��JS�ļ� ' || chr(13) || '' || chr(10) || '  http://www.cnblogs.com/coolhwm/archive/2011/11/27/2265272.html', to_date('12-06-2018 10:41:26', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1194, '��', '��ÿͻ��˷������������url', 'String url = request.getRequestURL().toString();', to_date('12-06-2018 10:30:35', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1195, '��', '��ÿͻ��˷������������url', 'String url = request.getRequestURL().toString();', to_date('12-06-2018 10:31:37', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1203, '��', 'spring MVC������--url-pattern��/��/*������', 'https://www.cnblogs.com/springmvc3/archive/2011/10/24/2223093.html', to_date('12-06-2018 11:06:52', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1204, '��', '��', '<url-pattern>/</url-pattern>  ��ƥ�䵽/login������·����url������ƥ�䵽ģʽΪ*.jsp�����ĺ�׺��url' || chr(13) || '' || chr(10) || '<url-pattern>/*</url-pattern> ��ƥ������url��·���͵ĺͺ�׺�͵�url(����/login,*.jsp,*.js��*.html��)', to_date('12-06-2018 11:07:49', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1207, '��', 'u/p/5552034.html', '������DispatcherServlet���� *.do������URL���Ͳ����ڷ��ʲ�����̬��Դ�����⡣������DispatcherServlet���ء�/�������������е�����ͬʱ��*.js,*.jpg�ķ���Ҳ�ͱ������� ��  https://www.cnblogs.com/shanheyongmu/p/5552034.html', to_date('12-06-2018 11:17:39', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1208, '��', 'һ���ܺõĲ�����վ', 'http://www.blogjava.net/Steven-bot/articles/361333.html', to_date('12-06-2018 11:18:57', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1211, '��', '����������ǿ��--1', 'Page�࣬�������ʹ��Message��ʹ�÷���Object', to_date('12-06-2018 11:38:50', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1241, '��', '���������ĸ���', '�������Ŀǰ�Ѿ����۹��Ĳ�ͬ�������������������������Ҫ�ģ���Ϊ�����ʹ�ûᵼ�·ǳ����صĲ������⡣', to_date('15-06-2018 11:21:56', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1216, '��', 'ʹ��JDBC�ʹ洢���̽���Oracle��ҳ��ѯ', '' || chr(9) || 'https://my.oschina.net/realfighter/blog/349717', to_date('12-06-2018 15:07:59', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1218, 'test', 'test', '<h1>������</h1>', to_date('12-06-2018 15:29:54', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1224, '<><>', '< ><>', '<><><>', to_date('12-06-2018 18:38:50', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1225, '<><>', '< ><>', '<><><>', to_date('12-06-2018 18:38:54', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1242, '��', 'MyBatis�����������Ĵ���취', '1. ��װһ����,#{ }ƥ��������� 2. ʹ��Map, #{ } ƥ��map��key 3. ʹ��List��װ��#{ }ƥ�������item��������<foreach></foreach>    (ֻ����mapper.���������ýӿ�)4. ֱ�Ӵ��� #{ } ƥ��index  5. ��ע�⴫��method(@param int a, @param int b) #{ } ƥ�����', to_date('15-06-2018 13:47:05', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1245, '��', '���pageMapper.xml�е�����', '1. ����дȫд������ 2. #{ }ֻ������ȡֵ  ������������', to_date('17-06-2018 20:31:01', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1060, '��������������������', 'ǿǿǿǿǿǿǿǿǿǿ', '��������������������������', to_date('11-06-2018 12:43:45', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1061, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:27:57', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1062, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:07', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1085, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:39', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1086, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:40', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1087, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:40', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1088, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:41', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1089, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:41', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1091, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:43', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1092, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:44', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1093, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:44', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1094, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:45', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1095, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:45', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1096, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:46', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1097, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:46', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1098, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:47', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1099, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:48', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1100, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:48', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1101, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:49', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1102, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:49', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1103, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:50', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1104, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:50', 'dd-mm-yyyy hh24:mi:ss'), null);
commit;
prompt 100 records committed...
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1105, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:50', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1106, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:51', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1107, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:51', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1108, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:52', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1110, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:28:53', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1112, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:29:56', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1113, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:29:57', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1115, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:29:58', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1116, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:29:59', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1117, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:29:59', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1118, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:29:59', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1120, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:30:07', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1121, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:30:07', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1123, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:30:08', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1124, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:30:09', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1125, 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', 'ǿǿǿǿǿǿǿǿǿǿ', to_date('11-06-2018 14:30:09', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1136, '��������������������', '��������������������', '��������������������', to_date('11-06-2018 14:33:49', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1137, '��������������������', '��������������������', '��������������������', to_date('11-06-2018 14:33:52', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1139, '��������������������', '��������������������', '��������������������', to_date('11-06-2018 14:33:54', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1141, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:28:52', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1142, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:28:58', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1143, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:28:59', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1144, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:28:59', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1145, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:00', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1146, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:01', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1147, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:01', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1148, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:02', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1149, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:02', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1150, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:02', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1151, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:03', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1152, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:03', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1153, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:03', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1154, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:04', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1155, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:04', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1156, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:04', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1157, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:05', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1158, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:05', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1159, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:06', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1160, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:06', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1161, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:06', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1162, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:06', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1163, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:07', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1164, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:07', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1165, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:07', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1182, '��', '�Զ�����', 'style="word-break:break-all; word-wrap:break-all;"', to_date('12-06-2018 09:50:54', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1167, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:08', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1168, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:08', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1169, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:08', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1170, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:09', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1176, '��', 'SpringMVC��ȡsession', 'ͨ��@SessionAttributesע���������', to_date('11-06-2018 15:36:54', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1172, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:10', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1173, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:10', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1174, '����һ��������', '����һ��������', '����һ��������', to_date('11-06-2018 15:29:10', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1180, 'w', 'bootstrap table�Զ�����', 'https://blog.csdn.net/pyphrb/article/details/48652437', to_date('12-06-2018 09:48:16', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1183, '��', 'bootstrap�����ι̶���Ȼ�������Ӧ���ݵĿ��', 'http://dbaspider.iteye.com/blog/2244532', to_date('12-06-2018 09:52:03', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1196, 'zz', 'zzz', 'zzzzz', to_date('12-06-2018 10:34:12', 'dd-mm-yyyy hh24:mi:ss'), '10.25.39.151');
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1189, '��', 'Java��ʹ��HttpRequest��ȡ�û���ʵIP��ַ�˿�', 'https://www.cnblogs.com/chenglc/p/6856734.html', to_date('12-06-2018 10:09:17', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into MESSAGE (id, username, title, context, delivertime, ip)
values (1197, '��', '����jspҳ�� cssû������', 'https://ask.csdn.net/questions/194782', to_date('12-06-2018 10:40:58', 'dd-mm-yyyy hh24:mi:ss'), '0:0:0:0:0:0:0:1');
commit;
prompt 158 records loaded
prompt Enabling triggers for MESSAGE...
alter table MESSAGE enable all triggers;
set feedback on
set define on
prompt Done.
