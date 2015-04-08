PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE GoT(
  charID INTEGER,
  lname TEXT,
  fname TEXT,
  status TEXT,
  PRIMARY KEY (charID)
);
INSERT INTO "GoT" VALUES(0,'Stark','Robb','DECEASED');
INSERT INTO "GoT" VALUES(1,'Stark','Catelyn','DECEASED');
INSERT INTO "GoT" VALUES(2,' Stark',' Nedd',' DECEASED');
INSERT INTO "GoT" VALUES(3,' Stark',' Bran',' ALIVE');
INSERT INTO "GoT" VALUES(4,' Stark',' Rickon',' ALIVE');
INSERT INTO "GoT" VALUES(5,' Stark',' Sansa',' ALIVE');
INSERT INTO "GoT" VALUES(6,' Stark',' Arya',' ALIVE');
INSERT INTO "GoT" VALUES(7,' Lannister',' Tywin',' DECEASED');
INSERT INTO "GoT" VALUES(8,' Lannister',' Jaime',' ALIVE');
INSERT INTO "GoT" VALUES(9,' Lannister',' Tyrion',' ALIVE');
INSERT INTO "GoT" VALUES(10,' Baratheon',' Cersei',' ALIVE');
INSERT INTO "GoT" VALUES(11,' Baratheon',' Robert',' DECEASED');
INSERT INTO "GoT" VALUES(12,' Baratheon',' Stannis',' ALIVE');
INSERT INTO "GoT" VALUES(13,' Baratheon',' Renly',' DECEASED');
INSERT INTO "GoT" VALUES(14,' Baratheon',' Joffrey',' DECEASED');
INSERT INTO "GoT" VALUES(15,' Baratheon',' Tommen',' ALIVE');
INSERT INTO "GoT" VALUES(16,' Baratheon',' Myrcella',' ALIVE');
INSERT INTO "GoT" VALUES(17,' Targaryen',' Viserys',' DECEASED');
INSERT INTO "GoT" VALUES(18,' Targaryen',' Daenerys',' ALIVE');
CREATE TABLE Houses(
  houseID INTEGER,
  name TEXT,
  seal TEXT,
  PRIMARY KEY (houseID)
);
INSERT INTO "Houses" VALUES(0,' Stark',' Wolf');
INSERT INTO "Houses" VALUES(1,' Lannister',' Lion');
INSERT INTO "Houses" VALUES(2,' Baratheon',' Stag');
INSERT INTO "Houses" VALUES(3,' Targaryen',' Dragon');
INSERT INTO "Houses" VALUES(4,' Tully',' Trout');
CREATE TABLE Seats(
  seatID INTEGER,
  name TEXT,
  domain TEXT,
  PRIMARY KEY (seatID)
);
INSERT INTO "Seats" VALUES(0,' Winterfell',' North');
INSERT INTO "Seats" VALUES(1,' Casterly Rock',' Westerlands');
INSERT INTO "Seats" VALUES(2,' Storm''s End',' Stormlands');
INSERT INTO "Seats" VALUES(3,' Dragonstone',' Dragonstone');
INSERT INTO "Seats" VALUES(4,' Riverrun',' Riverlands');
INSERT INTO "Seats" VALUES(5,' King''s Landing',' Crownlands');
CREATE TABLE Allegiance(
  charID INTEGER,
  houseID INTEGER,
  origin TEXT,
  PRIMARY KEY (charID, houseID),
  FOREIGN KEY (charID) REFERENCES GoT (charID),
  FOREIGN KEY (houseID) REFERENCES Houses (houseID)
);
INSERT INTO "Allegiance" VALUES(0,0,' BIRTH');
INSERT INTO "Allegiance" VALUES(1,0,' MARRIAGE');
INSERT INTO "Allegiance" VALUES(2,0,' BIRTH');
INSERT INTO "Allegiance" VALUES(3,0,' BIRTH');
INSERT INTO "Allegiance" VALUES(4,0,' BIRTH');
INSERT INTO "Allegiance" VALUES(5,0,' BIRTH');
INSERT INTO "Allegiance" VALUES(6,0,' BIRTH');
INSERT INTO "Allegiance" VALUES(7,1,' BIRTH');
INSERT INTO "Allegiance" VALUES(8,1,' BIRTH');
INSERT INTO "Allegiance" VALUES(9,1,' BIRTH');
INSERT INTO "Allegiance" VALUES(10,2,' MARRIAGE');
INSERT INTO "Allegiance" VALUES(11,2,' BIRTH');
INSERT INTO "Allegiance" VALUES(12,2,' BIRTH');
INSERT INTO "Allegiance" VALUES(13,2,' BIRTH');
INSERT INTO "Allegiance" VALUES(14,2,' BIRTH');
INSERT INTO "Allegiance" VALUES(15,2,' BIRTH');
INSERT INTO "Allegiance" VALUES(16,2,' BIRTH');
INSERT INTO "Allegiance" VALUES(17,3,' BIRTH');
INSERT INTO "Allegiance" VALUES(18,3,' BIRTH');
INSERT INTO "Allegiance" VALUES(1,4,' BIRTH');
INSERT INTO "Allegiance" VALUES(10,1,' BIRTH');
CREATE TABLE HouseSeat(
  houseID INTEGER,
  seatID INTEGER,
  ownership TEXT,
  PRIMARY KEY (houseID, seatID),
  FOREIGN KEY (houseID) REFERENCES Houses (houseID),
  FOREIGN KEY (seatID) REFERENCES Seats (seatID)
);
INSERT INTO "HouseSeat" VALUES(0,0,' ANCESTRAL');
INSERT INTO "HouseSeat" VALUES(1,1,' ANCESTRAL');
INSERT INTO "HouseSeat" VALUES(2,2,' ANCESTRAL');
INSERT INTO "HouseSeat" VALUES(3,3,' ANCESTRAL');
INSERT INTO "HouseSeat" VALUES(4,4,' ANCESTRAL');
INSERT INTO "HouseSeat" VALUES(2,3,' OCCUPATIONAL');
INSERT INTO "HouseSeat" VALUES(2,5,' ROYAL');
COMMIT;
