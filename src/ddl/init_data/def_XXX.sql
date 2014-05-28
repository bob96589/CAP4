--default password is P@ssw0rd
INSERT INTO DEF_USER ( OID, STATUSDESC, UPDATER, UPDATETIME, DEPCODE, CODE, NAME, PASSWORD, STATUS, PWDEXPIREDTIME, PRESTATUS, DISCRIMINATOR ) VALUES ('',null,null,'2013-01-01 12:12:12',null,'1','1','b7c26185a40f20d2edeb6de6d83be2ac85e8f89b8ef692bee26eb582c84ca6a4f52b994eefecbece', 0, '2014-05-28 15:06:49', 0, 'P');

INSERT INTO DEF_ROLE ( OID, CODE, SYSTYPE, STATUS, NAME, DESC, UPDATER, UPDATETIME, DISCRIMINATOR ) VALUES ('', 'AI0001','A','0','test',null,null,'2013-01-01 12:12:12','P');

--delete from DEF_FUNC;
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('01', 'P', 0, '0', 0, 'A', 0, 'index', 'index', '','0', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('02', 'P', 919110, '1', 0, 'A', 200, '參數模組', 'system', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('03', 'P', 929120, '2', 919110, 'A', 210, '單位組織', '', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('04', 'P', 939121, '3', 929120, 'A', 211, '單位資料', 'system/department', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('05', 'P', 929130, '2', 919110, 'A', 220, '功能權限', '', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('06', 'P', 939131, '3', 929130, 'A', 221, '系統功能', 'system/funcSet', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('07', 'P', 939132, '3', 929130, 'A', 222, '角色權限', 'system/roleSet', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('08', 'P', 939133, '3', 929180, 'A', 245, '使用者密碼政策', 'system/pwdpolicy', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('09', 'P', 929140, '2', 919110, 'A', 230, '分案管理', '', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('11', 'P', 939142, '3', 929140, 'A', 232, '因子維護', 'division/factorMnt', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('12', 'P', 939143, '3', 929140, 'A', 233, '條件維護', 'division/conditionMnt', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('13', 'P', 939144, '3', 929140, 'A', 234, '規則維護', 'division/ruleMnt', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('15', 'P', 929180, '2', 919110, 'A', 240, '參數設定', '', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('16', 'P', 939181, '3', 929180, 'A', 241, '共用參數', 'system/codetype', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('17', 'P', 939182, '3', 929180, 'A', 242, '系統設定維護', 'system/sysparm', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('18', 'P', 939183, '3', 929180, 'A', 243, '訊息代碼維護', 'system/errorCode', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('19', 'P', 939184, '3', 929180, 'A', 244, '操作紀錄設定', 'system/auditConfig', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('20', 'P', 919210, '1', 0, 'A', 300, '管理工具', 'admin', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('21', 'P', 929220, '2', 919210, 'A', 310, '使用者管理', '', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('22', 'P', 939221, '3', 929220, 'A', 311, '操作記錄查詢', 'admin/auditData', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('23', 'P', 939222, '3', 929220, 'A', 312, '線上使用者查詢', 'admin/ssoUser', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('24', 'P', 939223, '3', 929220, 'A', 313, '後台資料異動查詢', 'admin/', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('25', 'P', 939224, '3', 929220, 'A', 314, '使用者資料維護', 'admin/userSet', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('26', 'P', 939225, '3', 929220, 'A', 315, '代理人資料維護', 'admin/proxySet', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('27', 'P', 939226, '3', 929220, 'A', 316, '使用者密碼變更', 'admin/pwdchange', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('28', 'P', 929230, '2', 919210, 'A', 320, '公告管理', '', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('29', 'P', 939231, '3', 929230, 'A', 321, '公告訊息處理', 'admin/bulletin', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('30', 'P', 939232, '3', 929230, 'A', 322, '提醒通知處理', 'admin/remind', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('31', 'P', 929240, '2', 919210, 'A', 330, '業務資料', '', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('32', 'P', 939241, '3', 929240, 'A', 331, '文件解除鎖定', 'admin/docLock', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('33', 'P', 919310, '1', 0, 'A', 400, '排程服務', 'batch', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('34', 'P', 919320, '2', 919310, 'A', 410, '排程監控查詢', 'batch/jobexecution', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('35', 'P', 919330, '2', 919310, 'A', 420, '排程設定管理', '', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('36', 'P', 919331, '3', 919330, 'A', 421, '排程設定', 'batch/schedule', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('37', 'P', 919332, '3', 919330, 'A', 422, '排程Job設定', 'batch/jobs', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('38', 'P', 919410, '1', 0, 'A', 500, '業務資料', 'bi', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('39', 'P', 919510, '1', 0, 'A', 600, '交易紀錄', 'record', '','1', 'system', current timestamp);
INSERT INTO DEF_FUNC(OID, DISCRIMINATOR, CODE, LEVEL, PARENT, SYSTYPE, SEQUENCE, NAME, PATH, DESC, STATUS, UPDATER, UPDATETIME) values ('40', 'P', 919910, '1', 0, 'A', 700, '其他', 'other', '','1', 'system', current timestamp);

--delete from DEF_ROLEFUNC;
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('919110', 919110,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('929120', 929120,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939121', 939121,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('929130', 929130,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939131', 939131,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939132', 939132,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('929140', 929140,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939142', 939142,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939143', 939143,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939144', 939144,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('929180', 929180,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939181', 939181,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939182', 939182,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939183', 939183,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939184', 939184,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('919210', 919210,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('929220', 929220,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939221', 939221,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939222', 939222,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939223', 939223,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939224', 939224,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939225', 939225,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('929230', 929230,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939231', 939231,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939232', 939232,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('929240', 929240,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('939241', 939241,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('919310', 919310,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('919320', 919320,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('919330', 919330,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('919331', 919331,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('919332', 919332,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('919410', 919410,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('919510', 919510,'AI0001', 'system', current timestamp);
INSERT INTO DEF_ROLEFUNC(OID, FUNCCODE,ROLECODE, UPDATER, UPDATETIME) values ('919910', 919910,'AI0001', 'system', current timestamp);

INSERT INTO DEF_USERROLE ( OID, USERCODE, ROLECODE, UPDATER, UPDATETIME ) VALUES ('', '1','AI0001',null,null);

insert into cfg_CodeType(oid,codeType,codeValue,CodeDesc,codeOrder,locale,updater,updateTime) values('1','DisableType','A','全部不記錄(LOG+DATA)',1,'zh_TW','system',current timestamp);
insert into cfg_CodeType(oid,codeType,codeValue,CodeDesc,codeOrder,locale,updater,updateTime) values('2','DisableType','D','不記錄明細(DATA)',2,'zh_TW','system',current timestamp);
insert into cfg_CodeType(oid,codeType,codeValue,CodeDesc,codeOrder,locale,updater,updateTime) values('3','DisableType','C','記錄全部',3,'zh_TW','system',current timestamp);
insert into cfg_CodeType(oid,codeType,codeValue,CodeDesc,codeOrder,locale,updater,updateTime) values('4','lang','zh_TW','繁',1,'zh_TW','system',current timestamp);
insert into cfg_CodeType(oid,codeType,codeValue,CodeDesc,codeOrder,locale,updater,updateTime) values('5','lang','en','英',2,'en','system',current timestamp);
insert into cfg_CodeType(oid,codeType,codeValue,CodeDesc,codeOrder,locale,updater,updateTime) values('6','lang','zh_CN','簡',3,'zh_CN','system',current timestamp);
insert into cfg_CodeType(oid,codeType,codeValue,CodeDesc,codeOrder,locale,updater,updateTime) values('7','subsystem','ADM','ADM',1,'zh_TW','system',current timestamp);
insert into cfg_CodeType(oid,codeType,codeValue,CodeDesc,codeOrder,locale,updater,updateTime) values('8','funcLevel','1','功能導覽第一層(功能列)',1,'zh_TW','system',current timestamp);
insert into cfg_CodeType(oid,codeType,codeValue,CodeDesc,codeOrder,locale,updater,updateTime) values('9','funcLevel','2','功能導覽第二層(大項)',2,'zh_TW','system',current timestamp);
insert into cfg_CodeType(oid,codeType,codeValue,CodeDesc,codeOrder,locale,updater,updateTime) values('10','funcLevel','3','功能導覽第三層(細項)',3,'zh_TW','system',current timestamp);
insert into cfg_CodeType(oid,codeType,codeValue,CodeDesc,codeOrder,locale,updater,updateTime) values('11','authSysId','A','ADM',1,'zh_TW','system',current timestamp);
insert into cfg_CodeType(oid,codeType,codeValue,CodeDesc,codeOrder,locale,updater,updateTime) values('12','sysType','9','A',1,'zh_TW','system',current timestamp);
