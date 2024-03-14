use [master]

create database [Library]

use [Library]

create table [dbo].[Books](
[Id] int primary key identity(1,1),
[Name] nvarchar(100) not null,
[Author] nvarchar(100) not null,
[Genre] nvarchar(100) not null,
[Price] decimal not null,
[PageCount] int not null,
[Published] date not null,
[CreatedAt] datetime not null default getdate(),
)

Insert into Books ([Name],[Author],[Genre],[Price],[Pagecount],[Published],[CreatedAt])
Values 
    ('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 12.99, 180, '1925-04-10', GETDATE()),
    ('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 10.50, 281, '1960-07-11', GETDATE()),
    ('1984', 'George Orwell', 'Science Fiction', 9.99, 328, '1949-06-08', GETDATE()),
    ('Animal Farm', 'George Orwell', 'Dystopian', 8.99, 224, '1945-08-17', GETDATE()),
    ('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 14.99, 320, '1937-09-21', GETDATE());




	--select * from Books

--1) Ordering by price

	SELECT * FROM Books
ORDER BY Price DESC;

--2) Select top3 Lowest 

 SELECT TOP 3 * FROM [Books] ORDER BY Price;

 --3) Select by the Author

 Select * From [Books] Where [Author] ='George Orwell'; 

 --4)Update the table so the price will increase by 5% to the Books of Author George Orwell
 
 Update [Books] set [Price]=[Price]*1.05 where [Author]='George Orwell';

 --5) Delete the Books whose price is higher than 30Azn

Delete from [Books] where Price>10






