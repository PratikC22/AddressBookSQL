#UC1
create database address_book_service;
show databases;
use address_book_service;

#UC2
CREATE TABLE address_book(
    firstName VARCHAR(30) NOT NULL,
    lastName VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL,
    city VARCHAR(20) NOT NULL,
    state VARCHAR(20) NOT NULL,
    zip VARCHAR(10) NOT NULL,
    phoneNo VARCHAR(15) NOT NULL,
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY (firstName)
);

#UC3
INSERT INTO address_book(firstName,lastname,address,city,state,zip,phoneNo,email) VALUES
		('Michael','Scott','Kellum Court','Scranton','Pennsylvania','18503','0123456789','boss@dundermifflin.com'),
        ('Dwight','Schrute','Schrute farms','Scranton','Pennsylvania','18503','0123456789','assistant_regional_manager@dundermifflin.com'),
        ('Jim','Halpert','Calvert Street','Scranton','Pennsylvania','13831','0123456789','jim@dundermifflin.com'),
        ('Creed','Bratton','Benedict Canyon','California','Los Angeles','17451','0123456789','real_creed_bratton@creedthoughts.gov.org'),
        ('Garry','Scott','Kellum Court','Scranton','Pennsylvania','18503','0123456789','boss@dundermifflin.com');
SELECT * FROM address_book;

#UC4
UPDATE address_book 
SET phoneNo = '1234567890'
WHERE
    firstName = 'Creed';
    
#UC5
DELETE FROM `address_book` 
WHERE
    `firstName` = 'Garry';    
    
#UC6
SELECT * FROM address_book
WHERE city = 'Scranton';    

#UC7
SELECT * FROM address_book
WHERE city = 'Pennsylvania';

#UC8
SELECT firstName,city
FROM address_book
ORDER BY firstName;

#UC9
alter table address_book add type varchar(30) after lastName;
update  address_book set type='family' where firstName ='Michael';
update  address_book set type='friend' where firstName ='Dwight';
update  address_book set type='profession' where firstName ='Jim';
select * from address_book;

#UC10
select count(type) AS NumberOfaddress_book FROM address_book;

#UC11
update  address_book set type='family' where firstName ='Jim';
update  address_book set type='friend' where firstName ='Jim';