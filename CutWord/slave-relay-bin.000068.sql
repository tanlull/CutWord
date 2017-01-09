/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!40019 SET @@session.max_insert_delayed_threads=0*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 4
#140213  1:15:04 server id 200  end_log_pos 120 CRC32 0x4df29d9d 	Start: binlog v 4, server v 5.6.11-enterprise-commercial-advanced created 140213  1:15:04
# at 120
#140213  1:15:04 server id 100  end_log_pos 0 CRC32 0x212ad8a6 	Rotate to mysql-bin.000528  pos: 4
# at 167
#140310 15:05:04 server id 100  end_log_pos 120 CRC32 0xe4739a83 	Start: binlog v 4, server v 5.6.11-enterprise-commercial-advanced-log created 140310 15:05:04
# at 283
#140310 15:05:04 server id 100  end_log_pos 392 CRC32 0x732f497a 	Query	thread_id=2472059	exec_time=0	error_code=0
use `mysql`/*!*/;
SET TIMESTAMP=1394438704/*!*/;
SET @@session.pseudo_thread_id=2472059/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1073741824/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C utf8 *//*!*/;
SET @@session.character_set_client=33,@@session.collation_connection=33,@@session.collation_server=33/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, REFERENCES, INDEX, ALTER, CREATE VIEW, TRIGGER, SHOW VIEW ON `eservice`.`payment_historys` TO 'e-service3'@'192.168.10.%'
/*!*/;
# at 555
#140310 15:05:05 server id 100  end_log_pos 487 CRC32 0x1850fae2 	Query	thread_id=2472064	exec_time=0	error_code=0
SET TIMESTAMP=1394438705/*!*/;
SET @@session.time_zone='SYSTEM'/*!*/;
BEGIN
/*!*/;
# at 650
# at 682
#140310 15:05:05 server id 100  end_log_pos 519 CRC32 0xe1fd4cee 	Intvar
SET INSERT_ID=6462019/*!*/;
#140310 15:05:05 server id 100  end_log_pos 769 CRC32 0x625bd6e8 	Query	thread_id=2472064	exec_time=0	error_code=0
use `eservice`/*!*/;
SET TIMESTAMP=1394438705/*!*/;
INSERT INTO `webstats` (`created`, `url`, `ip`, `webstat_menu_id`) VALUES ('2014-03-10 15:01:42', '/webservices/listpnumber_un/inv_infos/pay1', '58.97.9.41', 4)
/*!*/;
# at 932
#140310 15:05:05 server id 100  end_log_pos 800 CRC32 0xfc8e2991 	Xid = 31334232
COMMIT/*!*/;
# at 963
#140310 15:05:09 server id 100  end_log_pos 895 CRC32 0x3cebcd4a 	Query	thread_id=2472075	exec_time=0	error_code=0
SET TIMESTAMP=1394438709/*!*/;
/*!\C latin1 *//*!*/;
SET @@session.character_set_client=8,@@session.collation_connection=8,@@session.collation_server=33/*!*/;
BEGIN
/*!*/;
# at 1058
# at 1090
#140310 15:05:09 server id 100  end_log_pos 927 CRC32 0x044b76e1 	Intvar
SET INSERT_ID=1374/*!*/;
#140310 15:05:09 server id 100  end_log_pos 1130 CRC32 0x5c142997 	Query	thread_id=2472075	exec_time=0	error_code=0
SET TIMESTAMP=1394438709/*!*/;
INSERT INTO `member_taxes` (`member_id`, `customer_id`, `created`) VALUES (365415, 110239, '2014-03-10 15:01:46')
/*!*/;
# at 1293
#140310 15:05:09 server id 100  end_log_pos 1161 CRC32 0x832d0997 	Xid = 31334328
COMMIT/*!*/;
# at 1324
#140310 15:05:09 server id 100  end_log_pos 1248 CRC32 0x63d4e95d 	Query	thread_id=2472076	exec_time=0	error_code=0
SET TIMESTAMP=1394438709/*!*/;
/*!\C utf8 *//*!*/;
SET @@session.character_set_client=33,@@session.collation_connection=33,@@session.collation_server=33/*!*/;
BEGIN
/*!*/;
# at 1411
#140310 15:05:09 server id 100  end_log_pos 1651 CRC32 0xd8685121 	Query	thread_id=2472076	exec_time=0	error_code=0
SET TIMESTAMP=1394438709/*!*/;
UPDATE `member_txn` SET `enable_view_cdr` = 'True', `enable_view_cdr_tax` = 1, `id` = 3713261, `account_number` = '104529299885', `phone_number` = 'Y25315034', `enable_view_cdr_date` = '2014-03-10 15:01:46', `approve_staff_id` = '508', `enable_view_cdr_date_tax` = '2014-03-10 15:01:46'  WHERE `member_txn`.`id` = 3713261
/*!*/;
# at 1814
#140310 15:05:09 server id 100  end_log_pos 1682 CRC32 0x4474bcbe 	Xid = 31334331
COMMIT/*!*/;
# at 1845
#140310 15:05:09 server id 100  end_log_pos 1769 CRC32 0xed6be614 	Query	thread_id=2472076	exec_time=0	error_code=0
SET TIMESTAMP=1394438709/*!*/;
BEGIN
/*!*/;
# at 1932
#140310 15:05:09 server id 100  end_log_pos 2172 CRC32 0x6f79701a 	Query	thread_id=2472076	exec_time=0	error_code=0
SET TIMESTAMP=1394438709/*!*/;
UPDATE `member_txn` SET `enable_view_cdr` = 'True', `enable_view_cdr_tax` = 1, `id` = 3713261, `account_number` = '104529299885', `phone_number` = 'Y25315034', `enable_view_cdr_date` = '2014-03-10 15:01:46', `approve_staff_id` = '508', `enable_view_cdr_date_tax` = '2014-03-10 15:01:46'  WHERE `member_txn`.`id` = 3713261
/*!*/;
# at 2335
#140310 15:05:09 server id 100  end_log_pos 2203 CRC32 0xd6ab46c9 	Xid = 31334333
COMMIT/*!*/;
# at 2366
#140310 15:05:09 server id 100  end_log_pos 2290 CRC32 0xbb450d2b 	Query	thread_id=2472076	exec_time=0	error_code=0
SET TIMESTAMP=1394438709/*!*/;
BEGIN
/*!*/;
# at 2453
# at 2485
#140310 15:05:09 server id 100  end_log_pos 2322 CRC32 0x3a570592 	Intvar
SET INSERT_ID=595/*!*/;
#140310 15:05:09 server id 100  end_log_pos 2607 CRC32 0x1fcf6459 	Query	thread_id=2472076	exec_time=0	error_code=0
SET TIMESTAMP=1394438709/*!*/;
INSERT INTO `log_manage_requests` (`cdr`, `ebill`, `taxes`, `change_add`, `created`, `member_txn_id`, `staff_id`, `action_request`) VALUES (1, 0, 1, 0, '2014-03-10 15:01:46', '3713261', '508', 'approve')
/*!*/;
# at 2770
#140310 15:05:09 server id 100  end_log_pos 2638 CRC32 0x18a3be73 	Xid = 31334334
COMMIT/*!*/;
# at 2801
#140310 15:05:10 server id 100  end_log_pos 2733 CRC32 0xf2443d15 	Query	thread_id=2472085	exec_time=0	error_code=0
SET TIMESTAMP=1394438710/*!*/;
BEGIN
/*!*/;
# at 2896
# at 2928
#140310 15:05:10 server id 100  end_log_pos 2765 CRC32 0x3f1b5e42 	Intvar
SET INSERT_ID=6462020/*!*/;
#140310 15:05:10 server id 100  end_log_pos 3013 CRC32 0x13a4f57b 	Query	thread_id=2472085	exec_time=0	error_code=0
SET TIMESTAMP=1394438710/*!*/;
INSERT INTO `webstats` (`created`, `url`, `ip`, `webstat_menu_id`) VALUES ('2014-03-10 15:01:47', '/webselfcares/listpnumber_3g/inv_infos_3g', '1.20.1.6', 32)
/*!*/;
# at 3176
#140310 15:05:10 server id 100  end_log_pos 3044 CRC32 0xed545eec 	Xid = 31334457
COMMIT/*!*/;
# at 3207
#140310 15:05:21 server id 100  end_log_pos 3139 CRC32 0x059b9e46 	Query	thread_id=2472128	exec_time=0	error_code=0
SET TIMESTAMP=1394438721/*!*/;
BEGIN
/*!*/;
# at 3302
# at 3334
#140310 15:05:21 server id 100  end_log_pos 3171 CRC32 0x64d40559 	Intvar
SET INSERT_ID=6462021/*!*/;
#140310 15:05:21 server id 100  end_log_pos 3404 CRC32 0x62ddd3a5 	Query	thread_id=2472128	exec_time=0	error_code=0
SET TIMESTAMP=1394438721/*!*/;
INSERT INTO `webstats` (`created`, `url`, `ip`, `webstat_menu_id`) VALUES ('2014-03-10 15:01:58', '/home/ecode_service', '118.173.192.116', 29)
/*!*/;
# at 3567
#140310 15:05:21 server id 100  end_log_pos 3435 CRC32 0x82cd288b 	Xid = 31334813
COMMIT/*!*/;
# at 3598
#140310 15:05:31 server id 100  end_log_pos 3530 CRC32 0x8299eb8d 	Query	thread_id=2472151	exec_time=0	error_code=0
SET TIMESTAMP=1394438731/*!*/;
/*!\C latin1 *//*!*/;
SET @@session.character_set_client=8,@@session.collation_connection=8,@@session.collation_server=33/*!*/;
BEGIN
/*!*/;
# at 3693
# at 3725
#140310 15:05:31 server id 100  end_log_pos 3562 CRC32 0x7e2d944e 	Intvar
SET INSERT_ID=1375/*!*/;
#140310 15:05:31 server id 100  end_log_pos 3765 CRC32 0x246d212e 	Query	thread_id=2472151	exec_time=0	error_code=0
SET TIMESTAMP=1394438731/*!*/;
INSERT INTO `member_taxes` (`member_id`, `customer_id`, `created`) VALUES (365415, 110240, '2014-03-10 15:02:08')
/*!*/;
# at 3928
#140310 15:05:31 server id 100  end_log_pos 3796 CRC32 0xdc5b2bcb 	Xid = 31335140
COMMIT/*!*/;
# at 3959
#140310 15:05:31 server id 100  end_log_pos 3883 CRC32 0xda86d112 	Query	thread_id=2472152	exec_time=0	error_code=0
SET TIMESTAMP=1394438731/*!*/;
/*!\C utf8 *//*!*/;
SET @@session.character_set_client=33,@@session.collation_connection=33,@@session.collation_server=33/*!*/;
BEGIN
/*!*/;
# at 4046
#140310 15:05:31 server id 100  end_log_pos 4286 CRC32 0x4d737fb2 	Query	thread_id=2472152	exec_time=0	error_code=0
SET TIMESTAMP=1394438731/*!*/;
UPDATE `member_txn` SET `enable_view_cdr` = 'True', `enable_view_cdr_tax` = 1, `id` = 3713262, `account_number` = '104529292405', `phone_number` = 'Y53241254', `enable_view_cdr_date` = '2014-03-10 15:02:08', `approve_staff_id` = '508', `enable_view_cdr_date_tax` = '2014-03-10 15:02:08'  WHERE `member_txn`.`id` = 3713262
/*!*/;
# at 4449
#140310 15:05:31 server id 100  end_log_pos 4317 CRC32 0xb2637902 	Xid = 31335143
COMMIT/*!*/;
# at 4480
#140310 15:05:31 server id 100  end_log_pos 4404 CRC32 0x0f7c248a 	Query	thread_id=2472152	exec_time=0	error_code=0
SET TIMESTAMP=1394438731/*!*/;
BEGIN
/*!*/;
# at 4567
#140310 15:05:31 server id 100  end_log_pos 4807 CRC32 0x485e1c55 	Query	thread_id=2472152	exec_time=0	error_code=0
SET TIMESTAMP=1394438731/*!*/;
UPDATE `member_txn` SET `enable_view_cdr` = 'True', `enable_view_cdr_tax` = 1, `id` = 3713262, `account_number` = '104529292405', `phone_number` = 'Y53241254', `enable_view_cdr_date` = '2014-03-10 15:02:08', `approve_staff_id` = '508', `enable_view_cdr_date_tax` = '2014-03-10 15:02:08'  WHERE `member_txn`.`id` = 3713262
/*!*/;
# at 4970
#140310 15:05:31 server id 100  end_log_pos 4838 CRC32 0x235ba122 	Xid = 31335145
COMMIT/*!*/;
# at 5001
#140310 15:05:31 server id 100  end_log_pos 4925 CRC32 0x81c32bc3 	Query	thread_id=2472152	exec_time=0	error_code=0
SET TIMESTAMP=1394438731/*!*/;
BEGIN
/*!*/;
# at 5088
# at 5120
#140310 15:05:31 server id 100  end_log_pos 4957 CRC32 0x52e8810a 	Intvar
SET INSERT_ID=596/*!*/;
#140310 15:05:31 server id 100  end_log_pos 5242 CRC32 0x38e575f6 	Query	thread_id=2472152	exec_time=0	error_code=0
SET TIMESTAMP=1394438731/*!*/;
INSERT INTO `log_manage_requests` (`cdr`, `ebill`, `taxes`, `change_add`, `created`, `member_txn_id`, `staff_id`, `action_request`) VALUES (1, 0, 1, 0, '2014-03-10 15:02:08', '3713262', '508', 'approve')
/*!*/;
# at 5405
#140310 15:05:31 server id 100  end_log_pos 5273 CRC32 0xb1ca7eaf 	Xid = 31335146
COMMIT/*!*/;
# at 5436
#140310 15:05:32 server id 100  end_log_pos 5360 CRC32 0x14a91cb0 	Query	thread_id=2472157	exec_time=0	error_code=0
SET TIMESTAMP=1394438732/*!*/;
BEGIN
/*!*/;
# at 5523
#140310 15:05:32 server id 100  end_log_pos 5554 CRC32 0x333923ed 	Query	thread_id=2472157	exec_time=0	error_code=0
SET TIMESTAMP=1394438732/*!*/;
UPDATE payment_qs SET response_code = '99' , response_message = 'INCOMPLETE' WHERE transaction_ref ='1400512189'
/*!*/;
# at 5717
#140310 15:05:32 server id 100  end_log_pos 5585 CRC32 0xdd9519f1 	Xid = 31335199
COMMIT/*!*/;
# at 5748
#140310 15:05:32 server id 100  end_log_pos 5672 CRC32 0x0a875fc4 	Query	thread_id=2472157	exec_time=0	error_code=0
SET TIMESTAMP=1394438732/*!*/;
BEGIN
/*!*/;
# at 5835
# at 5867
#140310 15:05:32 server id 100  end_log_pos 5704 CRC32 0x55b0b770 	Intvar
SET INSERT_ID=294781/*!*/;
#140310 15:05:32 server id 100  end_log_pos 6271 CRC32 0x08903776 	Query	thread_id=2472157	exec_time=0	error_code=0
SET TIMESTAMP=1394438732/*!*/;
INSERT INTO `log_bank_responses` (`transaction_ref`, `bank`, `status`, `data`, `created`) VALUES ('1400512189', 'BAY', 'INCOMPLETE', '{\"MERCHANTNUMBER\":\"950200915\",\"ORDERNUMBER\":\"1400512189\",\"AMOUNT\":\"329110\",\"CURRENCY\":\"764\",\"AMOUNTEXP10\":\"-2\",\"LANGUAGE\":\"EN\",\"REF1\":\"1400512189\",\"REF2\":\"\",\"REF3\":\"\",\"REF4\":\"\",\"REF5\":\"\",\"RESPCODE\":\"99\",\"AUTHCODE\":\"\",\"STATUS\":\"INCOMPLETE\",\"PAYMENTTYPE\":\"CreditCard\"}', '2014-03-10 15:02:09')
/*!*/;
# at 6434
#140310 15:05:32 server id 100  end_log_pos 6302 CRC32 0x1dd37bc7 	Xid = 31335201
COMMIT/*!*/;
# at 6465
#140310 15:05:36 server id 100  end_log_pos 6397 CRC32 0x19830ea7 	Query	thread_id=2472171	exec_time=0	error_code=0
SET TIMESTAMP=1394438736/*!*/;
BEGIN
/*!*/;
# at 6560
# at 6592
#140310 15:05:36 server id 100  end_log_pos 6429 CRC32 0xf98fbeaf 	Intvar
SET INSERT_ID=6462022/*!*/;
#140310 15:05:36 server id 100  end_log_pos 6660 CRC32 0x38f63202 	Query	thread_id=2472171	exec_time=0	error_code=0
SET TIMESTAMP=1394438736/*!*/;
INSERT INTO `webstats` (`created`, `url`, `ip`, `webstat_menu_id`) VALUES ('2014-03-10 15:02:13', '/members/register', '118.173.192.116', 10)
/*!*/;
# at 6823
#140310 15:05:36 server id 100  end_log_pos 6691 CRC32 0xce0bfe27 	Xid = 31335285
COMMIT/*!*/;
# at 6854
#140310 15:05:41 server id 100  end_log_pos 6786 CRC32 0x0c2e5a60 	Query	thread_id=2472186	exec_time=0	error_code=0
SET TIMESTAMP=1394438741/*!*/;
BEGIN
/*!*/;
# at 6949
# at 6981
#140310 15:05:41 server id 100  end_log_pos 6818 CRC32 0x988e0074 	Intvar
SET INSERT_ID=6462023/*!*/;
#140310 15:05:41 server id 100  end_log_pos 7042 CRC32 0xc3600159 	Query	thread_id=2472186	exec_time=0	error_code=0
SET TIMESTAMP=1394438741/*!*/;
INSERT INTO `webstats` (`created`, `url`, `ip`, `webstat_menu_id`) VALUES ('2014-03-10 15:02:18', '/home/index', '110.164.191.140', 2)
/*!*/;
# at 7205
#140310 15:05:41 server id 100  end_log_pos 7073 CRC32 0xd4009b65 	Xid = 31335381
COMMIT/*!*/;
# at 7236
#140310 15:05:45 server id 100  end_log_pos 7168 CRC32 0x8571e8a9 	Query	thread_id=2472193	exec_time=0	error_code=0
SET TIMESTAMP=1394438745/*!*/;
BEGIN
/*!*/;
# at 7331
# at 7363
#140310 15:05:45 server id 100  end_log_pos 7200 CRC32 0x541504d8 	Intvar
SET INSERT_ID=6462024/*!*/;
#140310 15:05:45 server id 100  end_log_pos 7453 CRC32 0x77b5d34b 	Query	thread_id=2472193	exec_time=0	error_code=0
SET TIMESTAMP=1394438745/*!*/;
INSERT INTO `webstats` (`created`, `url`, `ip`, `webstat_menu_id`) VALUES ('2014-03-10 15:02:22', '/webservices/listpnumber_un/inv_infos/pay1', '58.11.107.244', 4)
/*!*/;
# at 7616
#140310 15:05:45 server id 100  end_log_pos 7484 CRC32 0x1a4a53e1 	Xid = 31335482
COMMIT/*!*/;
# at 7647
#140310 15:05:45 server id 100  end_log_pos 7579 CRC32 0x8a8528d8 	Query	thread_id=2472194	exec_time=0	error_code=0
SET TIMESTAMP=1394438745/*!*/;
BEGIN
/*!*/;
# at 7742
# at 7774
#140310 15:05:45 server id 100  end_log_pos 7611 CRC32 0xd1a12c3a 	Intvar
SET INSERT_ID=6462025/*!*/;
#140310 15:05:45 server id 100  end_log_pos 7835 CRC32 0x7fc2f87a 	Query	thread_id=2472194	exec_time=0	error_code=0
SET TIMESTAMP=1394438745/*!*/;
INSERT INTO `webstats` (`created`, `url`, `ip`, `webstat_menu_id`) VALUES ('2014-03-10 15:02:22', '/members/register', '1.20.1.7', 10)
/*!*/;
# at 7998
#140310 15:05:45 server id 100  end_log_pos 7866 CRC32 0x2d0b16bd 	Xid = 31335489
COMMIT/*!*/;
# at 8029
#140310 15:05:50 server id 100  end_log_pos 7961 CRC32 0x5eec13e0 	Query	thread_id=2472210	exec_time=0	error_code=0
SET TIMESTAMP=1394438750/*!*/;
BEGIN
/*!*/;
# at 8124
# at 8156
#140310 15:05:50 server id 100  end_log_pos 7993 CRC32 0x5c485d0d 	Intvar
SET INSERT_ID=6462026/*!*/;
#140310 15:05:50 server id 100  end_log_pos 8225 CRC32 0xf8c774c5 	Query	thread_id=2472210	exec_time=0	error_code=0
SET TIMESTAMP=1394438750/*!*/;
INSERT INTO `webstats` (`created`, `url`, `ip`, `webstat_menu_id`) VALUES ('2014-03-10 15:02:27', '/adsl_packages/present', '61.90.35.97', 14)
/*!*/;
# at 8388
#140310 15:05:50 server id 100  end_log_pos 8256 CRC32 0x29cfe5ea 	Xid = 31335688
COMMIT/*!*/;
# at 8419
#140310 15:05:50 server id 100  end_log_pos 8343 CRC32 0x8349accb 	Query	thread_id=2472213	exec_time=0	error_code=0
SET TIMESTAMP=1394438750/*!*/;
BEGIN
/*!*/;
# at 8506
#140310 15:05:50 server id 100  end_log_pos 8871 CRC32 0x9221cfb2 	Query	thread_id=2472213	exec_time=0	error_code=0
SET TIMESTAMP=1394438750/*!*/;
UPDATE `payment_qs` SET `id` = 512196, `transaction_ref` = '1400512196', `created` = '2014-03-10 15:00:43', `modified` = '2014-03-10 15:00:43', `amount` = 115.03, `bank_id` = 'BBL', `bank_ref` = '005030', `members_id` = 255778, `phone_number` = '', `payment_method` = 'CreditCard', `modify_by` = '', `card_type` = 'VisaCard', `account_no` = '000123774536-043600636', `response_code` = '', `response_message` = ''  WHERE `payment_qs`.`id` = 512196
/*!*/;
# at 9034
#140310 15:05:50 server id 100  end_log_pos 8902 CRC32 0x0cbcc2a3 	Xid = 31335706
COMMIT/*!*/;
# at 9065
#140310 15:05:50 server id 100  end_log_pos 8989 CRC32 0x59db297d 	Query	thread_id=2472213	exec_time=0	error_code=0
SET TIMESTAMP=1394438750/*!*/;
BEGIN
/*!*/;
# at 9152
# at 9184
#140310 15:05:50 server id 100  end_log_pos 9021 CRC32 0xd9a5d587 	Intvar
SET INSERT_ID=294782/*!*/;
#140310 15:05:50 server id 100  end_log_pos 9729 CRC32 0x5fa5bc0c 	Query	thread_id=2472213	exec_time=0	error_code=0
SET TIMESTAMP=1394438750/*!*/;
INSERT INTO `log_bank_responses` (`transaction_ref`, `bank`, `status`, `data`, `created`) VALUES ('1400512196', 'BBL', 'Success', '{\"prc\":\"0\",\"src\":\"0\",\"Ord\":\"000011695124\",\"Ref\":\"1400512196\",\"PayRef\":\"13539244\",\"successcode\":\"0\",\"Amt\":\"115.03\",\"Cur\":\"764\",\"Holder\":\"KITTIWIN PIPOPWATTANA\",\"AuthId\":\"005030\",\"AlertCode\":\"\",\"remark\":\"-\",\"eci\":\"05\",\"payerAuth\":\"Y\",\"sourceIp\":\"77.247.181.163\",\"ipCountry\":\"**\",\"cc0104\":\"4283\",\"cc1316\":\"5601\",\"issueCountry\":\"Others\",\"TxTime\":\"2014-03-10 15:02:23.0\",\"MerchantId\":\"1921\"}', '2014-03-10 15:02:27')
/*!*/;
# at 9892
#140310 15:05:50 server id 100  end_log_pos 9760 CRC32 0xf7c383d6 	Xid = 31335707
COMMIT/*!*/;
# at 9923
#140310 15:05:50 server id 100  end_log_pos 9847 CRC32 0xc4e38aa2 	Query	thread_id=2472216	exec_time=0	error_code=0
SET TIMESTAMP=1394438750/*!*/;
BEGIN
/*!*/;
# at 10010
# at 10042
#140310 15:05:50 server id 100  end_log_pos 9879 CRC32 0x1fec35b1 	Intvar
SET INSERT_ID=698961/*!*/;
#140310 15:05:50 server id 100  end_log_pos 10279 CRC32 0xd295be0b 	Query	thread_id=2472216	exec_time=0	error_code=0
SET TIMESTAMP=1394438750/*!*/;
INSERT INTO `payment_historys` (`transaction_ref`, `amount`, `members_id`, `bank_id`, `bank_ref`, `account_no`, `payment_method`, `card_type`, `created`, `modified`) VALUES ('1400512196', 115.03, 255778, 'BBL', '005030', '000123774536-043600636', 'CreditCard', 'VisaCard', '2014-03-10 15:00:43', '2014-03-10 15:02:27')
/*!*/;
# at 10442
#140310 15:05:50 server id 100  end_log_pos 10310 CRC32 0xe97d0ab6 	Xid = 31335717
COMMIT/*!*/;
# at 10473
#140310 15:05:51 server id 100  end_log_pos 10391 CRC32 0x7871008b 	Query	thread_id=2472217	exec_time=0	error_code=0
SET TIMESTAMP=1394438751/*!*/;
BEGIN
/*!*/;
# at 10554
# at 10586
#140310 15:05:51 server id 100  end_log_pos 10423 CRC32 0x8918cfa3 	Intvar
SET INSERT_ID=428077/*!*/;
#140310 15:05:51 server id 100  end_log_pos 11104 CRC32 0x70dd4449 	Query	thread_id=2472217	exec_time=0	error_code=0
use `kenan`/*!*/;
SET TIMESTAMP=1394438751/*!*/;
INSERT INTO `pym_post_broker` (`post_newbilling_date`, `is_delete`, `billing_account_id`, `invoice_number`, `amount_paid`, `payment_method_id`, `transaction_type`, `group_payment_channel_code`, `payment_channel_code`, `payment_location_code`, `vat_amount`, `vat_code`, `receipt_date`, `bank_code`, `post_newbilling_status`, `transaction_ref`, `create_by`, `discount_balance`, `payment_date`, `transaction_ref_new`) VALUES ('0000-00-00 00:00:00', '0', '000123774536', '476750861', 115.03, 3, 1, 'ES', 'ES', 'EE02', 7.53, 2, 20140310, '002', '0', '1400512196', 'system', 0, '20140310150043', '114005121961')
/*!*/;
# at 11267
#140310 15:05:51 server id 100  end_log_pos 11135 CRC32 0x4300f7e6 	Xid = 31335733
COMMIT/*!*/;
# at 11298
#140310 15:05:51 server id 100  end_log_pos 11216 CRC32 0x86e1a931 	Query	thread_id=2472217	exec_time=0	error_code=0
SET TIMESTAMP=1394438751/*!*/;
BEGIN
/*!*/;
# at 11379
#140310 15:05:51 server id 100  end_log_pos 11408 CRC32 0xafda1b0b 	Query	thread_id=2472217	exec_time=0	error_code=0
SET TIMESTAMP=1394438751/*!*/;
UPDATE `pym_post_broker` SET `id` = 428077, `receipt_number` = 'E14570428077'  WHERE `pym_post_broker`.`id` = 428077
/*!*/;
# at 11571
#140310 15:05:51 server id 100  end_log_pos 11439 CRC32 0x010ec010 	Xid = 31335736
COMMIT/*!*/;
# at 11602
#140310 15:05:51 server id 100  end_log_pos 11534 CRC32 0xa8d23bb2 	Query	thread_id=2472223	exec_time=0	error_code=0
SET TIMESTAMP=1394438751/*!*/;
BEGIN
/*!*/;
# at 11697
# at 11729
#140310 15:05:51 server id 100  end_log_pos 11566 CRC32 0x048cb0c2 	Intvar
SET INSERT_ID=6462027/*!*/;
#140310 15:05:51 server id 100  end_log_pos 11785 CRC32 0x34476655 	Query	thread_id=2472223	exec_time=0	error_code=0
use `eservice`/*!*/;
SET TIMESTAMP=1394438751/*!*/;
INSERT INTO `webstats` (`created`, `url`, `ip`, `webstat_menu_id`) VALUES ('2014-03-10 15:02:28', '/home/index', '58.97.9.41', 2)
/*!*/;
# at 11948
#140310 15:05:51 server id 100  end_log_pos 11816 CRC32 0x635caf8d 	Xid = 31335757
COMMIT/*!*/;
# at 11979
#140310 15:05:52 server id 100  end_log_pos 11905 CRC32 0xe678d85d 	Query	thread_id=2472217	exec_time=0	error_code=0
SET TIMESTAMP=1394438752/*!*/;
BEGIN
/*!*/;
# at 12068
#140310 15:05:52 server id 100  end_log_pos 12678 CRC32 0x3529f331 	Query	thread_id=2472217	exec_time=0	error_code=0
use `kenan`/*!*/;
SET TIMESTAMP=1394438752/*!*/;
UPDATE `pym_post_broker` SET `id` = 428077, `post_newbilling_status` = '1', `post_newbilling_date` = '2014-03-10 15:02:29', `vat_amount` = 7.53, `vat_code` = 2, `post_log` = 'CreatePaymentRequest=contextIntegrator=header=transactionId=?|integrationKeyRef=?|userName=ecauser01|password=ecauser01|billingAccountId=000123774536|invoiceNumber=0000476750861|amountPaid=115.030|paymentDate=20140310150043|paymentMethodId=3|transactionType=1|groupPaymentChannelCode=ES|paymentChannelCode=ES|paymentLocationCode=EE02|vatAmount=7.53|vatCode=2|receiptNumber=E14570428077|receiptDate=20140310|bankCode=002|branchNumber=|chequeNumber=|TransactionId=114005121961'  WHERE `pym_post_broker`.`id` = 428077
/*!*/;
# at 12841
#140310 15:05:52 server id 100  end_log_pos 12709 CRC32 0x993604b6 	Xid = 31335765
COMMIT/*!*/;
# at 12872
#140310 15:05:52 server id 100  end_log_pos 12804 CRC32 0x5a5168ec 	Query	thread_id=2472216	exec_time=0	error_code=0
SET TIMESTAMP=1394438752/*!*/;
BEGIN
/*!*/;
# at 12967
# at 12999
#140310 15:05:52 server id 100  end_log_pos 12836 CRC32 0xc4a76a94 	Intvar
SET INSERT_ID=1370783/*!*/;
#140310 15:05:52 server id 100  end_log_pos 13278 CRC32 0x9f577f40 	Query	thread_id=2472216	exec_time=0	error_code=0
use `eservice`/*!*/;
SET TIMESTAMP=1394438752/*!*/;
INSERT INTO payment_invoice_list_history (`id`, `transaction_ref`, `invoice_no`, `amount`, `account_no`, `payment_seq`, `create_payment_status` ,`create_payment_date`, `receive_number` , `payment_desc`) 
					VALUES (NULL, '1400512196', '476750861', '115.03', '000123774536' , '1' , '1' , '2014-03-10 15:02:28', 'E14570428077' , 'Posted Successfully')
