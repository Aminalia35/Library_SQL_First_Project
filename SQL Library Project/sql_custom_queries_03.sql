SELECT M.FullName, B.Title, BR.BorrowDate, BR.ReturnDate
FROM Borrowings BR
JOIN Members M ON BR.MemberID = M.MemberID
JOIN Books B ON BR.BookID = B.BookID;


SELECT M.FullName, B.Title
FROM Borrowings BR
JOIN Members M ON BR.MemberID = M.MemberID
JOIN Books B ON BR.BookID = B.BookID
WHERE BR.ReturnDate IS NULL;


SELECT A.Name, COUNT(*) AS TimesBorrowed
FROM Borrowings BR
JOIN Books B ON BR.BookID = B.BookID
JOIN Authors A ON B.AuthorID = A.AuthorID
GROUP BY A.Name
ORDER BY TimesBorrowed DESC;
