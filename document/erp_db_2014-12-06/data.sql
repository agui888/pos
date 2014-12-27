prompt PL/SQL Developer import file
prompt Created on 2014年12月6日 by Tobin
set feedback off
set define off
prompt Disabling triggers for BASE_CITY...
alter table BASE_CITY disable all triggers;
prompt Disabling triggers for BASE_SERVER...
alter table BASE_SERVER disable all triggers;
prompt Disabling triggers for BASE_STORE...
alter table BASE_STORE disable all triggers;
prompt Disabling triggers for SYSTEM_DEPT...
alter table SYSTEM_DEPT disable all triggers;
prompt Disabling triggers for SYSTEM_DICT...
alter table SYSTEM_DICT disable all triggers;
prompt Disabling triggers for SYSTEM_MENU...
alter table SYSTEM_MENU disable all triggers;
prompt Disabling triggers for SYSTEM_USER...
alter table SYSTEM_USER disable all triggers;
prompt Disabling triggers for SYSTEM_FIND...
alter table SYSTEM_FIND disable all triggers;
prompt Disabling triggers for SYSTEM_FIND_DETAIL...
alter table SYSTEM_FIND_DETAIL disable all triggers;
prompt Disabling triggers for SYSTEM_FLOW...
alter table SYSTEM_FLOW disable all triggers;
prompt Disabling triggers for SYSTEM_FLOW_DETAIL...
alter table SYSTEM_FLOW_DETAIL disable all triggers;
prompt Disabling triggers for SYSTEM_GRID...
alter table SYSTEM_GRID disable all triggers;
prompt Disabling triggers for SYSTEM_MANAGE_POWER...
alter table SYSTEM_MANAGE_POWER disable all triggers;
prompt Disabling triggers for SYSTEM_RULE...
alter table SYSTEM_RULE disable all triggers;
prompt Disabling triggers for SYSTEM_MANAGE_POWER_RULE...
alter table SYSTEM_MANAGE_POWER_RULE disable all triggers;
prompt Disabling triggers for SYSTEM_PARAM...
alter table SYSTEM_PARAM disable all triggers;
prompt Disabling triggers for SYSTEM_POSITION...
alter table SYSTEM_POSITION disable all triggers;
prompt Disabling triggers for SYSTEM_POSITION_DETAIL...
alter table SYSTEM_POSITION_DETAIL disable all triggers;
prompt Disabling triggers for SYSTEM_ROLE...
alter table SYSTEM_ROLE disable all triggers;
prompt Disabling triggers for SYSTEM_USER_POWER...
alter table SYSTEM_USER_POWER disable all triggers;
prompt Disabling triggers for SYSTEM_USER_POWER_RULE...
alter table SYSTEM_USER_POWER_RULE disable all triggers;
prompt Disabling triggers for WORKFLOW_INSTANCE...
alter table WORKFLOW_INSTANCE disable all triggers;
prompt Disabling foreign key constraints for SYSTEM_FIND...
alter table SYSTEM_FIND disable constraint SYSTEM_FIND_FK1;
alter table SYSTEM_FIND disable constraint SYSTEM_FIND_FK2;
prompt Disabling foreign key constraints for SYSTEM_FIND_DETAIL...
alter table SYSTEM_FIND_DETAIL disable constraint SYSTEM_FIND_DETAIL_KEY_FK;
prompt Disabling foreign key constraints for SYSTEM_FLOW_DETAIL...
alter table SYSTEM_FLOW_DETAIL disable constraint SYSTEM_FLOW_DETAIL_FK;
prompt Disabling foreign key constraints for SYSTEM_MANAGE_POWER...
alter table SYSTEM_MANAGE_POWER disable constraint SYSTEM_MANAGE_POWER_KEY_FK;
prompt Disabling foreign key constraints for SYSTEM_RULE...
alter table SYSTEM_RULE disable constraint SYSTEM_RULE_KEY_FK;
prompt Disabling foreign key constraints for SYSTEM_MANAGE_POWER_RULE...
alter table SYSTEM_MANAGE_POWER_RULE disable constraint SYSTEM_MANAGE_POWER_RULE_KEY2;
alter table SYSTEM_MANAGE_POWER_RULE disable constraint SYSTEM_MANAGE_POWER_RULE_KEY3;
prompt Disabling foreign key constraints for SYSTEM_POSITION_DETAIL...
alter table SYSTEM_POSITION_DETAIL disable constraint SYSTEM_POSITION_DETAIL_FK;
prompt Disabling foreign key constraints for SYSTEM_USER_POWER...
alter table SYSTEM_USER_POWER disable constraint SYSTEM_USER_POWER_KEY_FK;
prompt Disabling foreign key constraints for SYSTEM_USER_POWER_RULE...
alter table SYSTEM_USER_POWER_RULE disable constraint SYSTEM_USER_POWER_RULE_KEY2;
alter table SYSTEM_USER_POWER_RULE disable constraint SYSTEM_USER_POWER_RULE_KEY3;
prompt Deleting WORKFLOW_INSTANCE...
delete from WORKFLOW_INSTANCE;
commit;
prompt Deleting SYSTEM_USER_POWER_RULE...
delete from SYSTEM_USER_POWER_RULE;
commit;
prompt Deleting SYSTEM_USER_POWER...
delete from SYSTEM_USER_POWER;
commit;
prompt Deleting SYSTEM_ROLE...
delete from SYSTEM_ROLE;
commit;
prompt Deleting SYSTEM_POSITION_DETAIL...
delete from SYSTEM_POSITION_DETAIL;
commit;
prompt Deleting SYSTEM_POSITION...
delete from SYSTEM_POSITION;
commit;
prompt Deleting SYSTEM_PARAM...
delete from SYSTEM_PARAM;
commit;
prompt Deleting SYSTEM_MANAGE_POWER_RULE...
delete from SYSTEM_MANAGE_POWER_RULE;
commit;
prompt Deleting SYSTEM_RULE...
delete from SYSTEM_RULE;
commit;
prompt Deleting SYSTEM_MANAGE_POWER...
delete from SYSTEM_MANAGE_POWER;
commit;
prompt Deleting SYSTEM_GRID...
delete from SYSTEM_GRID;
commit;
prompt Deleting SYSTEM_FLOW_DETAIL...
delete from SYSTEM_FLOW_DETAIL;
commit;
prompt Deleting SYSTEM_FLOW...
delete from SYSTEM_FLOW;
commit;
prompt Deleting SYSTEM_FIND_DETAIL...
delete from SYSTEM_FIND_DETAIL;
commit;
prompt Deleting SYSTEM_FIND...
delete from SYSTEM_FIND;
commit;
prompt Deleting SYSTEM_USER...
delete from SYSTEM_USER;
commit;
prompt Deleting SYSTEM_MENU...
delete from SYSTEM_MENU;
commit;
prompt Deleting SYSTEM_DICT...
delete from SYSTEM_DICT;
commit;
prompt Deleting SYSTEM_DEPT...
delete from SYSTEM_DEPT;
commit;
prompt Deleting BASE_STORE...
delete from BASE_STORE;
commit;
prompt Deleting BASE_SERVER...
delete from BASE_SERVER;
commit;
prompt Deleting BASE_CITY...
delete from BASE_CITY;
commit;
prompt Loading BASE_CITY...
insert into BASE_CITY (id, pid, cityname, colid, delflag, rowtime, rowver)
values (10000284, 10000282, '株洲', 2, 0, to_date('04-12-2014 10:21:56', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into BASE_CITY (id, pid, cityname, colid, delflag, rowtime, rowver)
values (10000285, 10000282, '湘潭', 3, 0, to_date('04-12-2014 10:22:07', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into BASE_CITY (id, pid, cityname, colid, delflag, rowtime, rowver)
values (10000282, 10000281, '湖南', 2, 0, to_date('04-12-2014 10:08:42', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into BASE_CITY (id, pid, cityname, colid, delflag, rowtime, rowver)
values (10000283, 10000282, '长沙', 1, 0, to_date('04-12-2014 10:16:08', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into BASE_CITY (id, pid, cityname, colid, delflag, rowtime, rowver)
values (10000281, 0, '中国', 1, 0, to_date('04-12-2014 10:07:56', 'dd-mm-yyyy hh24:mi:ss'), 0);
commit;
prompt 5 records loaded
prompt Loading BASE_SERVER...
insert into BASE_SERVER (id, servername, datasource, ip, port, sid, oracleuser, oraclepassword, use, delflag, rowtime, rowver)
values ('14120410000304', '长沙玫琳凯', 'dataSource1', '192.168.0.220', '1521', 'orcl', 'mlk', 'mlk', 1, 0, to_date('05-12-2014 09:39:02', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into BASE_SERVER (id, servername, datasource, ip, port, sid, oracleuser, oraclepassword, use, delflag, rowtime, rowver)
values ('14120410000303', '长沙丸美1号店', 'dataSource2', '192.168.0.220', '1521', 'orcl', 'cswm', 'cswm', 0, 0, to_date('05-12-2014 09:38:53', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 2 records loaded
prompt Loading BASE_STORE...
insert into BASE_STORE (id, cityid, storename, code, "linkman", "tel", "phone", "email", "address", "state", datasource, maxconnection, delflag, rowtime, rowver)
values ('14120410000001', 10000283, '长沙丸美1号店', '4301348923443222', '张三', '0731-87843332-0988', '13922111056', 'test@163.com', '长沙市芙蓉路138号', 0, 'dataSource1', 20, 0, to_date('05-12-2014 10:59:12', 'dd-mm-yyyy hh24:mi:ss'), 6);
commit;
prompt 1 records loaded
prompt Loading SYSTEM_DEPT...
insert into SYSTEM_DEPT (id, pid, deptname, colid, delflag, rowtime, rowver)
values (10000140, 0, '总经理办公室', 0, 0, to_date('27-11-2014 09:20:50', 'dd-mm-yyyy hh24:mi:ss'), 4);
insert into SYSTEM_DEPT (id, pid, deptname, colid, delflag, rowtime, rowver)
values (10000180, 10000140, '销售部', 0, 0, to_date('22-02-2014 23:18:50', 'dd-mm-yyyy hh24:mi:ss'), 4);
insert into SYSTEM_DEPT (id, pid, deptname, colid, delflag, rowtime, rowver)
values (10000181, 10000180, '销售三组', 0, 0, to_date('03-12-2014 16:34:48', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SYSTEM_DEPT (id, pid, deptname, colid, delflag, rowtime, rowver)
values (10000182, 10000140, '财务部', 0, 0, to_date('22-02-2014 21:11:17', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SYSTEM_DEPT (id, pid, deptname, colid, delflag, rowtime, rowver)
values (10000183, 10000140, '客服部', 0, 0, to_date('03-12-2014 16:33:30', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SYSTEM_DEPT (id, pid, deptname, colid, delflag, rowtime, rowver)
values (10000184, 10000180, '销售二组', 0, 0, to_date('03-12-2014 16:34:37', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SYSTEM_DEPT (id, pid, deptname, colid, delflag, rowtime, rowver)
values (10000185, 10000180, '销售一组', 0, 0, to_date('03-12-2014 16:34:27', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SYSTEM_DEPT (id, pid, deptname, colid, delflag, rowtime, rowver)
values (10000160, 10000140, '行政部', 0, 0, to_date('22-02-2014 21:11:43', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SYSTEM_DEPT (id, pid, deptname, colid, delflag, rowtime, rowver)
values (10000141, 10000140, '技术部', 0, 0, to_date('22-02-2014 21:11:00', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SYSTEM_DEPT (id, pid, deptname, colid, delflag, rowtime, rowver)
values (10000241, 10000181, '测试部门', 1, 1, to_date('30-07-2014 16:05:16', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into SYSTEM_DEPT (id, pid, deptname, colid, delflag, rowtime, rowver)
values (10000242, 10000181, '测试部门2', 1, 1, to_date('30-07-2014 16:05:33', 'dd-mm-yyyy hh24:mi:ss'), 0);
commit;
prompt 11 records loaded
prompt Loading SYSTEM_DICT...
insert into SYSTEM_DICT (id, dicttype, dictcode, dictname, rowtime, rowver)
values ('14120110000281', 'XB', '1', '男', to_date('01-12-2014 13:20:25', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into SYSTEM_DICT (id, dicttype, dictcode, dictname, rowtime, rowver)
values ('14120110000282', 'XB', '0', '女', to_date('01-12-2014 13:20:36', 'dd-mm-yyyy hh24:mi:ss'), 0);
commit;
prompt 2 records loaded
prompt Loading SYSTEM_MENU...
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2011, 2000, 'ADMIN', 11, '功能管理', '/system/menu_enter.action?menuid=2011', '/global/images/base/process.gif', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2002, 2000, 'ADMIN', 2, '系统职称', '/system/position_enter.action?menuid=2002', '/global/images/base/duty.png', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2032, 2030, 'ADMIN', 32, '模块统计', '/report/module_enter.action?menuid=2032', '/global/images/base/analysis2.gif', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2001, 2000, 'ADMIN', 1, '系统角色', '/system/managerole_enter.action?menuid=2001', '/global/images/base/role.png', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2003, 2000, 'ADMIN', 3, '系统用户', '/system/manageuser_enter.action?menuid=2003', '/global/images/base/pass.png', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2030, 0, 'ADMIN', 30, '内核统计', null, '/global/images/base/dir.png', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2031, 2030, 'ADMIN', 31, '访问统计', '/report/access_enter.action?menuid=2031', '/global/images/base/analysis1.gif', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (1000, 0, 'SYS', 0, '系统管理', null, '/global/images/base/dir.png', 1, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (1002, 1000, 'SYS', 3, '角色管理', '/system/baserole_enter.action?menuid=1002', '/global/images/base/role.png', 1, 1, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (1001, 1000, 'SYS', 1, '部门管理', '/system/dept_enter.action?menuid=1001', '/global/images/base/dept.png', 1, 1, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (1003, 1000, 'SYS', 4, '用户管理', '/system/baseuser_enter.action?menuid=1003', '/global/images/base/pass.png', 1, 1, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2008, 2000, 'ADMIN', 8, '系统日志', '/system/logs_enter.action?menuid=2008', '/global/images/base/syslog.gif', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2009, 2000, 'ADMIN', 9, '表格属性', '/system/grid_enter.action?menuid=2009', '/global/images/base/aa.gif', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2000, 0, 'ADMIN', 0, '内核管理', null, '/global/images/base/dir.png', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2006, 2000, 'ADMIN', 6, '参数配置', '/system/param_enter.action?menuid=2006', '/global/images/base/logs.png', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2007, 2000, 'ADMIN', 7, '权限参数', '/system/rule_enter.action?menuid=2007', '/global/images/base/power.png', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2010, 2000, 'ADMIN', 10, '数据库管理', '/system/oracle_enter.action?menuid=2010', '/global/images/base/db.gif', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2005, 2000, 'ADMIN', 5, '字典配置', '/system/dict_enter.action?menuid=2005', '/global/images/base/dict.png', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (1010, 0, 'SYS', 14, '系统统计', null, '/global/images/base/dir.png', 1, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (1011, 1010, 'SYS', 15, '访问统计', '/report/access_enter.action?menuid=1011', '/global/images/base/analysis1.gif', 1, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (1012, 1010, 'SYS', 16, '模块统计', '/report/module_enter.action?menuid=1012', '/global/images/base/analysis2.gif', 1, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2020, 0, 'ADMIN', 20, '内核报告', null, '/global/images/base/dir.png', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2021, 2020, 'ADMIN', 21, '权限参数报告', '/report/menurule_enter.action?menuid=2021', '/global/images/base/report.gif', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2022, 2020, 'ADMIN', 22, '系统角色报告', '/report/userrole_enter.action?menuid=2022', '/global/images/base/report.gif', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2023, 2020, 'ADMIN', 23, '管理者权限报告', '/report/rolemanagepower_enter.action?menuid=2023', '/global/images/base/report.gif', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2024, 2020, 'ADMIN', 24, '应用者权限报告', '/report/roleuserpower_enter.action?menuid=2024', '/global/images/base/report.gif', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (2004, 2000, 'ADMIN', 4, '流程配置', '/system/flow_enter.action?menuid=2004', '/global/images/base/table.gif', 0, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (5000, 0, 'AUD', 5000, '管理中心', null, '/global/images/base/dir.png', 1, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (5001, 5000, 'AUD', 5001, '基础信息', null, '/global/images/base/dir.png', 1, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (5002, 5001, 'AUD', 5002, '地区信息', '/guime/base/city_enter.action?menuid=5002', '/global/images/base/process.gif', 1, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (5003, 5001, 'AUD', 5003, '服务器信息', '/guime/base/server_enter.action?menuid=5003', '/global/images/base/db.gif', 1, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (5004, 5000, 'AUD', 5004, '业务信息', null, '/global/images/base/dir.png', 1, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (5005, 5004, 'AUD', 5005, '商家信息', '/guime/base/store_enter.action?menuid=5005', '/global/images/base/pass.png', 1, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (5100, 0, 'AUD', 5010, 'POS管理', null, '/global/images/base/dir.png', 1, 0, null, null, null, 0, null);
insert into SYSTEM_MENU (id, sid, type, colid, menu, url, ico, power, write, menugroupid, menugroupname, description, delflag, dirico)
values (5101, 5100, 'AUD', 5011, '收款员登录', '/guime/pos/qtdl_enter.action?menuid=5101&storeid=14120410000001', '/global/images/base/pass.png', 1, 0, null, null, null, 0, null);
commit;
prompt 35 records loaded
prompt Loading SYSTEM_USER...
insert into SYSTEM_USER (id, userid, username, sex, password, deptid, positionid, roleids, rolenames, email, officephone, officeaddress, homephone, homeaddress, mobilephone, islock, usertype, createuserid, colid, manageuserid, delflag, rowtime, rowver)
values ('14120310000426', 'lw', '刘伟', '男', '7b21fcc2c83228df7add1d5c97b3fd76', '10000141', '13090510006100', '13090510000946,', 'Java团队角色,', null, null, null, null, null, '13223123321', 0, 0, '14120310000423', 2, '14120310000425', 0, to_date('03-12-2014 17:25:38', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into SYSTEM_USER (id, userid, username, sex, password, deptid, positionid, roleids, rolenames, email, officephone, officeaddress, homephone, homeaddress, mobilephone, islock, usertype, createuserid, colid, manageuserid, delflag, rowtime, rowver)
values ('14120310000423', 'xshadmin', '谢少华管理员', '男', '4e61c4fb65310c6e834134372fc7fda3', null, null, '13090510000940', '系统管理角色', null, null, null, null, null, '15574359355', 0, 1, '13010110000001', null, null, 0, to_date('03-12-2014 16:16:20', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SYSTEM_USER (id, userid, username, sex, password, deptid, positionid, roleids, rolenames, email, officephone, officeaddress, homephone, homeaddress, mobilephone, islock, usertype, createuserid, colid, manageuserid, delflag, rowtime, rowver)
values ('14120310000422', 'cyadmin', '陈勇管理员', '男', 'aa74569b43565f0d26b49f62c96a15da', null, null, '13090510000940', '系统管理角色', null, null, null, null, null, '13873172203', 0, 1, '13010110000001', null, null, 0, to_date('03-12-2014 16:14:51', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SYSTEM_USER (id, userid, username, sex, password, deptid, positionid, roleids, rolenames, email, officephone, officeaddress, homephone, homeaddress, mobilephone, islock, usertype, createuserid, colid, manageuserid, delflag, rowtime, rowver)
values ('13010110000001', 'admin', '超级用户', '1', 'a66abb5684c45962d887564f08346e8d', '10000160', '13082910006080', '13090510000940', '系统管理角色', 'xsh@163.com', '123', null, null, null, '13928851065', 0, 1, '13010110000001', null, null, 0, to_date('01-12-2014 14:46:50', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into SYSTEM_USER (id, userid, username, sex, password, deptid, positionid, roleids, rolenames, email, officephone, officeaddress, homephone, homeaddress, mobilephone, islock, usertype, createuserid, colid, manageuserid, delflag, rowtime, rowver)
values ('14120310000424', 'cy', '陈勇', '男', '2011d78fbe7046e9f49d5b139fac7e6e', '10000141', '13090510006103', '13090510000946,13090510000947,', 'Java团队角色,C#团队角色,', null, null, null, null, null, '13422223333', 0, 0, '14120310000422', 1, null, 0, to_date('03-12-2014 16:39:59', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into SYSTEM_USER (id, userid, username, sex, password, deptid, positionid, roleids, rolenames, email, officephone, officeaddress, homephone, homeaddress, mobilephone, islock, usertype, createuserid, colid, manageuserid, delflag, rowtime, rowver)
values ('14120310000421', 'lmyadmin', '刘孟盈管理员', '男', '57eb0bbc7c22ffda192faab0dbda6a54', null, null, '13090510000940', '系统管理角色', null, null, null, null, null, '18611083559', 0, 1, '13010110000001', null, null, 0, to_date('03-12-2014 16:14:39', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SYSTEM_USER (id, userid, username, sex, password, deptid, positionid, roleids, rolenames, email, officephone, officeaddress, homephone, homeaddress, mobilephone, islock, usertype, createuserid, colid, manageuserid, delflag, rowtime, rowver)
values ('14120310000425', 'xsh', '谢少华', '男', '0e3b36f08bb4bb643d8a03967663616a', '10000141', '13090510006103', '13090510000946,', 'Java团队角色,', null, null, null, null, null, '15574359355', 0, 0, '14120310000422', 2, '14120310000424', 0, to_date('03-12-2014 16:40:43', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into SYSTEM_USER (id, userid, username, sex, password, deptid, positionid, roleids, rolenames, email, officephone, officeaddress, homephone, homeaddress, mobilephone, islock, usertype, createuserid, colid, manageuserid, delflag, rowtime, rowver)
values ('14120310000420', 'xhnadmin', '熊怀念管理员', '男', 'bbfb67c62df4cca0cde9fe3bf8785b3c', null, null, '13090510000940', '系统管理角色', null, null, null, null, null, '13975884423', 0, 1, '13010110000001', null, null, 0, to_date('03-12-2014 16:14:30', 'dd-mm-yyyy hh24:mi:ss'), 2);
commit;
prompt 8 records loaded
prompt Loading SYSTEM_FIND...
prompt Table is empty
prompt Loading SYSTEM_FIND_DETAIL...
prompt Table is empty
prompt Loading SYSTEM_FLOW...
insert into SYSTEM_FLOW (id, colid, nodename, nodeflag, condition, designateuserids)
values ('14022710000265', 97, '部门内部办理', 'singleprocess', 5, null);
insert into SYSTEM_FLOW (id, colid, nodename, nodeflag, condition, designateuserids)
values ('14022710000260', 3, '财务审批', 'singleprocess', 2, '10000182, 14022710000221');
insert into SYSTEM_FLOW (id, colid, nodename, nodeflag, condition, designateuserids)
values ('14022710000261', 100, '结束', 'end', 3, null);
insert into SYSTEM_FLOW (id, colid, nodename, nodeflag, condition, designateuserids)
values ('14022710000262', 4, '会签', 'multiprocess', 0, null);
insert into SYSTEM_FLOW (id, colid, nodename, nodeflag, condition, designateuserids)
values ('14030310000280', 101, '作废', 'cancel', 3, null);
insert into SYSTEM_FLOW (id, colid, nodename, nodeflag, condition, designateuserids)
values ('14022310000220', 1, '总经理审批', 'singleprocess', 2, '14022710000222, 14022710000220');
insert into SYSTEM_FLOW (id, colid, nodename, nodeflag, condition, designateuserids)
values ('14022310000221', 2, '部门经理审批', 'singleprocess', 1, null);
insert into SYSTEM_FLOW (id, colid, nodename, nodeflag, condition, designateuserids)
values ('14022710000263', 99, '退回上一步', 'singleprocess', 6, null);
insert into SYSTEM_FLOW (id, colid, nodename, nodeflag, condition, designateuserids)
values ('14022710000264', 98, '退回申请人', 'singleprocess', 4, null);
commit;
prompt 9 records loaded
prompt Loading SYSTEM_FLOW_DETAIL...
prompt Table is empty
prompt Loading SYSTEM_GRID...
insert into SYSTEM_GRID (id, userid, formtag, gridtag, columnname, band, colid, width, defaultvalue, isshow, warning, fontcolor, backgroundcolor, isflicker)
values (14120310000521, '14120310000422', 1002, 'grid1', 'createuserid', null, null, 106, null, null, null, null, null, null);
insert into SYSTEM_GRID (id, userid, formtag, gridtag, columnname, band, colid, width, defaultvalue, isshow, warning, fontcolor, backgroundcolor, isflicker)
values (14120310000520, '14120310000423', 1002, 'grid1', 'createuserid', null, null, 106, null, null, null, null, null, null);
insert into SYSTEM_GRID (id, userid, formtag, gridtag, columnname, band, colid, width, defaultvalue, isshow, warning, fontcolor, backgroundcolor, isflicker)
values (14120110000500, '13090510000120', 1002, 'grid1', 'createuserid', null, null, 106, null, null, null, null, null, null);
commit;
prompt 3 records loaded
prompt Loading SYSTEM_MANAGE_POWER...
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001382', '13090510000943', 5002, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001383', '13090510000943', 5003, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001384', '13090510000943', 5004, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001385', '13090510000943', 5005, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001410', '13090510000943', 5100, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001411', '13090510000943', 5101, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001380', '13090510000943', 5000, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001381', '13090510000943', 5001, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120110001262', '13090510000945', 1002, 1, 1, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120110001263', '13090510000945', 1003, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120110001264', '13090510000945', 1010, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120110001265', '13090510000945', 1011, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120110001266', '13090510000945', 1012, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001360', '13090510000945', 5000, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001361', '13090510000945', 5001, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001362', '13090510000945', 5002, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001363', '13090510000945', 5003, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001364', '13090510000945', 5004, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001365', '13090510000945', 5005, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001406', '13090510000941', 5100, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120110001260', '13090510000945', 1000, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001407', '13090510000941', 5101, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001298', '13090510000941', 1000, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120110001261', '13090510000945', 1001, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001301', '13090510000941', 1001, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001304', '13090510000941', 1002, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001306', '13090510000941', 1003, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001309', '13090510000941', 1010, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001311', '13090510000941', 1011, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001313', '13090510000941', 1012, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001412', '13090510000944', 5100, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001413', '13090510000944', 5101, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001282', '13090510000944', 1002, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001280', '13090510000944', 1000, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001281', '13090510000944', 1001, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001283', '13090510000944', 1003, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001284', '13090510000944', 1010, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001285', '13090510000944', 1011, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001286', '13090510000944', 1012, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001392', '13090510000941', 5000, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001393', '13090510000941', 5001, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001394', '13090510000941', 5002, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001395', '13090510000941', 5003, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001396', '13090510000941', 5004, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001397', '13090510000941', 5005, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001295', '13090510000943', 1000, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001296', '13090510000943', 1001, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001297', '13090510000943', 1002, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001300', '13090510000943', 1003, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001305', '13090510000943', 1010, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001308', '13090510000943', 1011, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001310', '13090510000943', 1012, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001302', '13090510000940', 1001, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001303', '13090510000940', 1002, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001307', '13090510000940', 1003, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001320', '13090510000940', 1010, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001326', '13090510000940', 1011, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001331', '13090510000940', 1012, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001408', '13090510000942', 5100, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001409', '13090510000942', 5101, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001299', '13090510000940', 1000, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001319', '13090510000942', 1000, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001323', '13090510000942', 1001, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001327', '13090510000942', 1002, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001330', '13090510000942', 1003, 1, 1, 1, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001334', '13090510000942', 1010, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001337', '13090510000942', 1011, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120310001340', '13090510000942', 1012, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001366', '13090510000944', 5000, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001367', '13090510000944', 5001, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001368', '13090510000944', 5002, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001369', '13090510000944', 5003, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001370', '13090510000944', 5004, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001371', '13090510000944', 5005, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001386', '13090510000942', 5000, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001387', '13090510000942', 5001, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001388', '13090510000942', 5002, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001389', '13090510000942', 5003, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001390', '13090510000942', 5004, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001391', '13090510000942', 5005, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001398', '13090510000940', 5000, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001399', '13090510000940', 5001, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001400', '13090510000940', 5002, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001401', '13090510000940', 5003, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001402', '13090510000940', 5004, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001403', '13090510000940', 5005, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001404', '13090510000940', 5100, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001405', '13090510000940', 5101, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001414', '13090510000945', 5100, 1, 0, 0, 0);
insert into SYSTEM_MANAGE_POWER (id, roleid, menuid, ispower, menuwrite, iswrite, flag)
values ('14120410001415', '13090510000945', 5101, 1, 0, 0, 0);
commit;
prompt 90 records loaded
prompt Loading SYSTEM_RULE...
insert into SYSTEM_RULE (id, menuid, rulename, rulesql, num, remark)
values ('14120310000280', 1003, '所有数据', '1=1', 1, null);
insert into SYSTEM_RULE (id, menuid, rulename, rulesql, num, remark)
values ('14120310000281', 1003, '只显示创建者数据', 'createuserid=@userid', 2, null);
insert into SYSTEM_RULE (id, menuid, rulename, rulesql, num, remark)
values ('14120110000264', 1002, '只显示创建者数据', 'createuserid=@userid', 2, null);
insert into SYSTEM_RULE (id, menuid, rulename, rulesql, num, remark)
values ('14120110000262', 1001, '所有数据', '1=1', 1, null);
insert into SYSTEM_RULE (id, menuid, rulename, rulesql, num, remark)
values ('14120110000263', 1002, '所有数据', '1=1', 1, null);
commit;
prompt 5 records loaded
prompt Loading SYSTEM_MANAGE_POWER_RULE...
insert into SYSTEM_MANAGE_POWER_RULE (id, managepowerid, ruleid, checked, flag)
values ('14120310000401', '14120310001303', '14120110000263', 1, 0);
insert into SYSTEM_MANAGE_POWER_RULE (id, managepowerid, ruleid, checked, flag)
values ('14120310000402', '14120310001303', '14120110000264', 1, 0);
insert into SYSTEM_MANAGE_POWER_RULE (id, managepowerid, ruleid, checked, flag)
values ('14120110000384', '14120110001262', '14120110000263', 0, 0);
insert into SYSTEM_MANAGE_POWER_RULE (id, managepowerid, ruleid, checked, flag)
values ('14120110000385', '14120110001262', '14120110000264', 0, 0);
insert into SYSTEM_MANAGE_POWER_RULE (id, managepowerid, ruleid, checked, flag)
values ('14120410000420', '14120110001263', '14120310000280', 0, 0);
insert into SYSTEM_MANAGE_POWER_RULE (id, managepowerid, ruleid, checked, flag)
values ('14120410000421', '14120110001263', '14120310000281', 0, 0);
insert into SYSTEM_MANAGE_POWER_RULE (id, managepowerid, ruleid, checked, flag)
values ('14120310000400', '14120310001302', '14120110000262', 1, 0);
insert into SYSTEM_MANAGE_POWER_RULE (id, managepowerid, ruleid, checked, flag)
values ('14120110000383', '14120110001261', '14120110000262', 0, 0);
insert into SYSTEM_MANAGE_POWER_RULE (id, managepowerid, ruleid, checked, flag)
values ('14120310000403', '14120310001307', '14120310000280', 1, 0);
insert into SYSTEM_MANAGE_POWER_RULE (id, managepowerid, ruleid, checked, flag)
values ('14120310000404', '14120310001307', '14120310000281', 1, 0);
commit;
prompt 10 records loaded
prompt Loading SYSTEM_PARAM...
insert into SYSTEM_PARAM (id, usefullife, appname, version, usercompany, softcompany, phone, system, pop3, stmp, login, pass, visits)
values ('SYS', null, 'ERP', null, '谢少华', '硅米(长沙)信息科技有限公司', '13928851065', 'Linux', 'pop.163.com', 'stmp.163.com', 'xshadmin', '123456', 1327);
commit;
prompt 1 records loaded
prompt Loading SYSTEM_POSITION...
insert into SYSTEM_POSITION (id, positionname, remark, delflag, rowtime, rowver)
values ('13090510006102', '部门经理', null, 0, to_date('25-11-2014 12:41:18', 'dd-mm-yyyy hh24:mi:ss'), 7);
insert into SYSTEM_POSITION (id, positionname, remark, delflag, rowtime, rowver)
values ('13090510006103', '主管', null, 0, to_date('25-11-2014 12:39:57', 'dd-mm-yyyy hh24:mi:ss'), 4);
insert into SYSTEM_POSITION (id, positionname, remark, delflag, rowtime, rowver)
values ('13090510006100', '总经理', null, 0, to_date('25-11-2014 12:43:16', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into SYSTEM_POSITION (id, positionname, remark, delflag, rowtime, rowver)
values ('13090510006101', '副总经理', null, 0, to_date('25-11-2014 12:41:37', 'dd-mm-yyyy hh24:mi:ss'), 6);
insert into SYSTEM_POSITION (id, positionname, remark, delflag, rowtime, rowver)
values ('13090510006104', '员工', null, 0, to_date('03-12-2014 16:02:56', 'dd-mm-yyyy hh24:mi:ss'), 15);
commit;
prompt 5 records loaded
prompt Loading SYSTEM_POSITION_DETAIL...
prompt Table is empty
prompt Loading SYSTEM_ROLE...
insert into SYSTEM_ROLE (id, rolename, roletype, remark, createuserid, delflag, rowtime, rowver)
values ('13090510000940', '系统管理角色', 1, null, '13010110000001', 0, to_date('23-02-2014 13:07:33', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SYSTEM_ROLE (id, rolename, roletype, remark, createuserid, delflag, rowtime, rowver)
values ('13090510000941', '销售部角色', 1, null, '13010110000001', 0, to_date('23-02-2014 09:23:15', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SYSTEM_ROLE (id, rolename, roletype, remark, createuserid, delflag, rowtime, rowver)
values ('13090510000942', '客服部角色', 1, null, '13010110000001', 0, to_date('22-02-2014 21:03:43', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SYSTEM_ROLE (id, rolename, roletype, remark, createuserid, delflag, rowtime, rowver)
values ('13090510000943', '财务部角色', 1, null, '13010110000001', 0, to_date('22-02-2014 21:03:35', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SYSTEM_ROLE (id, rolename, roletype, remark, createuserid, delflag, rowtime, rowver)
values ('13090510000944', '行政部角色', 1, null, '13010110000001', 0, to_date('22-02-2014 21:03:29', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into SYSTEM_ROLE (id, rolename, roletype, remark, createuserid, delflag, rowtime, rowver)
values ('13090510000945', '技术部角色', 1, null, '13010110000001', 0, to_date('18-07-2014 13:22:04', 'dd-mm-yyyy hh24:mi:ss'), 6);
insert into SYSTEM_ROLE (id, rolename, roletype, remark, createuserid, delflag, rowtime, rowver)
values ('13090510000946', 'Java团队角色', 0, null, '14120310000422', 0, to_date('30-07-2014 16:47:39', 'dd-mm-yyyy hh24:mi:ss'), 3);
insert into SYSTEM_ROLE (id, rolename, roletype, remark, createuserid, delflag, rowtime, rowver)
values ('13090510000947', 'C#团队角色', 0, null, '14120310000422', 0, to_date('22-02-2014 22:17:13', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SYSTEM_ROLE (id, rolename, roletype, remark, createuserid, delflag, rowtime, rowver)
values ('13090610000960', '销售一组角色', 0, null, '14120310000423', 0, to_date('22-02-2014 21:07:21', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SYSTEM_ROLE (id, rolename, roletype, remark, createuserid, delflag, rowtime, rowver)
values ('13090610000961', '销售二组角色', 0, null, '14120310000423', 0, to_date('20-06-2014 16:25:01', 'dd-mm-yyyy hh24:mi:ss'), 3);
commit;
prompt 10 records loaded
prompt Loading SYSTEM_USER_POWER...
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000611', '14120110001263', '13090510000947', 1003, 1, 1, 1, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000612', '14120110001264', '13090510000947', 1010, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000613', '14120110001265', '13090510000947', 1011, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000614', '14120110001266', '13090510000947', 1012, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000668', '14120410001404', '13090510000947', 5100, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000669', '14120410001405', '13090510000947', 5101, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000622', '14120110001260', '13090510000947', 1000, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000624', '14120110001261', '13090510000947', 1001, 1, 1, 1, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000610', '14120110001262', '13090510000947', 1002, 1, 1, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000640', '14120410001398', '13090610000961', 5000, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000641', '14120410001399', '13090610000961', 5001, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000642', '14120410001400', '13090610000961', 5002, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000643', '14120410001401', '13090610000961', 5003, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000644', '14120410001402', '13090610000961', 5004, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000645', '14120410001403', '13090610000961', 5005, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000658', '14120410001398', '13090510000946', 5000, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000659', '14120410001399', '13090510000946', 5001, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000660', '14120410001400', '13090510000946', 5002, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000661', '14120410001401', '13090510000946', 5003, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000662', '14120410001402', '13090510000946', 5004, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000663', '14120410001403', '13090510000946', 5005, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000664', '14120410001404', '13090610000961', 5100, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000665', '14120410001405', '13090610000961', 5101, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000666', '14120410001404', '13090610000960', 5100, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000667', '14120410001405', '13090610000960', 5101, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000581', '14120110001263', '13090610000961', 1003, 1, 1, 1, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000582', '14120110001264', '13090610000961', 1010, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000583', '14120110001265', '13090610000961', 1011, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000584', '14120110001266', '13090610000961', 1012, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000646', '14120410001398', '13090610000960', 5000, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000647', '14120410001399', '13090610000960', 5001, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000648', '14120410001400', '13090610000960', 5002, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000649', '14120410001401', '13090610000960', 5003, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000650', '14120410001402', '13090610000960', 5004, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000651', '14120410001403', '13090610000960', 5005, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000652', '14120410001398', '13090510000947', 5000, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000592', '14120110001260', '13090610000961', 1000, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000653', '14120410001399', '13090510000947', 5001, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000594', '14120110001261', '13090610000961', 1001, 1, 1, 1, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000595', '14120110001262', '13090610000960', 1002, 1, 1, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000580', '14120110001262', '13090610000961', 1002, 1, 1, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000596', '14120110001263', '13090610000960', 1003, 1, 1, 1, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000597', '14120110001264', '13090610000960', 1010, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000598', '14120110001265', '13090610000960', 1011, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000599', '14120110001266', '13090610000960', 1012, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000654', '14120410001400', '13090510000947', 5002, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000655', '14120410001401', '13090510000947', 5003, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000656', '14120410001402', '13090510000947', 5004, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000657', '14120410001403', '13090510000947', 5005, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000670', '14120410001404', '13090510000946', 5100, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120410000671', '14120410001405', '13090510000946', 5101, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000607', '14120110001260', '13090610000960', 1000, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000609', '14120110001261', '13090610000960', 1001, 1, 1, 1, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000625', '14120110001262', '13090510000946', 1002, 1, 1, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000626', '14120110001263', '13090510000946', 1003, 1, 1, 1, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000627', '14120110001264', '13090510000946', 1010, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000628', '14120110001265', '13090510000946', 1011, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000629', '14120110001266', '13090510000946', 1012, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000637', '14120110001260', '13090510000946', 1000, 1, 0, 0, 0);
insert into SYSTEM_USER_POWER (id, managepowerid2, roleid2, menuid2, ispower2, managepowerwrite2, iswrite2, flag2)
values ('14120310000639', '14120110001261', '13090510000946', 1001, 1, 1, 1, 0);
commit;
prompt 60 records loaded
prompt Loading SYSTEM_USER_POWER_RULE...
prompt Table is empty
prompt Loading WORKFLOW_INSTANCE...
prompt Table is empty
prompt Enabling foreign key constraints for SYSTEM_FIND...
alter table SYSTEM_FIND enable constraint SYSTEM_FIND_FK1;
alter table SYSTEM_FIND enable constraint SYSTEM_FIND_FK2;
prompt Enabling foreign key constraints for SYSTEM_FIND_DETAIL...
alter table SYSTEM_FIND_DETAIL enable constraint SYSTEM_FIND_DETAIL_KEY_FK;
prompt Enabling foreign key constraints for SYSTEM_FLOW_DETAIL...
alter table SYSTEM_FLOW_DETAIL enable constraint SYSTEM_FLOW_DETAIL_FK;
prompt Enabling foreign key constraints for SYSTEM_MANAGE_POWER...
alter table SYSTEM_MANAGE_POWER enable constraint SYSTEM_MANAGE_POWER_KEY_FK;
prompt Enabling foreign key constraints for SYSTEM_RULE...
alter table SYSTEM_RULE enable constraint SYSTEM_RULE_KEY_FK;
prompt Enabling foreign key constraints for SYSTEM_MANAGE_POWER_RULE...
alter table SYSTEM_MANAGE_POWER_RULE enable constraint SYSTEM_MANAGE_POWER_RULE_KEY2;
alter table SYSTEM_MANAGE_POWER_RULE enable constraint SYSTEM_MANAGE_POWER_RULE_KEY3;
prompt Enabling foreign key constraints for SYSTEM_POSITION_DETAIL...
alter table SYSTEM_POSITION_DETAIL enable constraint SYSTEM_POSITION_DETAIL_FK;
prompt Enabling foreign key constraints for SYSTEM_USER_POWER...
alter table SYSTEM_USER_POWER enable constraint SYSTEM_USER_POWER_KEY_FK;
prompt Enabling foreign key constraints for SYSTEM_USER_POWER_RULE...
alter table SYSTEM_USER_POWER_RULE enable constraint SYSTEM_USER_POWER_RULE_KEY2;
alter table SYSTEM_USER_POWER_RULE enable constraint SYSTEM_USER_POWER_RULE_KEY3;
prompt Enabling triggers for BASE_CITY...
alter table BASE_CITY enable all triggers;
prompt Enabling triggers for BASE_SERVER...
alter table BASE_SERVER enable all triggers;
prompt Enabling triggers for BASE_STORE...
alter table BASE_STORE enable all triggers;
prompt Enabling triggers for SYSTEM_DEPT...
alter table SYSTEM_DEPT enable all triggers;
prompt Enabling triggers for SYSTEM_DICT...
alter table SYSTEM_DICT enable all triggers;
prompt Enabling triggers for SYSTEM_MENU...
alter table SYSTEM_MENU enable all triggers;
prompt Enabling triggers for SYSTEM_USER...
alter table SYSTEM_USER enable all triggers;
prompt Enabling triggers for SYSTEM_FIND...
alter table SYSTEM_FIND enable all triggers;
prompt Enabling triggers for SYSTEM_FIND_DETAIL...
alter table SYSTEM_FIND_DETAIL enable all triggers;
prompt Enabling triggers for SYSTEM_FLOW...
alter table SYSTEM_FLOW enable all triggers;
prompt Enabling triggers for SYSTEM_FLOW_DETAIL...
alter table SYSTEM_FLOW_DETAIL enable all triggers;
prompt Enabling triggers for SYSTEM_GRID...
alter table SYSTEM_GRID enable all triggers;
prompt Enabling triggers for SYSTEM_MANAGE_POWER...
alter table SYSTEM_MANAGE_POWER enable all triggers;
prompt Enabling triggers for SYSTEM_RULE...
alter table SYSTEM_RULE enable all triggers;
prompt Enabling triggers for SYSTEM_MANAGE_POWER_RULE...
alter table SYSTEM_MANAGE_POWER_RULE enable all triggers;
prompt Enabling triggers for SYSTEM_PARAM...
alter table SYSTEM_PARAM enable all triggers;
prompt Enabling triggers for SYSTEM_POSITION...
alter table SYSTEM_POSITION enable all triggers;
prompt Enabling triggers for SYSTEM_POSITION_DETAIL...
alter table SYSTEM_POSITION_DETAIL enable all triggers;
prompt Enabling triggers for SYSTEM_ROLE...
alter table SYSTEM_ROLE enable all triggers;
prompt Enabling triggers for SYSTEM_USER_POWER...
alter table SYSTEM_USER_POWER enable all triggers;
prompt Enabling triggers for SYSTEM_USER_POWER_RULE...
alter table SYSTEM_USER_POWER_RULE enable all triggers;
prompt Enabling triggers for WORKFLOW_INSTANCE...
alter table WORKFLOW_INSTANCE enable all triggers;
set feedback on
set define on
prompt Done.
