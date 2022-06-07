create table pharmacy(
   pharmaId int primary key,
   name varchar(20) not null,
   address varchar(100) not null,
   phone varchar(20) not null 
)

insert into pharmacy values (1,'배승원','우만동','01012345678')
insert into pharmacy values (2,'백경성','인창동','01012345678')
insert into pharmacy values (3,'이정호','일산동','01012345678')
insert into pharmacy values (4,'조수아','매탄동','01012345678')

create table drug(
   drugId varchar(500) primary key,
   drugName varchar(500) not null,
   dosage varchar(500) not null,
   company varchar(500) not null,
   pharmaId int not null,
   foreign key (pharmaId) references pharmacy(pharmaId)
)
create table drugTest(
   drugId varchar(500) primary key,
   drugName varchar(500) not null,
   dosage varchar(1000) not null,
   company varchar(500) not null,
   pharmaId int not null,
   foreign key (pharmaId) references pharmacy(pharmaId)
)
drop table drugTest
insert into drug values ('1','타이레놀','ㅇ','ㅂ','아주대',1)
insert into drug values ('2','감기','ㅇ','ㅂ','경희대',1)
insert into drug values ('3','두통','ㅇ','ㅂ','성균관대',2)

create table inventory( 
   invenId int primary key,
   quantity int not null,
   drugId varchar(500) not null,
   foreign key (drugId) references drug(drugId)
)

create table users( 
   id varchar(20) primary key,
   pw varchar(20) not null,
   name varchar(20) not null,
   phone varchar(20) not null
)

create table cart(
   cartId int primary key,
   id varchar(20) not null,
   drugId varchar(500) not null,
   foreign key (id) references users(id),
   foreign key (drugId) references drug(drugId)
)
