----------------------------------------------
-- Export file for user SCOTT               --
-- Created by Tobin on 2014-12-15, 11:12:35 --
----------------------------------------------

spool scott-script2014-12-15.log

prompt
prompt Creating table SKYDA001
prompt =======================
prompt
create table scott.SKYDA001
(
  skyid    VARCHAR2(10) not null,
  skyname  VARCHAR2(20) not null,
  skyposin VARCHAR2(10) not null,
  password VARCHAR2(10),
  address  VARCHAR2(40),
  postal   VARCHAR2(10),
  phone    VARCHAR2(20),
  sphone   VARCHAR2(20),
  skybp    VARCHAR2(20),
  card_id  VARCHAR2(18),
  bdate    DATE,
  sdate    DATE,
  crate    NUMBER(6,2),
  ctype    CHAR(1),
  yn_disp  CHAR(1),
  yn_disc  CHAR(1),
  yn_ret   CHAR(1),
  yn_del   CHAR(1),
  photo    VARCHAR2(50),
  commnts  VARCHAR2(40),
  skybm    VARCHAR2(10),
  id       VARCHAR2(15)
)
tablespace USERS
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

prompt
prompt Creating sequence SKYDA001_SEQ
prompt ==============================
prompt
create sequence scott.SKYDA001_SEQ
minvalue 10000000
maxvalue 99999999
start with 10021720
increment by 1
cache 20
cycle;


spool off
