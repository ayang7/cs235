SELECT lname, title FROM Paintings JOIN Artists WHERE painterID = artistID AND location isNULL
UNION
SELECT lname, title FROM Sculptures JOIN Artists WHERE sculptorID = artistID AND location isNULL;