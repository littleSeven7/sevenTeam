

create sequence seq_vip_id;

create table Vip_users(
    Item_id number primary key not null,  -- 商品编号      非空  主键
    Item_name varchar2(50) not null,      -- 商品名称    非空  
    Item_price number(9,2) not null,      -- 商品价格     非空  
    create_time date not null,        -- 添加时间      非空  
    status number(1) not null             --  商品状态    1 非空  0-上架 1-下架
);

--

insert into Vip_users(Item_id,Item_name,Item_price,create_time,status)
       values(seq_vip_id.nextval,'Iphone5s',4280,to_date('2015-04-08','yyyy-mm-dd'),0);
insert into Vip_users(Item_id,Item_name,Item_price,create_time,status)
       values(seq_vip_id.nextval,'Iphone4s',2380,to_date('2015-04-09','yyyy-mm-dd'),0);
insert into Vip_users(Item_id,Item_name,Item_price,create_time,status)
       values(seq_vip_id.nextval,'Iphone4',1500,to_date('2015-04-09','yyyy-mm-dd'),0);

insert into Vip_users(Item_id,Item_name,Item_price,create_time,status)values(seq_vip_id.nextval,'"++"','"++"',to_date('"++"','yyyy-mm-dd'),'"++"');
select Item_id,Item_name,Item_price,create_time,status from Vip_users;

select Item_id,Item_name,Item_price,create_time,status from Vip_users where status = 0;
select Item_id,Item_name,Item_price,create_time,status from Vip_users where status = 1;

select * from Vip_users;
