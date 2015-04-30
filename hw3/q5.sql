SELECT title FROM (
SELECT paperID, title, COUNT(*) as n_auths FROM Papers NATURAL JOIN Authorship GROUP BY paperID
)
WHERE n_auths = 1;