

create sequence seq_vip_id;

create table Vip_users(
    Item_id number primary key not null,  -- ��Ʒ���      �ǿ�  ����
    Item_name varchar2(50) not null,      -- ��Ʒ����    �ǿ�  
    Item_price number(9,2) not null,      -- ��Ʒ�۸�     �ǿ�  
    create_time date not null,        -- ���ʱ��      �ǿ�  
    status number(1) not null             --  ��Ʒ״̬    1 �ǿ�  0-�ϼ� 1-�¼�
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
