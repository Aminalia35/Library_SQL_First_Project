INSERT INTO Authors(name, country) VALUES
('Frank Herbert', 'USA'),
('J.K. Rowling', 'UK'),
('Haruki Murakami', 'Japan');

INSERT INTO Books (title, genre, authorID) VALUES
('Dune', 'Science Fiction', 1),
('Harry Potter and the Sorcerer''s Stone', 'Fantasy', 2),
('Kafka on the Shore', 'Fiction', 3);

INSERT INTO Members (fullName) VALUES
('Alice Tremblay'),
('Bob Gagnon'),
('Charlie Roy');

INSERT INTO Borrowings (bookID, memberID, borrowDate) VALUES
(1, 1, '2025-11-01'),
(2, 2, '2025-11-05');

