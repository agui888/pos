prompt PL/SQL Developer import file
prompt Created on 2014年12月5日 by Tobin
set feedback off
set define off
prompt Creating SKYDA001...
create table SKYDA001
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
  skybm    VARCHAR2(10)
)
tablespace GMDB
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
alter table SKYDA001
  add constraint SKYID_KEY primary key (SKYID)
  using index 
  tablespace GMDB
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

prompt Disabling triggers for SKYDA001...
alter table SKYDA001 disable all triggers;
prompt Deleting SKYDA001...
delete from SKYDA001;
commit;
prompt Loading SKYDA001...
insert into SKYDA001 (skyid, skyname, skyposin, password, address, postal, phone, sphone, skybp, card_id, bdate, sdate, crate, ctype, yn_disp, yn_disc, yn_ret, yn_del, photo, commnts, skybm)
values ('001', '张三', '长沙1号店', '123456', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
commit;
prompt 1 records loaded
prompt Enabling triggers for SKYDA001...
alter table SKYDA001 enable all triggers;
set feedback on
set define on
prompt Done.
