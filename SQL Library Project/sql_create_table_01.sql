CREATE TABLE Authors (
    authorID INT PRIMARY KEY IDENTITY,
    name NVARCHAR(100) NOT NULL,
    country NVARCHAR(50)
);

CREATE TABLE Books (
    bookID INT PRIMARY KEY IDENTITY,
    title NVARCHAR(200) NOT NULL,
    genre NVARCHAR(50),
    authorID INT FOREIGN KEY REFERENCES Authors(authorID)
);

CREATE TABLE Members (
    memberID INT PRIMARY KEY IDENTITY,
    fullName NVARCHAR(100) NOT NULL,
    joinDate DATE DEFAULT GETDATE()
);

CREATE TABLE Borrowings (
    borrowID INT PRIMARY KEY IDENTITY,
    bookID INT FOREIGN KEY REFERENCES Books(bookID),
    memberID INT FOREIGN KEY REFERENCES Members(memberID),
    borrowDate DATE DEFAULT GETDATE(),
    returnDate DATE NULL
);
