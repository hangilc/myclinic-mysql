alter table iyakuhin_master_arch add column sentei_ryouyou_kubun tinyint unsigned default 0;
alter table iyakuhin_master_arch add column ippanmei varchar(100) default '';
alter table iyakuhin_master_arch add column ippanmeicode varchar(12) default '';
alter table iyakuhin_master_arch add column chouki_shuusaihin_kanren int unsigned default 0;
alter table iyakuhin_master_arch add column ippanmei_shohou_kasan_kubun tinyint unsigned default 0;