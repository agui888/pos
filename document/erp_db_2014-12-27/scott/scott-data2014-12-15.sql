prompt PL/SQL Developer import file
prompt Created on 2014年12月15日 by Tobin
set feedback off
set define off
prompt Disabling triggers for SKYDA001...
alter table SKYDA001 disable all triggers;
prompt Deleting SKYDA001...
delete from SKYDA001;
commit;
prompt Loading SKYDA001...
insert into SKYDA001 (skyid, skyname, skyposin, password, address, postal, phone, sphone, skybp, card_id, bdate, sdate, crate, ctype, yn_disp, yn_disc, yn_ret, yn_del, photo, commnts, skybm, id)
values ('001', '张三', '测试', '123456', 'uuh', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11223');
commit;
prompt 1 records loaded
prompt Enabling triggers for SKYDA001...
alter table SKYDA001 enable all triggers;
set feedback on
set define on
prompt Done.
