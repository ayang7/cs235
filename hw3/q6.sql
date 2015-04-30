SELECT * FROM (
 SELECT title, COUNT(*) as count FROM (
  SELECT DISTINCT title, name FROM Papers NATURAL JOIN Authorship NATURAL JOIN Inst
  )
 GROUP BY title
)
WHERE count > 1;