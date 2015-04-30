SELECT title, MAX(n_auths) FROM (
  SELECT title, COUNT(*) as n_auths FROM (
    SELECT DISTINCT title, authID FROM PAPERS NATURAL JOIN Authorship
  )
  GROUP BY title
);