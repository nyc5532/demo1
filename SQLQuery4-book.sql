create database linking;

use TraNDiepQuocTrung;

create table Book(
BookKeyISBN int primary key,
BookTitle varchar (50) not null,
BookPublisher varchar (50) not null,
BookPublisherYear char (20) not null
);

create table Author(
AuthorKey int primary key,
AuthorLastName varchar (50) not null,
AuthorFirstName varchar (50) not null
);

create table BookAuthor(
BookKeyISBN int foreign key references Book(BookKeyISBN),
AuthorKey int foreign key references Author(AuthorKey),
primary key (BookKeyISBN,AuthorKey)
);

insert into Book (BookKeyISBN,BookTitle,BookPublisher,BookPublisherYear) values ('0-07-222513-0','Java 2 Beginners Guide','Oracle Press','2002'); 
insert into Book (BookKeyISBN,BookTitle,BookPublisher,BookPublisherYear) values ('0674019999','After the Ice','Harvard','2003');
insert into Book (BookKeyISBN,BookTitle,BookPublisher,BookPublisherYear) values ('0-596-00867-8','Head First Object Oriented Analysis and Design','OReily','2007');


insert into Author (AuthorKey,AuthorLastName,AuthorFirstName) values ('HSCHLT','Schildt','Herbert');
insert into Author (AuthorKey,AuthorLastName,AuthorFirstName) values ('SMITHN','Mithen','Steven');
insert into Author (AuthorKey,AuthorLastName,AuthorFirstName) values ('BMCLAU','McLaughlin','Brett');
insert into Author (AuthorKey,AuthorLastName,AuthorFirstName) values ('GPOLLIC','Pollice','Gary');
insert into Author (AuthorKey,AuthorLastName,AuthorFirstName) values ('DWEST','West','David');

insert into BookAuthor(BookKeyISBN,AuthorKey) values ('0-07-222513-0','HSCHLT');
insert into BookAuthor(BookKeyISBN,AuthorKey) values ('0674019999-1','SMITHN');
insert into BookAuthor(BookKeyISBN,AuthorKey) values ('0-596-00867-8','BMCLAU');
insert into BookAuthor(BookKeyISBN,AuthorKey) values ('0-596-00867-8','GPOLLIC');
insert into BookAuthor(BookKeyISBN,AuthorKey) values ('0-596-00867-8','DWEST');


 alter table BookAuthor add constraint FK_Book foreign key(BookKeyISBN) references Book (BookKeyISBN)
 alter table BookAuthor add constraint FK_Author foreign key(AuthorKey) references Author (AuthorKey)
