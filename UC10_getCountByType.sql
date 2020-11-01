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

--Inserting Data UC3
insert into AddressBook
values('Vishal','Garg','Barwala','Hisar','Haryana',125121,8570934858,'vishal.garg'),
('Mahak','Singla','Hisar','city','Haryana',125001,9494949494,'mahak.singla'),
('abc','xyz','pqr','vis','gar',123456,9419494949,'abc.xyz');

select * from AddressBook;

--Updating Data UC4
update AddressBook
set city='Bangalore', state='Karnataka' 
where firstName='abc' and lastName='xyz';

select * from AddressBook;

--Deleting data UC5
delete from AddressBook
where firstName= 'Mahak' and lastName='Singla';

select * from AddressBook;

--Retrieving Data UC6
select * from AddressBook
where city='Hisar';
select firstName, lastName
from addressbook
where state='Karnataka';

--getting the count by city and state UC7
Insert into addressBook
values
('Mahak','Singla','address','Hisar','Haryana',125001,9494949494,'mahak.singla');

--getting the  person name sorted alphabetically for given city UC8
select *
from addressbook
where city='Hisar'
order by firstname, lastname;

select count(*)
from addressBook
where city='Hisar' and state='Haryana';

--adding address book name and type UC9
use AddressBookServiceDataBase
alter table addressBook add addressBookName varchar(50), type varchar(50) ;

update addressBook
set addressBookName='A', type='Family'
where firstName= 'Vishal';

update addressBook
set addressBookName='B' ,type='Friends'
where firstName='abc';
update addressBook
set addressBookName='A', type='Friends'
where firstName='Mahak';

select * from addressbook;

--getting count by type
select type,count(*)
from AddressBook
group by type;

