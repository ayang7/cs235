SELECT authID, fname, lname, COUNT(*) as authorships FROM(
  SELECT * FROM authors NATURAL JOIN authorship
)
GROUP BY lname
ORDER BY lname, fname ASC;