create table book(
BookKeyISBN varchar(50) not null primary key,
BookTitle varchar(50) ,
BookPublisher varchar(50),
BookYear varchar(50));
create table author(
authorkey varchar(50) not null primary key,
authorlastname varchar(50),
authorfirstname varchar(50));
create table authorbook (
BookKeyISBN varchar(50) foreign key references book(BookKeyISBN),
authorkey varchar(50) foreign key references author(authorkey));

INSERT INTO book (BookKeyISBN, BookTitle, BookPublisher, BookYear)
VALUES ('0-07-222513-0','Java 2 beginner guide',' oracle press','2002'),
        ('0674019999-1','after the ice',' harvard','2003'),
		('0-596-00867-8','Head First Object Oriented Analysis and design',' O"Reiley','2007');
INSERT INTO Author(authorkey, authorlastname, authorfirstname )
VALUES ('HSCHLT','Schildt','Herbert'),
       ('SMITHN','Mithen','Steven'),
	   ('BMCLAU','McLaughlin','Brett'),
	   ('GPOLLIC','Pollice','Gret'),
	   ('DWEST','West','David');
INSERT INTO AuthorBook (BookKeyISBN,authorkey)
VALUES ('0-07-222513-0','Schildt'),
('0674019999-1','SMITHN'),
('0-596-00867-8','BMCLAU'),
('0-596-00867-8','GPOLLIC'),
('0-596-00867-8','DWEST');