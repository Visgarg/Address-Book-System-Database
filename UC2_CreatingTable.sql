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