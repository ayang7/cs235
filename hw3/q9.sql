SELECT authID, fname, lname, SUM(collaborators) - COUNT(*) FROM(
  SELECT * FROM Authors NATURAL JOIN Authorship NATURAL JOIN (
    SELECT paperID, title, COUNT(*) as collaborators FROM (
      SELECT * FROM Authors NATURAL JOIN Authorship NATURAL JOIN Papers)
    GROUP BY title))
GROUP BY authID;
