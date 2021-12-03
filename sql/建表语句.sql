CREATE DATABASE LvYouWangZhan;
USE LvYouWangZhan;

# 用户
CREATE TABLE user(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username varchar(64) NOT NULL,
    nickname varchar(64) NOT NULL,
    password varchar(64) NOT NULL,
    type tinyint NOT NULL DEFAULT 1, # 类型 0-管理员 1-普通用户
    money double NOT NULL DEFAULT 0,
    sex tinyint NOT NULL DEFAULT 1, # 性别 1-男 0-女
    email varchar(64) NULL,
    avatar varchar(128) NOT NULL
);

# 城市
CREATE TABLE city(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(64) NOT NULL
);

# 酒店
CREATE TABLE hotel(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    city_id int NOT NULL COMMENT '所属城市的编号',
    name varchar(64) NOT NULL COMMENT '酒店名称',
    img varchar(2048) NOT NULL DEFAULT '[]' COMMENT '酒店图片',
    address varchar(64) NOT NULL COMMENT '酒店地址',
    introduce varchar(128) NULL COMMENT '酒店介绍',
    score double NOT NULL DEFAULT 5.0 COMMENT '酒店评分'
);

# 酒店的房间
CREATE TABLE room(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    hotel_id int NOT NULL COMMENT '所属酒店的编号',
    name varchar(64) NOT NULL COMMENT '房间名称',
    img varchar(2048) NOT NULL DEFAULT '[]' COMMENT '房间图片',
    money double NOT NULL COMMENT '房间价格',
    tag varchar(64) NULL COMMENT '房间标签',
    information varchar(256) NULL COMMENT '基本信息',
    toiletries varchar(256) NULL COMMENT '洗浴用品',
    conveniences varchar(256) NULL COMMENT '便利设施',
    technology varchar(256) NULL COMMENT '媒体科技',
    bathroom varchar(256) NULL COMMENT '浴室',
    food varchar(256) NULL COMMENT '食品饮品',
    other varchar(256) NULL COMMENT '其他设施'
);

# 景点
CREATE TABLE attractions(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    city_id int NOT NULL COMMENT '所属城市的编号',
    name varchar(64) NOT NULL COMMENT '景点名称',
    img varchar(2048) NOT NULL DEFAULT '[]' COMMENT '景点图片',
    money double NOT NULL COMMENT '景点价格',
    introduce varchar(128) NULL COMMENT '景点介绍',
    score double NOT NULL DEFAULT 5.0 COMMENT '景点评分'
);

# 订单
CREATE TABLE orders(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id int NOT NULL COMMENT '关联的用户',
    room_id int NOT NULL COMMENT '关联的酒店房间',
    create_time datetime NOT NULL COMMENT '创建订单时间',
    money double NOT NULL
);

# show variables like 'char%';
# set character_set_client=utf8mb4;
# set character_set_connection=utf8mb4;
# set character_set_database=utf8mb4;
# set character_set_results=utf8mb4;
# set character_set_server=utf8mb4;

ALTER TABLE user CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE city CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE hotel CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE room CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE attractions CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE orders CONVERT TO CHARACTER SET utf8mb4;
