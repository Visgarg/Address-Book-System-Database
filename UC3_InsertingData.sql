--Welcome to address book service Data Base
--creating database UC1
Create DataBase AddressBookServiceDataBase

use AddressBookServiceDataBase;
--creating table UC2
Create Table AddressBook
(
firstName varchar(30) not null,
lastName varchar(30) not null,
address varchar(150) not null,
city varchar(50) not null,
state varchar(50) not null,
zip  int not null,
phoneNumber bigint not null,
eMail varchar(100) not null
);

select * from AddressBook;

--Inserting Data
insert into AddressBook
values('Vishal','Garg','Barwala','Hisar','Haryana',125121,8570934858,'vishal.garg'),
('Mahak','Singla','Hisar','city','Haryana',125001,9494949494,'mahak.singla'),
('abc','xyz','pqr','vis','gar',123456,9419494949,'abc.xyz');

select * from AddressBook;