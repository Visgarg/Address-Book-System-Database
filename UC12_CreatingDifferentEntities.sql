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

--getting count by type UC10
select type,count(*)
from AddressBook
group by type;

--adding same contact with different type in table UC11
select * from AddressBook;
insert into AddressBook
values ('Mahak','Singla','address','Hisar','Haryana',125001,9494949494,'abc.xyz','A','Family');

select * from addressBook;
select type,count(*)
from AddressBook
group by type;

--Creating different entities in the table and doing normalization UC12
--creating table typeofcontacts
create table TypesOfContacts
(
typeid int primary key ,
typename varchar(50) not null);
--inserting data into type of contacts
insert into Typesofcontacts
values
(1,'Family'),
(2,'Friends'),
(3,'Business');
select * from Typesofcontacts;
--altering address book to add contact id
alter table addressbook
add contactid int primary key identity(1,1);

select * from addressbook;
--creating table address book which will contain address book names
create table AddressBookNames
(addressBookId int primary key identity(1,1),
addressBookName varchar(50) not null );
--inserting data into address book names
insert into AddressBooknames
values
('A'),('B'),('C');

select * from AddressBookNames;
--creating table address book names mapper which will contain contact id and address book names id
create table addressbookMapper
(contactid int not null, addressbookid int not null);
--inserting data into address book mapper id
insert into addressbookMapper
values
(1,1),(2,1),(3,2);
--deleting redundant row from address book
delete from AddressBook
where firstName='Mahak' and contactid=4;

select * from AddressBook;
select a.firstname,a.phoneNumber,a.city,a.state,a.eMail,b.addressbookname
from AddressBook a
join addressbookMapper d
on a.contactid= d.contactId
join AddressBookNames b
on b.addressBookId= d.addressbookId
--creating type mapper table to map types names to contacts
create table typeMapper
(contactid int not null,typeid int not null);
--inserting data into type mapper
insert into typemapper
values (1,1),(2,2),(3,2),(2,3);

select a.firstname,tc.typename
from addressbook a
join typeMapper t
on t.contactid= a.contactid
join TypesOfContacts tc
on tc.typeid= t.typeid;
