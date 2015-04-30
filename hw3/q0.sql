SELECT title, lname, height_mm / 2.54 as height_in, width_mm / 2.54 as width_in
FROM Paintings JOIN Artists WHERE Paintings.painterID = Artists.artistID
ORDER BY height_mm * width_mm DESC;