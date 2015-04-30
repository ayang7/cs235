SELECT artistID, lname, group_concat(mediumInfo)
FROM (
  SELECT DISTINCT painterID as artistID, lname, medium || ' on ' || mediumOn AS mediumInfo 
  FROM Paintings JOIN Artists WHERE artistID = painterID
  )
GROUP BY lname;