/*!*/;
# at 13441
#140310 15:05:52 server id 100  end_log_pos 13309 CRC32 0xaf1d632b 	Xid = 31335767
COMMIT/*!*/;
# at 13472
#140310 15:05:52 server id 100  end_log_pos 13396 CRC32 0x1aee6497 	Query	thread_id=2472216	exec_time=0	error_code=0
SET TIMESTAMP=1394438752/*!*/;
BEGIN
/*!*/;
# at 13559
#140310 15:05:52 server id 100  end_log_pos 13564 CRC32 0x6ffb6a7c 	Query	thread_id=2472216	exec_time=0	error_code=0
SET TIMESTAMP=1394438752/*!*/;
DELETE  FROM `payment_qs_invoice_list`  WHERE `payment_qs_invoice_list`.`id` = 1539887
/*!*/;
# at 13727
#140310 15:05:52 server id 100  end_log_pos 13595 CRC32 0xed1e85b9 	Xid = 31335769
COMMIT/*!*/;
# at 13758
#140310 15:05:53 server id 100  end_log_pos 13690 CRC32 0x659704a9 	Query	thread_id=2472228	exec_time=0	error_code=0
SET TIMESTAMP=1394438753/*!*/;
BEGIN
/*!*/;
# at 13853
# at 13885
#140310 15:05:53 server id 100  end_log_pos 13722 CRC32 0x760d3b5e 	Intvar
SET INSERT_ID=6462028/*!*/;
#140310 15:05:53 server id 100  end_log_pos 13953 CRC32 0xe5b2e362 	Query	thread_id=2472228	exec_time=0	error_code=0
SET TIMESTAMP=1394438753/*!*/;
INSERT INTO `webstats` (`created`, `url`, `ip`, `webstat_menu_id`) VALUES ('2014-03-10 15:02:30', '/members/register', '118.173.192.116', 10)
/*!*/;
# at 14116
#140310 15:05:53 server id 100  end_log_pos 13984 CRC32 0x9e2d368d 	Xid = 31335787
COMMIT/*!*/;
# at 14147
#140310 15:05:53 server id 100  end_log_pos 14079 CRC32 0xa090fd90 	Query	thread_id=2472231	exec_time=0	error_code=0
SET TIMESTAMP=1394438753/*!*/;
/*!\C latin1 *//*!*/;
SET @@session.character_set_client=8,@@session.collation_connection=8,@@session.collation_server=33/*!*/;
BEGIN
/*!*/;
# at 14242
# at 14274
#140310 15:05:53 server id 100  end_log_pos 14111 CRC32 0x18066e5e 	Intvar
SET INSERT_ID=1376/*!*/;
#140310 15:05:53 server id 100  end_log_pos 14314 CRC32 0x2fa9d17d 	Query	thread_id=2472231	exec_time=0	error_code=0
SET TIMESTAMP=1394438753/*!*/;
INSERT INTO `member_taxes` (`member_id`, `customer_id`, `created`) VALUES (365415, 110241, '2014-03-10 15:02:30')
/*!*/;
# at 14477
#140310 15:05:53 server id 100  end_log_pos 14345 CRC32 0xb74b4693 	Xid = 31335834
COMMIT/*!*/;
# at 14508
#140310 15:05:53 server id 100  end_log_pos 14432 CRC32 0x46fcf5ed 	Query	thread_id=2472232	exec_time=0	error_code=0
SET TIMESTAMP=1394438753/*!*/;
/*!\C utf8 *//*!*/;
SET @@session.character_set_client=33,@@session.collation_connection=33,@@session.collation_server=33/*!*/;
BEGIN
/*!*/;
# at 14595
#140310 15:05:53 server id 100  end_log_pos 14835 CRC32 0x0c10730f 	Query	thread_id=2472232	exec_time=0	error_code=0
SET TIMESTAMP=1394438753/*!*/;
UPDATE `member_txn` SET `enable_view_cdr` = 'True', `enable_view_cdr_tax` = 1, `id` = 3713263, `account_number` = '104529261755', `phone_number` = 'Y35320314', `enable_view_cdr_date` = '2014-03-10 15:02:30', `approve_staff_id` = '508', `enable_view_cdr_date_tax` = '2014-03-10 15:02:30'  WHERE `member_txn`.`id` = 3713263
/*!*/;
# at 14998
#140310 15:05:53 server id 100  end_log_pos 14866 CRC32 0xf458fd40 	Xid = 31335837
COMMIT/*!*/;
# at 15029
#140310 15:05:53 server id 100  end_log_pos 14953 CRC32 0xc843faa4 	Query	thread_id=2472232	exec_time=0	error_code=0
SET TIMESTAMP=1394438753/*!*/;
BEGIN
/*!*/;
# at 15116
#140310 15:05:53 server id 100  end_log_pos 15356 CRC32 0xc5bfee1f 	Query	thread_id=2472232	exec_time=0	error_code=0
SET TIMESTAMP=1394438753/*!*/;
UPDATE `member_txn` SET `enable_view_cdr` = 'True', `enable_view_cdr_tax` = 1, `id` = 3713263, `account_number` = '104529261755', `phone_number` = 'Y35320314', `enable_view_cdr_date` = '2014-03-10 15:02:30', `approve_staff_id` = '508', `enable_view_cdr_date_tax` = '2014-03-10 15:02:30'  WHERE `member_txn`.`id` = 3713263
/*!*/;
# at 15519
#140310 15:05:53 server id 100  end_log_pos 15387 CRC32 0xb8cedaa0 	Xid = 31335839
COMMIT/*!*/;
# at 15550
#140310 15:05:53 server id 100  end_log_pos 15474 CRC32 0x80f3ed3e 	Query	thread_id=2472232	exec_time=0	error_code=0
SET TIMESTAMP=1394438753/*!*/;
BEGIN
/*!*/;
# at 15637
# at 15669
#140310 15:05:53 server id 100  end_log_pos 15506 CRC32 0xed3db493 	Intvar
SET INSERT_ID=597/*!*/;
#140310 15:05:53 server id 100  end_log_pos 15791 CRC32 0xdbce3f68 	Query	thread_id=2472232	exec_time=0	error_code=0
SET TIMESTAMP=1394438753/*!*/;
INSERT INTO `log_manage_requests` (`cdr`, `ebill`, `taxes`, `change_add`, `created`, `member_txn_id`, `staff_id`, `action_request`) VALUES (1, 0, 1, 0, '2014-03-10 15:02:30', '3713263', '508', 'approve')
/*!*/;
# at 15954
#140310 15:05:53 server id 100  end_log_pos 15822 CRC32 0x196e08e6 	Xid = 31335840
COMMIT/*!*/;
# at 15985
#140310 15:05:54 server id 100  end_log_pos 15909 CRC32 0x74ff11db 	Query	thread_id=2472216	exec_time=0	error_code=0
SET TIMESTAMP=1394438754/*!*/;
BEGIN
/*!*/;
# at 16072
#140310 15:05:54 server id 100  end_log_pos 16050 CRC32 0x30da4d4e 	Query	thread_id=2472216	exec_time=0	error_code=0
SET TIMESTAMP=1394438754/*!*/;
DELETE  FROM `payment_qs`  WHERE `payment_qs`.`id` = 512196
/*!*/;
# at 16213
#140310 15:05:54 server id 100  end_log_pos 16081 CRC32 0x8b4650e1 	Xid = 31335888
COMMIT/*!*/;
# at 16244
#140310 15:05:54 server id 100  end_log_pos 16176 CRC32 0x3b244afd 	Query	thread_id=2472239	exec_time=0	error_code=0
SET TIMESTAMP=1394438754/*!*/;
BEGIN
/*!*/;
# at 16339
# at 16371
#140310 15:05:54 server id 100  end_log_pos 16208 CRC32 0x893d10ac 	Intvar
SET INSERT_ID=6462029/*!*/;
#140310 15:05:54 server id 100  end_log_pos 16431 CRC32 0x18e640f5 	Query	thread_id=2472239	exec_time=0	error_code=0
SET TIMESTAMP=1394438754/*!*/;
INSERT INTO `webstats` (`created`, `url`, `ip`, `webstat_menu_id`) VALUES ('2014-03-10 15:02:31', '/home/index', '125.25.166.156', 2)
/*!*/;
# at 16594
#140310 15:05:54 server id 100  end_log_pos 16462 CRC32 0x674e5c86 	Xid = 31335897
COMMIT/*!*/;
# at 16625
#140310 15:06:03 server id 100  end_log_pos 16549 CRC32 0xe9d21e14 	Query	thread_id=2472275	exec_time=0	error_code=0
SET TIMESTAMP=1394438763/*!*/;
BEGIN
/*!*/;
# at 16712
# at 16744
#140310 15:06:03 server id 100  end_log_pos 16581 CRC32 0x1a8e71cf 	Intvar
SET INSERT_ID=9139/*!*/;
#140310 15:06:03 server id 100  end_log_pos 16932 CRC32 0xb6ade8ed 	Query	thread_id=2472275	exec_time=0	error_code=0
SET TIMESTAMP=1394438763/*!*/;
INSERT INTO `3g_request_access_webselfcares` (`members_id`, `account_number`, `phone_number`, `request_date`, `status`, `id_card`, `md5`) VALUES (357215, '104529308842', '0905236220', '2014-03-10 15:02:40', 'idcard', '1461200082561', 'e62b8e30238cff63b8f6698e23eee353')
/*!*/;
# at 17095
#140310 15:06:03 server id 100  end_log_pos 16963 CRC32 0x794d73bc 	Xid = 31336394
COMMIT/*!*/;
# at 17126
#140310 15:06:03 server id 100  end_log_pos 17058 CRC32 0xe5d0d740 	Query	thread_id=2472279	exec_time=0	error_code=0
SET TIMESTAMP=1394438763/*!*/;
/*!\C latin1 *//*!*/;
SET @@session.character_set_client=8,@@session.collation_connection=8,@@session.collation_server=33/*!*/;
BEGIN
/*!*/;
# at 17221
# at 17253
#140310 15:06:03 server id 100  end_log_pos 17090 CRC32 0x88b4c7bf 	Intvar
SET INSERT_ID=1377/*!*/;
#140310 15:06:03 server id 100  end_log_pos 17293 CRC32 0x2b750c42 	Query	thread_id=2472279	exec_time=0	error_code=0
SET TIMESTAMP=1394438763/*!*/;
INSERT INTO `member_taxes` (`member_id`, `customer_id`, `created`) VALUES (365415, 110242, '2014-03-10 15:02:40')
/*!*/;
# at 17456
#140310 15:06:03 server id 100  end_log_pos 17324 CRC32 0xabc936cc 	Xid = 31336434
COMMIT/*!*/;
# at 17487
#140310 15:06:03 server id 100  end_log_pos 17411 CRC32 0x723bef1c 	Query	thread_id=2472280	exec_time=0	error_code=0
SET TIMESTAMP=1394438763/*!*/;
/*!\C utf8 *//*!*/;
SET @@session.character_set_client=33,@@session.collation_connection=33,@@session.collation_server=33/*!*/;
BEGIN
/*!*/;
# at 17574
#140310 15:06:03 server id 100  end_log_pos 17814 CRC32 0x358496cc 	Query	thread_id=2472280	exec_time=0	error_code=0
SET TIMESTAMP=1394438763/*!*/;
UPDATE `member_txn` SET `enable_view_cdr` = 'True', `enable_view_cdr_tax` = 1, `id` = 3713264, `account_number` = '104529263775', `phone_number` = 'Y25173123', `enable_view_cdr_date` = '2014-03-10 15:02:40', `approve_staff_id` = '508', `enable_view_cdr_date_tax` = '2014-03-10 15:02:40'  WHERE `member_txn`.`id` = 3713264
/*!*/;
# at 17977
#140310 15:06:03 server id 100  end_log_pos 17845 CRC32 0xc90d2324 	Xid = 31336437
COMMIT/*!*/;
# at 18008
#140310 15:06:03 server id 100  end_log_pos 17932 CRC32 0xf0a1776e 	Query	thread_id=2472280	exec_time=0	error_code=0
SET TIMESTAMP=1394438763/*!*/;
BEGIN
/*!*/;
# at 18095
#140310 15:06:03 server id 100  end_log_pos 18335 CRC32 0xaa4a2822 	Query	thread_id=2472280	exec_time=0	error_code=0
SET TIMESTAMP=1394438763/*!*/;
UPDATE `member_txn` SET `enable_view_cdr` = 'True', `enable_view_cdr_tax` = 1, `id` = 3713264, `account_number` = '104529263775', `phone_number` = 'Y25173123', `enable_view_cdr_date` = '2014-03-10 15:02:40', `approve_staff_id` = '508', `enable_view_cdr_date_tax` = '2014-03-10 15:02:40'  WHERE `member_txn`.`id` = 3713264
/*!*/;
# at 18498
#140310 15:06:03 server id 100  end_log_pos 18366 CRC32 0xa44caaff 	Xid = 31336439
COMMIT/*!*/;
# at 18529
#140310 15:06:03 server id 100  end_log_pos 18453 CRC32 0x1443ec87 	Query	thread_id=2472280	exec_time=0	error_code=0
SET TIMESTAMP=1394438763/*!*/;
BEGIN
/*!*/;
# at 18616
# at 18648
#140310 15:06:03 server id 100  end_log_pos 18485 CRC32 0xc3f65cc3 	Intvar
SET INSERT_ID=598/*!*/;
#140310 15:06:03 server id 100  end_log_pos 18770 CRC32 0x8dcdbdd4 	Query	thread_id=2472280	exec_time=0	error_code=0
SET TIMESTAMP=1394438763/*!*/;
INSERT INTO `log_manage_requests` (`cdr`, `ebill`, `taxes`, `change_add`, `created`, `member_txn_id`, `staff_id`, `action_request`) VALUES (1, 0, 1, 0, '2014-03-10 15:02:40', '3713264', '508', 'approve')
/*!*/;
# at 18933
#140310 15:06:03 server id 100  end_log_pos 18801 CRC32 0x13d41806 	Xid = 31336440
COMMIT/*!*/;
# at 18964
#140310 15:06:08 server id 100  end_log_pos 18896 CRC32 0xe615c2de 	Query	thread_id=2472299	exec_time=0	error_code=0
SET TIMESTAMP=1394438768/*!*/;
BEGIN
/*!*/;
# at 19059
# at 19091
#140310 15:06:08 server id 100  end_log_pos 18928 CRC32 0xcb690a73 	Intvar
SET INSERT_ID=6462030/*!*/;
#140310 15:06:08 server id 100  end_log_pos 19157 CRC32 0xe8307477 	Query	thread_id=2472299	exec_time=0	error_code=0
SET TIMESTAMP=1394438768/*!*/;
INSERT INTO `webstats` (`created`, `url`, `ip`, `webstat_menu_id`) VALUES ('2014-03-10 15:02:45', '/payment/history', '203.150.228.39', 28)
/*!*/;
# at 19320
#140310 15:06:08 server id 100  end_log_pos 19188 CRC32 0xe8ef7b6d 	Xid = 31336605
COMMIT/*!*/;
# at 19351
#140310 15:06:08 server id 100  end_log_pos 19245 CRC32 0x656e39d6 
# Incident: LOST_EVENTS
RELOAD DATABASE; # Shall generate syntax error
# at 19408
#140213  1:15:04 server id 200  end_log_pos 19461 CRC32 0x737306d8 	Rotate to slave-relay-bin.000069  pos: 4
DELIMITER ;
# End of log file
ROLLBACK /* added by mysqlbinlog */;
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
