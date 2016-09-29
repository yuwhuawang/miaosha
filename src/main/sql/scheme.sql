--数据库初始化脚本

--创建数据库

CREATE DATABASE seckill;

--使用数据库
use seckill;

--创建秒杀库存表
CREATE TABLE seckill(
    `seckill_id` bigint NOT NULL AUTO_INCREMENT COMMENT "商品库存id",
    `name` varchar(120) NOT NULL COMMENT "商品名称",
     `number` int NOT NULL,
     `start_time` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP,
     `end_time` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP ,
     `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
     PRIMARY KEY (seckill_id),
     key idx_start_time(start_time),
     key idx_end_time(end_time),
     key idx_create_time(create_time)
)ENGINE = InnoDB AUTO_INCREMENT= 1000 DEFAULT CHARSET=utf8 COMMENT="秒杀库存表";

--初始化数据

insert into seckill (name,number,start_time,end_time)
values
("1000元秒杀iphone6",100,"2016-09-29 00:00:00", "2016-10-01 00:00:00"),
("500元秒杀ipad2",200,"2016-09-29 00:00:00", "2016-10-01 00:00:00"),
("300元秒杀小米4",300,"2016-09-29 00:00:00", "2016-10-01 00:00:00"),
("100元秒杀红米note",500,"2016-09-29 00:00:00", "2016-10-01 00:00:00");

--秒杀成功明细表
--用户登录认证信息
 CREATE table success_killed(
            `seckill_id` bigint NOT NULL  COMMENT "秒杀商品id",
            `user_phone` bigint NOT NULL,
            `state` tinyint DEFAULT -1,
            `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
            PRIMARY KEY (seckill_id,user_phone),
            key idx_create_time(create_time))ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


