----------------------------------------------
-- Export file for user ERP                 --
-- Created by Tobin on 2014-12-05, 11:10:35 --
----------------------------------------------

spool script.log

prompt
prompt Creating table BASE_CITY
prompt ========================
prompt
create table erp.BASE_CITY
(
  id       NUMBER not null,
  pid      NUMBER default 0,
  cityname VARCHAR2(50),
  colid    NUMBER,
  delflag  NUMBER,
  rowtime  DATE,
  rowver   NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table erp.BASE_CITY
  is '����';
comment on column erp.BASE_CITY.id
  is 'ID';
comment on column erp.BASE_CITY.pid
  is '��ID';
comment on column erp.BASE_CITY.cityname
  is '����';
comment on column erp.BASE_CITY.colid
  is '����';
comment on column erp.BASE_CITY.delflag
  is 'ɾ�����';
comment on column erp.BASE_CITY.rowtime
  is '����ʱ��';
comment on column erp.BASE_CITY.rowver
  is '�汾��';
alter table erp.BASE_CITY
  add constraint BASE_CITY_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BASE_SERVER
prompt ==========================
prompt
create table erp.BASE_SERVER
(
  id             VARCHAR2(15) not null,
  servername     VARCHAR2(255),
  datasource     VARCHAR2(255),
  ip             VARCHAR2(50),
  port           VARCHAR2(10),
  sid            VARCHAR2(255),
  oracleuser     VARCHAR2(255),
  oraclepassword VARCHAR2(255),
  use            NUMBER default 0,
  delflag        NUMBER,
  rowtime        DATE,
  rowver         NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table erp.BASE_SERVER
  is '��������Ϣ';
comment on column erp.BASE_SERVER.id
  is 'ID';
comment on column erp.BASE_SERVER.servername
  is '����������';
comment on column erp.BASE_SERVER.datasource
  is 'DataSource';
comment on column erp.BASE_SERVER.ip
  is 'IP��ַ';
comment on column erp.BASE_SERVER.port
  is '�˿�';
comment on column erp.BASE_SERVER.sid
  is 'ʵ��';
comment on column erp.BASE_SERVER.oracleuser
  is '�û�';
comment on column erp.BASE_SERVER.oraclepassword
  is '����';
comment on column erp.BASE_SERVER.use
  is '0��ʾδռ��/1��ʾռ��';
comment on column erp.BASE_SERVER.delflag
  is 'ɾ�����';
comment on column erp.BASE_SERVER.rowtime
  is '����ʱ��';
comment on column erp.BASE_SERVER.rowver
  is '�汾��';
alter table erp.BASE_SERVER
  add constraint BASE_SERVER_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYSTEM_DEPT
prompt ==========================
prompt
create table erp.SYSTEM_DEPT
(
  id       NUMBER not null,
  pid      NUMBER default 0,
  deptname VARCHAR2(50),
  colid    NUMBER,
  delflag  NUMBER,
  rowtime  DATE,
  rowver   NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table erp.SYSTEM_DEPT
  is '���Ż���֯������';
comment on column erp.SYSTEM_DEPT.id
  is 'ID';
comment on column erp.SYSTEM_DEPT.pid
  is '��ID';
comment on column erp.SYSTEM_DEPT.deptname
  is '��������';
comment on column erp.SYSTEM_DEPT.colid
  is '����';
comment on column erp.SYSTEM_DEPT.delflag
  is 'ɾ�����';
comment on column erp.SYSTEM_DEPT.rowtime
  is '����ʱ��';
comment on column erp.SYSTEM_DEPT.rowver
  is '�汾��';
alter table erp.SYSTEM_DEPT
  add constraint SYSTEM_DEPT_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYSTEM_DICT
prompt ==========================
prompt
create table erp.SYSTEM_DICT
(
  id       VARCHAR2(15) not null,
  dicttype VARCHAR2(20) not null,
  dictcode VARCHAR2(200) not null,
  dictname VARCHAR2(255),
  rowtime  DATE,
  rowver   NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table erp.SYSTEM_DICT
  is 'ϵͳ�ֵ�';
comment on column erp.SYSTEM_DICT.id
  is 'ID';
comment on column erp.SYSTEM_DICT.dicttype
  is '�ֵ�����';
comment on column erp.SYSTEM_DICT.dictcode
  is '����';
comment on column erp.SYSTEM_DICT.dictname
  is '����';
comment on column erp.SYSTEM_DICT.rowtime
  is '����ʱ��';
comment on column erp.SYSTEM_DICT.rowver
  is '�汾��';
alter table erp.SYSTEM_DICT
  add constraint SYSTEM_DICT_KEY primary key (ID, DICTTYPE, DICTCODE)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 576K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYSTEM_MENU
prompt ==========================
prompt
create table erp.SYSTEM_MENU
(
  id            NUMBER not null,
  sid           NUMBER,
  type          VARCHAR2(10),
  colid         NUMBER,
  menu          VARCHAR2(50),
  url           VARCHAR2(1000),
  ico           VARCHAR2(1000),
  power         NUMBER,
  write         NUMBER,
  menugroupid   NUMBER,
  menugroupname VARCHAR2(50),
  description   VARCHAR2(200),
  delflag       NUMBER,
  dirico        VARCHAR2(1000)
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table erp.SYSTEM_MENU
  is 'ϵͳ�˵�';
comment on column erp.SYSTEM_MENU.id
  is 'ID';
comment on column erp.SYSTEM_MENU.sid
  is 'SID';
comment on column erp.SYSTEM_MENU.type
  is '����';
comment on column erp.SYSTEM_MENU.colid
  is '���';
comment on column erp.SYSTEM_MENU.menu
  is '�˵�����';
comment on column erp.SYSTEM_MENU.url
  is 'URL';
comment on column erp.SYSTEM_MENU.ico
  is 'ͼ��';
comment on column erp.SYSTEM_MENU.power
  is 'Ȩ��';
comment on column erp.SYSTEM_MENU.write
  is '��д';
comment on column erp.SYSTEM_MENU.menugroupid
  is '������ID(�����˵��õ���һ�׹�����,������FLOWIDΪ��ֵͬ)';
comment on column erp.SYSTEM_MENU.menugroupname
  is '������ģ������(�����˵��õ���һ�׹�����,������FLOWNAMEΪ��ֵͬ)';
comment on column erp.SYSTEM_MENU.description
  is '����';
comment on column erp.SYSTEM_MENU.delflag
  is 'ɾ�����';
comment on column erp.SYSTEM_MENU.dirico
  is 'Ŀ��ͼ��';
alter table erp.SYSTEM_MENU
  add constraint SYSTEM_MENU_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYSTEM_USER
prompt ==========================
prompt
create table erp.SYSTEM_USER
(
  id            VARCHAR2(15) not null,
  userid        VARCHAR2(20),
  username      VARCHAR2(50),
  sex           VARCHAR2(4),
  password      VARCHAR2(255),
  deptid        VARCHAR2(15),
  positionid    VARCHAR2(15),
  roleids       VARCHAR2(4000),
  rolenames     VARCHAR2(4000),
  email         VARCHAR2(255),
  officephone   VARCHAR2(20),
  officeaddress VARCHAR2(2000),
  homephone     VARCHAR2(20),
  homeaddress   VARCHAR2(2000),
  mobilephone   VARCHAR2(20),
  islock        NUMBER,
  usertype      NUMBER,
  createuserid  VARCHAR2(15),
  colid         NUMBER,
  manageuserid  VARCHAR2(15),
  delflag       NUMBER,
  rowtime       DATE,
  rowver        NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table erp.SYSTEM_USER
  is '�û�����';
comment on column erp.SYSTEM_USER.id
  is 'ID';
comment on column erp.SYSTEM_USER.userid
  is '�ʺ�';
comment on column erp.SYSTEM_USER.username
  is '����';
comment on column erp.SYSTEM_USER.sex
  is '�Ա�';
comment on column erp.SYSTEM_USER.password
  is '����';
comment on column erp.SYSTEM_USER.deptid
  is '����ID';
comment on column erp.SYSTEM_USER.positionid
  is 'ְ��ID';
comment on column erp.SYSTEM_USER.roleids
  is '�����ɫID(��USERTYPE=1ʱ,���ֶ�ֻ�ᱣ��һ����ɫID)';
comment on column erp.SYSTEM_USER.rolenames
  is '�����ɫ����';
comment on column erp.SYSTEM_USER.email
  is '�����ʼ�';
comment on column erp.SYSTEM_USER.officephone
  is '�칫�绰';
comment on column erp.SYSTEM_USER.officeaddress
  is '�칫��ַ';
comment on column erp.SYSTEM_USER.homephone
  is '��ͥ�绰';
comment on column erp.SYSTEM_USER.homeaddress
  is '��ͥ��ַ';
comment on column erp.SYSTEM_USER.mobilephone
  is '�ƶ��绰';
comment on column erp.SYSTEM_USER.islock
  is '�����ʺ�';
comment on column erp.SYSTEM_USER.usertype
  is '�û�����(0Ӧ���û�/1�����û�)';
comment on column erp.SYSTEM_USER.createuserid
  is 'SYSTEM_USER.ID �����û�';
comment on column erp.SYSTEM_USER.colid
  is '���';
comment on column erp.SYSTEM_USER.manageuserid
  is '�ϼ��쵼(����)SYSTEM_USER.ID';
comment on column erp.SYSTEM_USER.delflag
  is 'ɾ�����';
comment on column erp.SYSTEM_USER.rowtime
  is '����ʱ��';
comment on column erp.SYSTEM_USER.rowver
  is '�汾��';
alter table erp.SYSTEM_USER
  add constraint SYSTEM_USER_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index erp.SYSTEM_USER_USERID on erp.SYSTEM_USER (USERID)
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYSTEM_FIND
prompt ==========================
prompt
create table erp.SYSTEM_FIND
(
  id         VARCHAR2(15) not null,
  menuid     NUMBER,
  findname   VARCHAR2(200),
  createdate DATE,
  userid     VARCHAR2(15),
  delflag    NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table erp.SYSTEM_FIND
  is '�߼���ѯ����';
comment on column erp.SYSTEM_FIND.id
  is 'ID';
comment on column erp.SYSTEM_FIND.menuid
  is '�˵�ID';
comment on column erp.SYSTEM_FIND.findname
  is '��ѯ����';
comment on column erp.SYSTEM_FIND.createdate
  is '��������';
comment on column erp.SYSTEM_FIND.userid
  is '�û�ID';
comment on column erp.SYSTEM_FIND.delflag
  is 'ɾ�����';
alter table erp.SYSTEM_FIND
  add constraint SYSTEM_FIND_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table erp.SYSTEM_FIND
  add constraint SYSTEM_FIND_FK1 foreign key (MENUID)
  references erp.SYSTEM_MENU (ID) on delete cascade;
alter table erp.SYSTEM_FIND
  add constraint SYSTEM_FIND_FK2 foreign key (USERID)
  references erp.SYSTEM_USER (ID) on delete cascade;

prompt
prompt Creating table SYSTEM_FIND_DETAIL
prompt =================================
prompt
create table erp.SYSTEM_FIND_DETAIL
(
  id     VARCHAR2(15) not null,
  pid    VARCHAR2(15),
  lsymbo VARCHAR2(1),
  col    VARCHAR2(255),
  el     VARCHAR2(100),
  value  VARCHAR2(100),
  rsymbo VARCHAR2(1),
  andor  VARCHAR2(10),
  colid  NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table erp.SYSTEM_FIND_DETAIL
  is '�߼���ѯ������ϸ';
comment on column erp.SYSTEM_FIND_DETAIL.id
  is 'id';
comment on column erp.SYSTEM_FIND_DETAIL.pid
  is 'pid';
comment on column erp.SYSTEM_FIND_DETAIL.lsymbo
  is '������';
comment on column erp.SYSTEM_FIND_DETAIL.col
  is '�ֶ���';
comment on column erp.SYSTEM_FIND_DETAIL.el
  is '����';
comment on column erp.SYSTEM_FIND_DETAIL.value
  is 'ֵ';
comment on column erp.SYSTEM_FIND_DETAIL.rsymbo
  is '������';
comment on column erp.SYSTEM_FIND_DETAIL.andor
  is '����ϵ';
comment on column erp.SYSTEM_FIND_DETAIL.colid
  is '���';
alter table erp.SYSTEM_FIND_DETAIL
  add constraint SYSTEM_FIND_DETAIL_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table erp.SYSTEM_FIND_DETAIL
  add constraint SYSTEM_FIND_DETAIL_KEY_FK foreign key (PID)
  references erp.SYSTEM_FIND (ID) on delete cascade;

prompt
prompt Creating table SYSTEM_FLOW
prompt ==========================
prompt
create table erp.SYSTEM_FLOW
(
  id               VARCHAR2(15) not null,
  colid            NUMBER,
  nodename         VARCHAR2(50),
  nodeflag         VARCHAR2(20),
  condition        NUMBER default 0,
  designateuserids VARCHAR2(4000)
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on column erp.SYSTEM_FLOW.id
  is 'ID';
comment on column erp.SYSTEM_FLOW.colid
  is '����';
comment on column erp.SYSTEM_FLOW.nodename
  is '�ڵ�����';
comment on column erp.SYSTEM_FLOW.nodeflag
  is '�ڵ�״̬,singleprocess���˴���,multiprocess:���˴���,end����';
comment on column erp.SYSTEM_FLOW.condition
  is '����,0��ʾ������1ֻ�޲����쵼,2ָ����Ա,3����ʾ�κ���,4��ǰ������,5��ǰ��¼�û�����������,6��һ��������';
comment on column erp.SYSTEM_FLOW.designateuserids
  is 'ָ���û�';
alter table erp.SYSTEM_FLOW
  add constraint SYSTEM_FLOW_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYSTEM_FLOW_DETAIL
prompt =================================
prompt
create table erp.SYSTEM_FLOW_DETAIL
(
  id            VARCHAR2(15) not null,
  pid           VARCHAR2(15),
  menugroupid   NUMBER,
  menugroupname VARCHAR2(4000),
  fields        VARCHAR2(4000)
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on column erp.SYSTEM_FLOW_DETAIL.id
  is 'ID';
comment on column erp.SYSTEM_FLOW_DETAIL.pid
  is '�ڵ�����';
comment on column erp.SYSTEM_FLOW_DETAIL.menugroupid
  is '�˵�.MENUGROUPID';
comment on column erp.SYSTEM_FLOW_DETAIL.menugroupname
  is '�˵�.MENUGROUPNAME';
comment on column erp.SYSTEM_FLOW_DETAIL.fields
  is '�ֶ�';
alter table erp.SYSTEM_FLOW_DETAIL
  add constraint SYSTEM_FLOW_DETAIL_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table erp.SYSTEM_FLOW_DETAIL
  add constraint SYSTEM_FLOW_DETAIL_FK foreign key (PID)
  references erp.SYSTEM_FLOW (ID) on delete cascade;

prompt
prompt Creating table SYSTEM_GRID
prompt ==========================
prompt
create table erp.SYSTEM_GRID
(
  id              NUMBER not null,
  userid          VARCHAR2(50),
  formtag         NUMBER,
  gridtag         VARCHAR2(255),
  columnname      VARCHAR2(255),
  band            NUMBER,
  colid           NUMBER,
  width           NUMBER,
  defaultvalue    VARCHAR2(4000),
  isshow          NUMBER,
  warning         VARCHAR2(50),
  fontcolor       VARCHAR2(50),
  backgroundcolor VARCHAR2(50),
  isflicker       NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table erp.SYSTEM_GRID
  is 'ϵͳ������ò���';
comment on column erp.SYSTEM_GRID.id
  is 'ID-Java';
comment on column erp.SYSTEM_GRID.userid
  is '�û�ID-Java';
comment on column erp.SYSTEM_GRID.formtag
  is 'Form����Tag-Java(��MENUID)';
comment on column erp.SYSTEM_GRID.gridtag
  is 'Form�����е�GridTag-Java(��GridID)';
comment on column erp.SYSTEM_GRID.columnname
  is '����-Java';
comment on column erp.SYSTEM_GRID.band
  is '��ͷ';
comment on column erp.SYSTEM_GRID.colid
  is '����';
comment on column erp.SYSTEM_GRID.width
  is '���-Java';
comment on column erp.SYSTEM_GRID.defaultvalue
  is 'Ĭ��ֵ';
comment on column erp.SYSTEM_GRID.isshow
  is '�Ƿ���ʾ';
comment on column erp.SYSTEM_GRID.warning
  is 'Ԥ����Χ(�����ַ�Χ''20..30''���ַ�''����'')';
comment on column erp.SYSTEM_GRID.fontcolor
  is '������ɫ';
comment on column erp.SYSTEM_GRID.backgroundcolor
  is '������ɫ';
comment on column erp.SYSTEM_GRID.isflicker
  is '��˸';
alter table erp.SYSTEM_GRID
  add constraint SYSTEM_GRID_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYSTEM_LOGS
prompt ==========================
prompt
create table erp.SYSTEM_LOGS
(
  id            VARCHAR2(15) not null,
  userip        VARCHAR2(50),
  httpurl       VARCHAR2(4000),
  userid        VARCHAR2(20),
  username      VARCHAR2(50),
  startdatetime DATE,
  enddatetime   DATE,
  menuid        VARCHAR2(50),
  classes       VARCHAR2(1000),
  aroundobject  VARCHAR2(1000),
  objectparam   CLOB,
  httpparam     CLOB,
  returnparam   CLOB,
  method        VARCHAR2(255)
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on column erp.SYSTEM_LOGS.id
  is 'ID';
comment on column erp.SYSTEM_LOGS.userip
  is 'IP��ַ';
comment on column erp.SYSTEM_LOGS.httpurl
  is 'URL';
comment on column erp.SYSTEM_LOGS.userid
  is '�û�ID';
comment on column erp.SYSTEM_LOGS.username
  is '�û���';
comment on column erp.SYSTEM_LOGS.startdatetime
  is '��¼ʱ��';
comment on column erp.SYSTEM_LOGS.enddatetime
  is '����ʱ��';
comment on column erp.SYSTEM_LOGS.menuid
  is '�˵�';
comment on column erp.SYSTEM_LOGS.classes
  is '�����뷽��';
comment on column erp.SYSTEM_LOGS.aroundobject
  is '��֯�����';
comment on column erp.SYSTEM_LOGS.objectparam
  is '����';
comment on column erp.SYSTEM_LOGS.httpparam
  is '��־��¼';
comment on column erp.SYSTEM_LOGS.returnparam
  is '����ֵ';
comment on column erp.SYSTEM_LOGS.method
  is '����';
alter table erp.SYSTEM_LOGS
  add constraint SYSTEM_LOGS_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYSTEM_MANAGE_POWER
prompt ==================================
prompt
create table erp.SYSTEM_MANAGE_POWER
(
  id        VARCHAR2(15) not null,
  roleid    VARCHAR2(15),
  menuid    NUMBER,
  ispower   NUMBER,
  menuwrite NUMBER,
  iswrite   NUMBER,
  flag      NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table erp.SYSTEM_MANAGE_POWER
  is 'ϵͳȨ��';
comment on column erp.SYSTEM_MANAGE_POWER.id
  is 'ID';
comment on column erp.SYSTEM_MANAGE_POWER.roleid
  is '��ɫID(ֻ��ϵͳ��ɫ����)';
comment on column erp.SYSTEM_MANAGE_POWER.menuid
  is '�˵�ID';
comment on column erp.SYSTEM_MANAGE_POWER.ispower
  is '����Ȩ��';
comment on column erp.SYSTEM_MANAGE_POWER.menuwrite
  is '����SYSTEM_MENU.WRITE��д����';
comment on column erp.SYSTEM_MANAGE_POWER.iswrite
  is 'дȨ��';
comment on column erp.SYSTEM_MANAGE_POWER.flag
  is '���';
alter table erp.SYSTEM_MANAGE_POWER
  add constraint SYSTEM_MANAGE_POWER_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table erp.SYSTEM_MANAGE_POWER
  add constraint SYSTEM_MANAGE_POWER_KEY_FK foreign key (MENUID)
  references erp.SYSTEM_MENU (ID) on delete cascade;

prompt
prompt Creating table SYSTEM_RULE
prompt ==========================
prompt
create table erp.SYSTEM_RULE
(
  id       VARCHAR2(15) not null,
  menuid   NUMBER,
  rulename VARCHAR2(100),
  rulesql  VARCHAR2(1000),
  num      NUMBER,
  remark   VARCHAR2(500)
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table erp.SYSTEM_RULE
  is 'Ȩ�޹����';
comment on column erp.SYSTEM_RULE.id
  is 'ID';
comment on column erp.SYSTEM_RULE.menuid
  is '�˵�ID';
comment on column erp.SYSTEM_RULE.rulename
  is '��������';
comment on column erp.SYSTEM_RULE.rulesql
  is '����SQL';
comment on column erp.SYSTEM_RULE.num
  is '���';
comment on column erp.SYSTEM_RULE.remark
  is '��ע';
alter table erp.SYSTEM_RULE
  add constraint SYSTEM_RULE_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table erp.SYSTEM_RULE
  add constraint SYSTEM_RULE_KEY_FK foreign key (MENUID)
  references erp.SYSTEM_MENU (ID) on delete cascade;

prompt
prompt Creating table SYSTEM_MANAGE_POWER_RULE
prompt =======================================
prompt
create table erp.SYSTEM_MANAGE_POWER_RULE
(
  id            VARCHAR2(15) not null,
  managepowerid VARCHAR2(15),
  ruleid        VARCHAR2(15),
  checked       NUMBER,
  flag          NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table erp.SYSTEM_MANAGE_POWER_RULE
  is '����Ȩ�ޱ�';
comment on column erp.SYSTEM_MANAGE_POWER_RULE.id
  is 'ID';
comment on column erp.SYSTEM_MANAGE_POWER_RULE.managepowerid
  is 'SYSTEM_MANAGE_POWER.IDȨ�ޱ�';
comment on column erp.SYSTEM_MANAGE_POWER_RULE.ruleid
  is '����SYSTEM_RULE.ID����';
comment on column erp.SYSTEM_MANAGE_POWER_RULE.checked
  is 'ѡ��';
comment on column erp.SYSTEM_MANAGE_POWER_RULE.flag
  is '���';
alter table erp.SYSTEM_MANAGE_POWER_RULE
  add constraint SYSTEM_MANAGE_POWER_RULE_KEY1 primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table erp.SYSTEM_MANAGE_POWER_RULE
  add constraint SYSTEM_MANAGE_POWER_RULE_KEY2 foreign key (RULEID)
  references erp.SYSTEM_RULE (ID) on delete cascade;
alter table erp.SYSTEM_MANAGE_POWER_RULE
  add constraint SYSTEM_MANAGE_POWER_RULE_KEY3 foreign key (MANAGEPOWERID)
  references erp.SYSTEM_MANAGE_POWER (ID) on delete cascade;

prompt
prompt Creating table SYSTEM_PARAM
prompt ===========================
prompt
create table erp.SYSTEM_PARAM
(
  id          VARCHAR2(15) not null,
  usefullife  DATE,
  appname     VARCHAR2(2000),
  version     VARCHAR2(10),
  usercompany VARCHAR2(2000),
  softcompany VARCHAR2(2000),
  phone       VARCHAR2(50),
  system      VARCHAR2(10),
  pop3        VARCHAR2(255),
  stmp        VARCHAR2(255),
  login       VARCHAR2(255),
  pass        VARCHAR2(255),
  visits      NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on column erp.SYSTEM_PARAM.id
  is 'ID';
comment on column erp.SYSTEM_PARAM.usefullife
  is 'ϵͳ��Ч��';
comment on column erp.SYSTEM_PARAM.appname
  is 'ϵͳ����';
comment on column erp.SYSTEM_PARAM.version
  is '�汾';
comment on column erp.SYSTEM_PARAM.usercompany
  is '�û���λ��Ϣ';
comment on column erp.SYSTEM_PARAM.softcompany
  is '�����������Ϣ';
comment on column erp.SYSTEM_PARAM.phone
  is '֧�ֵ绰';
comment on column erp.SYSTEM_PARAM.system
  is '����ϵͳ����';
comment on column erp.SYSTEM_PARAM.pop3
  is 'POP3';
comment on column erp.SYSTEM_PARAM.stmp
  is 'STMP';
comment on column erp.SYSTEM_PARAM.login
  is '�ʼ��û�';
comment on column erp.SYSTEM_PARAM.pass
  is '�ʼ�����';
comment on column erp.SYSTEM_PARAM.visits
  is 'ϵͳ��������';
alter table erp.SYSTEM_PARAM
  add constraint SYSTEM_PARAM_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYSTEM_POSITION
prompt ==============================
prompt
create table erp.SYSTEM_POSITION
(
  id           VARCHAR2(15) not null,
  positionname VARCHAR2(50),
  remark       VARCHAR2(4000),
  delflag      NUMBER,
  rowtime      DATE,
  rowver       NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table erp.SYSTEM_POSITION
  is 'ְ�����';
comment on column erp.SYSTEM_POSITION.id
  is 'ID';
comment on column erp.SYSTEM_POSITION.positionname
  is 'ְ������';
comment on column erp.SYSTEM_POSITION.remark
  is '��ע';
comment on column erp.SYSTEM_POSITION.delflag
  is 'ɾ�����';
comment on column erp.SYSTEM_POSITION.rowtime
  is '������ʱ��';
comment on column erp.SYSTEM_POSITION.rowver
  is '�����°汾��';
alter table erp.SYSTEM_POSITION
  add constraint SYSTEM_WORK_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYSTEM_POSITION_DETAIL
prompt =====================================
prompt
create table erp.SYSTEM_POSITION_DETAIL
(
  id            VARCHAR2(15) not null,
  pid           VARCHAR2(15),
  menugroupid   NUMBER,
  menugroupname VARCHAR2(4000),
  flowids       VARCHAR2(4000)
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on column erp.SYSTEM_POSITION_DETAIL.id
  is 'ID';
comment on column erp.SYSTEM_POSITION_DETAIL.pid
  is 'PID';
comment on column erp.SYSTEM_POSITION_DETAIL.menugroupid
  is '�˵�MENUGROUP';
comment on column erp.SYSTEM_POSITION_DETAIL.menugroupname
  is '�˵�����MENUGROUP';
comment on column erp.SYSTEM_POSITION_DETAIL.flowids
  is 'SYSTEM_FLOW.ID';
alter table erp.SYSTEM_POSITION_DETAIL
  add constraint SYSTEM_POSITION_DETAIL_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table erp.SYSTEM_POSITION_DETAIL
  add constraint SYSTEM_POSITION_DETAIL_FK foreign key (PID)
  references erp.SYSTEM_POSITION (ID) on delete cascade;

prompt
prompt Creating table SYSTEM_ROLE
prompt ==========================
prompt
create table erp.SYSTEM_ROLE
(
  id           VARCHAR2(15) not null,
  rolename     VARCHAR2(50),
  roletype     NUMBER,
  remark       VARCHAR2(200),
  createuserid VARCHAR2(15),
  delflag      NUMBER,
  rowtime      DATE,
  rowver       NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table erp.SYSTEM_ROLE
  is '��ɫ����';
comment on column erp.SYSTEM_ROLE.id
  is 'ID';
comment on column erp.SYSTEM_ROLE.rolename
  is '��ɫ����';
comment on column erp.SYSTEM_ROLE.roletype
  is '��ɫ����(0Ӧ�ý�ɫ/1�����ɫ)';
comment on column erp.SYSTEM_ROLE.remark
  is '��ע';
comment on column erp.SYSTEM_ROLE.createuserid
  is 'SYSTEM_USER.ID';
comment on column erp.SYSTEM_ROLE.delflag
  is 'ɾ�����';
comment on column erp.SYSTEM_ROLE.rowtime
  is '����ʱ��';
comment on column erp.SYSTEM_ROLE.rowver
  is '�汾��';
alter table erp.SYSTEM_ROLE
  add constraint SYSTEM_ROLE_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYSTEM_USER_POWER
prompt ================================
prompt
create table erp.SYSTEM_USER_POWER
(
  id                VARCHAR2(15) not null,
  managepowerid2    VARCHAR2(15),
  roleid2           VARCHAR2(15),
  menuid2           NUMBER,
  ispower2          NUMBER,
  managepowerwrite2 NUMBER,
  iswrite2          NUMBER,
  flag2             NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table erp.SYSTEM_USER_POWER
  is 'ϵͳȨ��';
comment on column erp.SYSTEM_USER_POWER.id
  is 'ID';
comment on column erp.SYSTEM_USER_POWER.managepowerid2
  is '����SYSTEM_MANAGE_POWER.IDֵ';
comment on column erp.SYSTEM_USER_POWER.roleid2
  is '��ɫID(ֻ��Ӧ�ý�ɫ����)';
comment on column erp.SYSTEM_USER_POWER.menuid2
  is '�˵�ID';
comment on column erp.SYSTEM_USER_POWER.ispower2
  is '����Ȩ��';
comment on column erp.SYSTEM_USER_POWER.managepowerwrite2
  is '����SYSTEM_MANAGE_POWER.ISWRITE��д����';
comment on column erp.SYSTEM_USER_POWER.iswrite2
  is 'дȨ��';
comment on column erp.SYSTEM_USER_POWER.flag2
  is '���';
alter table erp.SYSTEM_USER_POWER
  add constraint SYSTEM_USER_POWER_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table erp.SYSTEM_USER_POWER
  add constraint SYSTEM_USER_POWER_KEY_FK foreign key (MENUID2)
  references erp.SYSTEM_MENU (ID) on delete cascade;

prompt
prompt Creating table SYSTEM_USER_POWER_RULE
prompt =====================================
prompt
create table erp.SYSTEM_USER_POWER_RULE
(
  id                 VARCHAR2(15) not null,
  userpowerid        VARCHAR2(15),
  managepowerruleid2 VARCHAR2(15),
  checked2           NUMBER,
  flag2              NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table erp.SYSTEM_USER_POWER_RULE
  is '����Ȩ�ޱ�';
comment on column erp.SYSTEM_USER_POWER_RULE.id
  is 'ID';
comment on column erp.SYSTEM_USER_POWER_RULE.userpowerid
  is 'SYSTEM_USER_POWER.IDȨ�ޱ�';
comment on column erp.SYSTEM_USER_POWER_RULE.managepowerruleid2
  is '����SYSTEM_MANAGE_POWER_RULE.ID����';
comment on column erp.SYSTEM_USER_POWER_RULE.checked2
  is 'ѡ��';
comment on column erp.SYSTEM_USER_POWER_RULE.flag2
  is '���';
alter table erp.SYSTEM_USER_POWER_RULE
  add constraint SYSTEM_USER_POWER_RULE_KEY1 primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table erp.SYSTEM_USER_POWER_RULE
  add constraint SYSTEM_USER_POWER_RULE_KEY2 foreign key (MANAGEPOWERRULEID2)
  references erp.SYSTEM_MANAGE_POWER_RULE (ID) on delete cascade;
alter table erp.SYSTEM_USER_POWER_RULE
  add constraint SYSTEM_USER_POWER_RULE_KEY3 foreign key (USERPOWERID)
  references erp.SYSTEM_USER_POWER (ID) on delete cascade;

prompt
prompt Creating table T_BASE_SJGL
prompt ==========================
prompt
create table erp.T_BASE_SJGL
(
  id            VARCHAR2(15) not null,
  cityid        NUMBER,
  sjmc          VARCHAR2(500),
  yyzzbh        VARCHAR2(100),
  fzr           VARCHAR2(20),
  dhhm          VARCHAR2(20),
  sjhm          VARCHAR2(20),
  dzyj          VARCHAR2(20),
  dz            VARCHAR2(500),
  zt            NUMBER,
  datasource    VARCHAR2(255),
  maxconnection NUMBER,
  delflag       NUMBER,
  rowtime       DATE,
  rowver        NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table erp.T_BASE_SJGL
  is '�̼ҹ���';
comment on column erp.T_BASE_SJGL.id
  is 'ID';
comment on column erp.T_BASE_SJGL.cityid
  is '��������ID';
comment on column erp.T_BASE_SJGL.sjmc
  is '�̼�����';
comment on column erp.T_BASE_SJGL.yyzzbh
  is 'Ӫҵִ�ձ��';
comment on column erp.T_BASE_SJGL.fzr
  is '������';
comment on column erp.T_BASE_SJGL.dhhm
  is '�绰����';
comment on column erp.T_BASE_SJGL.sjhm
  is '�ֻ�����';
comment on column erp.T_BASE_SJGL.dzyj
  is '�����ʼ�';
comment on column erp.T_BASE_SJGL.dz
  is '��ַ';
comment on column erp.T_BASE_SJGL.zt
  is '״̬0��ʾ����/1��ʾͣ��';
comment on column erp.T_BASE_SJGL.datasource
  is '����Դ';
comment on column erp.T_BASE_SJGL.maxconnection
  is '���������';
comment on column erp.T_BASE_SJGL.delflag
  is 'ɾ�����';
comment on column erp.T_BASE_SJGL.rowtime
  is '����ʱ��';
comment on column erp.T_BASE_SJGL.rowver
  is '�汾��';
alter table erp.T_BASE_SJGL
  add constraint T_BASE_SJGL_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table WORKFLOW_INSTANCE
prompt ================================
prompt
create table erp.WORKFLOW_INSTANCE
(
  id            VARCHAR2(15) not null,
  pid           VARCHAR2(15),
  menugroupid   NUMBER,
  itemnoid      VARCHAR2(15),
  nodeid        VARCHAR2(15),
  nodeflag      VARCHAR2(20),
  nodepointer   NUMBER,
  groupnode     VARCHAR2(15),
  senduserid    VARCHAR2(15),
  senddate      DATE default sysdate,
  processuserid VARCHAR2(15),
  processdate   DATE,
  nodememo      VARCHAR2(4000),
  ismulit       NUMBER
)
tablespace ERP_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table erp.WORKFLOW_INSTANCE
  is '�˱���Java�����У���Entity��';
comment on column erp.WORKFLOW_INSTANCE.id
  is 'ID';
comment on column erp.WORKFLOW_INSTANCE.pid
  is '��һ�ڵ�ID';
comment on column erp.WORKFLOW_INSTANCE.menugroupid
  is 'ģ��ID';
comment on column erp.WORKFLOW_INSTANCE.itemnoid
  is '����';
comment on column erp.WORKFLOW_INSTANCE.nodeid
  is '�ڵ�ID';
comment on column erp.WORKFLOW_INSTANCE.nodeflag
  is '�ڵ�״̬';
comment on column erp.WORKFLOW_INSTANCE.nodepointer
  is '�ڵ�ָ��';
comment on column erp.WORKFLOW_INSTANCE.groupnode
  is '�ڵ���';
comment on column erp.WORKFLOW_INSTANCE.senduserid
  is '�����û�ID';
comment on column erp.WORKFLOW_INSTANCE.senddate
  is '����ʱ��';
comment on column erp.WORKFLOW_INSTANCE.processuserid
  is '�����û�ID';
comment on column erp.WORKFLOW_INSTANCE.processdate
  is '����ʱ��';
comment on column erp.WORKFLOW_INSTANCE.nodememo
  is '�������';
comment on column erp.WORKFLOW_INSTANCE.ismulit
  is '���˱��';
alter table erp.WORKFLOW_INSTANCE
  add constraint WORKFLOW_INSTANCE_KEY primary key (ID)
  using index 
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index erp.WORKFLOW_INSTANCE_POINTER on erp.WORKFLOW_INSTANCE (NODEPOINTER)
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index erp.WORKFLOW_INSTANCE_PROCESS on erp.WORKFLOW_INSTANCE (PROCESSUSERID)
  tablespace ERP_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating sequence BASE_CITY_SEQ
prompt ===============================
prompt
create sequence erp.BASE_CITY_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000300
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence BASE_NEWS_SEQ
prompt ===============================
prompt
create sequence erp.BASE_NEWS_SEQ
minvalue 10000000
maxvalue 99999999
start with 15779111
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence BASE_SERVER_SEQ
prompt =================================
prompt
create sequence erp.BASE_SERVER_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000320
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_DEPT_SEQ
prompt =================================
prompt
create sequence erp.SYSTEM_DEPT_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000280
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_DICT_SEQ
prompt =================================
prompt
create sequence erp.SYSTEM_DICT_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000300
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_FIND_DETAIL_SEQ
prompt ========================================
prompt
create sequence erp.SYSTEM_FIND_DETAIL_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000020
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_FIND_SEQ
prompt =================================
prompt
create sequence erp.SYSTEM_FIND_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000020
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_FLOW_DETAIL_SEQ
prompt ========================================
prompt
create sequence erp.SYSTEM_FLOW_DETAIL_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000320
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_FLOW_SEQ
prompt =================================
prompt
create sequence erp.SYSTEM_FLOW_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000320
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_GRID_SEQ
prompt =================================
prompt
create sequence erp.SYSTEM_GRID_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000540
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_LOGS_SEQ
prompt =================================
prompt
create sequence erp.SYSTEM_LOGS_SEQ
minvalue 10000000
maxvalue 99999999
start with 10036340
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_MANAGE_POWER_RULE_SEQ
prompt ==============================================
prompt
create sequence erp.SYSTEM_MANAGE_POWER_RULE_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000440
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_MANAGE_POWER_SEQ
prompt =========================================
prompt
create sequence erp.SYSTEM_MANAGE_POWER_SEQ
minvalue 10000000
maxvalue 99999999
start with 10001420
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_POSITION_DETAIL_SEQ
prompt ============================================
prompt
create sequence erp.SYSTEM_POSITION_DETAIL_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000240
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_POSITION_SEQ
prompt =====================================
prompt
create sequence erp.SYSTEM_POSITION_SEQ
minvalue 10000000
maxvalue 99999999
start with 10006240
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_ROLE_SEQ
prompt =================================
prompt
create sequence erp.SYSTEM_ROLE_SEQ
minvalue 10000000
maxvalue 99999999
start with 10001462
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_RULE_SEQ
prompt =================================
prompt
create sequence erp.SYSTEM_RULE_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000300
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_USER_POWER_RULE_SEQ
prompt ============================================
prompt
create sequence erp.SYSTEM_USER_POWER_RULE_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000120
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_USER_POWER_SEQ
prompt =======================================
prompt
create sequence erp.SYSTEM_USER_POWER_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000680
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SYSTEM_USER_SEQ
prompt =================================
prompt
create sequence erp.SYSTEM_USER_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000440
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence T_BASE_SJGL_SEQ
prompt =================================
prompt
create sequence erp.T_BASE_SJGL_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000020
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence WORKFLOW_GROUP
prompt ================================
prompt
create sequence erp.WORKFLOW_GROUP
minvalue 10000000
maxvalue 99999999
start with 10000640
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence WORKFLOW_INSTANCE_SEQ
prompt =======================================
prompt
create sequence erp.WORKFLOW_INSTANCE_SEQ
minvalue 10000000
maxvalue 99999999
start with 10000760
increment by 1
cache 20
cycle;

prompt
prompt Creating view SYSTEM_ACCESS
prompt ===========================
prompt
create or replace view erp.system_access as
select id, sdname, sum(num) as num, count(userip) as userip from (
  select t.sd as id,
         case t.sd
         when to_char(sysdate,     'yyyy-MM-dd') then '����'
         when to_char(sysdate - 1, 'yyyy-MM-dd') then '����'
         when to_char(sysdate - 2, 'yyyy-MM-dd') then 'ǰ��'
         when to_char(sysdate - 3, 'yyyy-MM-dd') then '����ǰ'
         when to_char(sysdate - 4, 'yyyy-MM-dd') then '����ǰ'
         when to_char(sysdate - 5, 'yyyy-MM-dd') then '����ǰ'
         when to_char(sysdate - 6, 'yyyy-MM-dd') then '����ǰ'
         when to_char(sysdate - 7, 'yyyy-MM-dd') then '����ǰ'
         else '����' end as sdname,
         count(t.id) as num,
         t.userip
  from (
         select id, a.userip, to_char(a.startdatetime,'yyyy-MM-dd') as sd from system_logs a
         where a.menuid is null and httpurl like '%/erp/system/home_enter.action' and (a.startdatetime between to_date(to_char(sysdate - 7, 'yyyy-MM-dd') || ' 00:00:01', 'yyyy-MM-dd HH24:mi:ss') and sysdate)
  ) t
  group by t.sd, t.userip
) temp group by id, sdname;

prompt
prompt Creating view SYSTEM_DEPT_USER
prompt ==============================
prompt
create or replace view erp.system_dept_user as
select "ID","PID","NAME","COLID", "XTYPE" from (

select to_char(id) as id, to_char(nvl(pid, 0)) as pid, deptname as name, colid, 'DEPT' as xtype from system_dept where delflag = 0
union all
select id, deptid as pid, username as name,  colid, 'USER' as xtype from system_user where delflag = 0 and islock = 0 and usertype = 0

) temp order by pid,colid;

prompt
prompt Creating view SYSTEM_MENU_RULE
prompt ==============================
prompt
create or replace view erp.system_menu_rule as
select a.id, a.menu, a.ico, a.power, a.write, b.rulename, b.rulesql, b.num from (
  select id, colid, ico, sys_connect_by_path(menu,'\') as menu, power, write
  from system_menu
  where delflag = 0
  start with sid='0' connect by prior id = sid
  order by id, colid
) a left join system_rule b on a.id = b.menuid
order by a.id, a.colid, b.id;

prompt
prompt Creating view SYSTEM_MODULE
prompt ===========================
prompt
create or replace view erp.system_module as
select distinct
         t.sd as id,
         t.menu,
         (select count(id)
               from system_logs
               where menuid = t.menuid and method = 'list' and startdatetime >= to_date(to_char(sysdate, 'yyyy-MM-dd') || ' 00:00:01', 'yyyy-MM-dd HH24:mi:ss')
         ) as enter,
         (select count(id)
               from system_logs
               where menuid = t.menuid and method = 'delete' and startdatetime >= to_date(to_char(sysdate, 'yyyy-MM-dd') || ' 00:00:01', 'yyyy-MM-dd HH24:mi:ss')
         ) as del,
         (select count(id)
               from system_logs
               where menuid = t.menuid and method = 'export' and startdatetime >= to_date(to_char(sysdate, 'yyyy-MM-dd') || ' 00:00:01', 'yyyy-MM-dd HH24:mi:ss')
         ) as exp,
         (select count(id)
               from system_logs
               where menuid = t.menuid and method = 'save' and startdatetime >= to_date(to_char(sysdate, 'yyyy-MM-dd') || ' 00:00:01', 'yyyy-MM-dd HH24:mi:ss')
         ) as save
  from (

         select to_char(a.startdatetime,'yyyy-MM-dd') as sd, a.menuid, b.menu, a.method
         from system_logs a left join system_menu b on a.menuid = b.id
         where a.menuid is not null and a.method in ('list','delete', 'export', 'save') and startdatetime >= to_date(to_char(sysdate, 'yyyy-MM-dd') || ' 00:00:01', 'yyyy-MM-dd HH24:mi:ss')

  ) t;

prompt
prompt Creating view SYSTEM_ROLE_MANAGE_POWER
prompt ======================================
prompt
create or replace view erp.system_role_manage_power as
select distinct mid as id, mid, msid,mtype,mcolid,mmenu,mpower,mwrite,pispower,pmenuwrite,piswrite,rrolename,rrulename,rrulesql,rnum,rremark,rchecked, sys_connect_by_path(temp.mmenu,'\') as menu
from (

    select mid,msid,mtype,mcolid,mmenu,mpower,mwrite,
           pispower,pmenuwrite,piswrite,
           rrolename,
           rrulename,rrulesql,rnum,rremark,rchecked from
    (
      select
        b.id as mid, b.sid as msid, b.type as mtype, b.colid as mcolid, b.menu as mmenu, b.power as mpower, b.write as mwrite,
        a.id, a.roleid, a.menuid, a.ispower as pispower, a.menuwrite as pmenuwrite, a.iswrite as piswrite,
        c.rolename as rrolename
      from system_manage_power a left join system_menu b on a.menuid = b.id left join system_role c on a.roleid = c.id
    ) t1
    left join
    (
      select bb.rulename as rrulename, bb.rulesql as rrulesql, bb.num as rnum, bb.remark as rremark, aa.checked as rchecked, aa.managepowerid
      from system_manage_power_rule aa left join system_rule bb on aa.ruleid = bb.id
    ) t2
    on t1.id = t2.managepowerid
    --order by roleid, mid, mcolid


)temp start with msid='0' connect by prior mid = msid
--order by mid, msid;

prompt
prompt Creating view SYSTEM_ROLE_USER_POWER
prompt ====================================
prompt
create or replace view erp.system_role_user_power as
select distinct mid as id, mid, msid,mtype,mcolid,mmenu,mpower,mwrite,pispower,pmenuwrite,piswrite,pispower2,pmanagepowerwrite2,piswrite2,rrolename,rrulename,rrulesql,rnum,rremark,rchecked, sys_connect_by_path(temp.mmenu,'\') as menu
from (


    select mid,msid,mtype,mcolid,mmenu,mpower,mwrite,
           pispower,pmenuwrite,piswrite,
           pispower2,pmanagepowerwrite2,piswrite2,
           rrolename,
           rrulename, rrulesql, rnum, rremark, rchecked from (
          select
              d.id as mid, d.sid as msid, d.type as mtype, d.colid as mcolid, d.menu as mmenu, d.power as mpower, d.write as mwrite,
              a.id, a.managepowerid2, a.roleid2, a.menuid2, a.ispower2 as pispower2, a.managepowerwrite2 as pmanagepowerwrite2, a.iswrite2 as piswrite2,
              b.ispower as pispower, b.menuwrite as pmenuwrite, b.iswrite as piswrite,
              c.rolename as rrolename
          from system_user_power a left join system_manage_power b on a.managepowerid2 = b.id
               left join system_role c on a.roleid2 = c.id left join system_menu d on a.menuid2 = d.id
      ) t1
      left join
      (
          select a.userpowerid, a.managepowerruleid2, a.checked2, b.managepowerid, b.ruleid,
                 b.checked as rchecked,
                 c.rulename as rrulename, c.rulesql as rrulesql, c.num as rnum, c.remark as rremark
          from system_user_power_rule a left join system_manage_power_rule b on a.managepowerruleid2 = b.id left join system_rule c on b.ruleid = c.id
      ) t2
      on t1.id = t2.userpowerid
    --  order by roleid2, mid, mcolid;


)temp start with msid='0' connect by prior mid = msid;

prompt
prompt Creating view SYSTEM_USER_ROLE
prompt ==============================
prompt
create or replace view erp.system_user_role as
select a.id, a.userid, a.username, b.deptname, d.positionname, a.rolenames, a.mobilephone, a.islock, a.usertype, c.username as createusername, a.rowtime
from system_user a left join system_dept b on a.deptid = b.id left join system_user c on a.createuserid = c.id left join system_position d on a.positionid = d.id
order by createusername, rolenames;


spool off
