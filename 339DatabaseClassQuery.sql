CREATE TABLE Genres (
	Id INT PRIMARY KEY IDENTITY,
	GenreName VARCHAR(120) NOT NULL
);

CREATE TABLE Patrons (
	Id INT PRIMARY KEY IDENTITY,
	FirstName VARCHAR(120) NOT NULL,
	LastName VARCHAR(120) NOT NULL,
	DateOfBirth DATE NOT NULL,
	Email VARCHAR(120) NOT NULL,
);

CREATE TABLE Authors (
	Id INT PRIMARY KEY IDENTITY,
	FirstName VARCHAR(40) NOT NULL,
	LastName VARCHAR(40) NOT NULL,
);

CREATE TABLE Books (
	Id INT PRIMARY KEY IDENTITY,
	Title VARCHAR(120) NOT NULL,
	AuthorId INT FOREIGN KEY REFERENCES Authors NOT NULL,
	PublishingYear INT NOT NULL,
	ISBN BIGINT UNIQUE NOT NULL,
	AvailableCopies int NOT NULL,
	GenreId INT FOREIGN KEY REFERENCES Genres NOT NULL
);

CREATE TABLE Loans (
	Id INT PRIMARY KEY IDENTITY,
	BookId INT FOREIGN KEY REFERENCES Books NOT NULL,
	PatronId INT FOREIGN KEY REFERENCES Patrons NOT NULL,
	CheckoutDate DATE NOT NULL,
	DueDate DATE NOT NULL,
	ReturnDate DATE NOT NULL
);

INSERT INTO Patrons (FirstName, LastName, DateOfBirth, Email)
VALUES 
('Patricia', 'White', '1995-08-30', 'patricia.white@example.com'),
('Tina', 'Robinson', '1990-04-23', 'tina.robinson@example.com'),
('Olivia','Young','2004-01-30','olivia.young@example.com'),
('Jasmine', 'Parker', '2006-05-10', 'jasmine.parker@example.com'),
('Gabriel', 'Martin', '2007-07-31', 'gabriel.martin@example.com'),
('Ethan', 'Jackson', '2005-11-26', 'ethan.jackson@example.com'),
('Frank', 'Miller', '1980-12-22', 'frank.miller@example.com'),
('Henry', 'Wilson', '1996-04-18', 'henry.wilson@example.com'),
('Bella', 'Evans','2002-06-22', 'bella.evans@example.com'),
('Aiden', 'Carter', '2001-01-15', 'aiden.carter@example.com');

INSERT INTO Genres (GenreName)
VALUES ('Mystery'),
('Sci-Fi'),
('Fantasy'),
('Romance'),
('Horror'),
('Historical'),
('Thriller'),
('Biography'),
('Adventure'),
('Graphic Novel'),
('Poetry'); 

INSERT INTO Genres (GenreName)
Values ('Contemporary'),
('Dystopian'),
('Memoir');

INSERT INTO Patrons (FirstName, LastName, DateOfBirth, Email)
VALUES ('Keira', 'Stewart', '2004-05-25', 'keira.stewart@example.com');

INSERT INTO Authors (FirstName, LastName)
VALUES 
('Cohen', 'Schlicher'),
('Keira', 'Stewart'),
('Aaron', 'Madison'),
('Dan', 'Smith'),
('Patrick', 'McDowell'),
('Ghassan', 'Alkadi'),
('Samuel', 'Echols'),
('Gabriel', 'Bradford'),
('Luke', 'White'),
('Peyton', 'Perry');

INSERT INTO Books
(Title, AuthorId, PublishingYear, ISBN, AvailableCopies, GenreId)
VALUES 
	('How to Code: Not For Beginners', 7, 2004, 123456789101112, 2, 1), 
	('Dad Jokes for Software Developers', 8, 2015, 234567891011345, 1, 2),
	('SQL 101', 6, 2024, 345678910111213, 1, 3),
	('How to Get a Girlfriend', 5, 2022, 134567890134567, 0, 1),
	('Samuel Echols: An Autobiography', 7, 2023, 134567892340123, 3, 2),
	('How to Get Through College', 1, 2024, 15678901234567, 3, 3);

INSERT INTO Books 
	(Title, AuthorId, PublishingYear, ISBN, AvailableCopies, GenreId)
VALUES
	('Cool Old Book', 2, 1990, 109876543212345, 0, 1);

INSERT INTO Authors 
(FirstName, LastName)
VALUES
('Generic', 'Name');

INSERT INTO Loans
	(BookId, PatronId, CheckoutDate, DueDate, ReturnDate)
VALUES
	(1, 1, '2024-08-18', '2024-08-30', '2024-08-28'),
	(2, 2, '2023-11-01', '2023-11-10', '2023-11-11');

UPDATE Genres SET GenreName = 'Historical' WHERE GenreName = 'Historical Fiction';

UPDATE Books
SET Title = 'Uncool Old Book' 
WHERE Title = 'Cool Old Book';

UPDATE Authors
SET FirstName = 'Cone' 
WHERE FirstName = 'Cohen';

UPDATE Genres SET GenreName = 'Historical' WHERE GenreName = 'Historical Fiction';


SELECT * FROM Authors;

SELECT * FROM Books;

SELECT * FROM Genres;

SELECT * FROM Patrons;

SELECT * FROM Loans;