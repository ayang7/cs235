SELECT title, lname, year - birthYear AS artistAge FROM (                                                      ..Artists                                                                                                        ..NATURAL JOIN
(SELECT title, year, painterID AS artistID FROM Paintings 
UNION 
Select title, year, sculptorID AS artistID FROM Sculptures))
ORDER BY artistAge ASC;