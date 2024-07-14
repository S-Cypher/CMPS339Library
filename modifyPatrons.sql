--Entering a new patron
INSERT INTO Patrons (FirstName, LastName, DateOfBirth, Email)
VALUES ('Keira', 'Stewart', '2004-05-25', 'keira.stewart@example.com');

--Delete a patron
DELETE FROM Patrons WHERE FirstName = 'Keira';

--Updating first name, last name, or email
UPDATE Patrons SET LastName = 'Meyers'
WHERE Id = 2;

UPDATE Patrons SET FirstName = 'Lily'
WHERE Id = 2;

UPDATE Patrons SET Email = 'lily.meyers@example.com'
WHERE Id = 2;

--Retrieve specifc patron's information
SELECT * FROM Patrons 
WHERE Id = 2;

--Get all patrons
SELECT * FROM Patrons;

-- Delete all patrons?
DELETE FROM Patrons;

