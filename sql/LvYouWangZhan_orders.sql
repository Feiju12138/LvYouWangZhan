create table orders
(
    id          int auto_increment
        primary key,
    user_id     int      not null comment '关联的用户',
    room_id     int      not null comment '关联的酒店房间',
    create_time datetime not null comment '创建订单时间',
    money       double   not null
);

INSERT INTO LvYouWangZhan.orders (id, user_id, room_id, create_time, money) VALUES (1, 5, 3, '2021-12-03 06:03:10', 999);
INSERT INTO LvYouWangZhan.orders (id, user_id, room_id, create_time, money) VALUES (2, 5, 3, '2021-12-03 06:03:10', 999);
INSERT INTO LvYouWangZhan.orders (id, user_id, room_id, create_time, money) VALUES (3, 5, 4, '2021-12-03 06:03:10', 999);
INSERT INTO LvYouWangZhan.orders (id, user_id, room_id, create_time, money) VALUES (4, 5, 4, '2021-12-03 06:03:10', 999);
INSERT INTO LvYouWangZhan.orders (id, user_id, room_id, create_time, money) VALUES (5, 5, 5, '2021-12-03 06:03:10', 999);
INSERT INTO LvYouWangZhan.orders (id, user_id, room_id, create_time, money) VALUES (6, 5, 5, '2021-12-03 06:03:10', 999);
INSERT INTO LvYouWangZhan.orders (id, user_id, room_id, create_time, money) VALUES (7, 5, 6, '2021-12-03 06:03:10', 999);
INSERT INTO LvYouWangZhan.orders (id, user_id, room_id, create_time, money) VALUES (8, 5, 6, '2021-12-03 06:03:10', 999);
INSERT INTO LvYouWangZhan.orders (id, user_id, room_id, create_time, money) VALUES (9, 5, 7, '2021-12-03 06:03:10', 999);
INSERT INTO LvYouWangZhan.orders (id, user_id, room_id, create_time, money) VALUES (10, 5, 8, '2021-12-03 16:17:08', 888.8);