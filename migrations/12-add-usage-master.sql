create table usage_master (
    usage_code char(16) not null primary key,  -- 1
    kubun_code char(1) not null, -- 2
    kubun_name char(6) not null, -- 3
    detail_kubun_code char(1) not null, -- 4
    detail_kubun_name varchar(256) not null, -- 5
    timing_code char(1) not null, -- 6
    timing_name varchar(256) not null, -- 7
    usage_name varchar(256) not null, -- 8
    usage_code_kubun char(1) not null, -- 12
    tonpuku_condition char(1) not null, -- 13
    admin_timing char(1) not null, -- 14
    admin_time char(1) not null, -- 15
    admin_interval char(1) not null, -- 16
    admin_location char(1) not null, -- 17
    usage_kana varchar(256) not null -- 18
) character set utf8;