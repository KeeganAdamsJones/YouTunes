/*
    db_init.sql
    Keegan Jones
    10/25/2021
    YouTunes MySQL DB initialization to create and populate
*/

-- drop test user if exists 
DROP USER IF EXISTS 'youtunes_user'@'localhost';


-- create youtunes_user and grant them all privileges to the youtunes_user database 
CREATE USER 'youtunes_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'MySQL5IsGreat!';


-- grant all privileges to the youtunes database to user youtunes_user on localhost 
GRANT ALL PRIVILEGES ON youtunes.* TO'youtunes_user'@'localhost';


-- Drop the foreign key
ALTER TABLE album DROP FOREIGN KEY fk_artist;


-- drop tables if they are present
DROP TABLE IF EXISTS artist; 
DROP TABLE IF EXISTS album; 


-- create artist table 
CREATE TABLE artist (
	artist_id 		INT 			NOT NULL		AUTO_INCREMENT,
	first_name		VARCHAR(75)		NOT NULL,
	last_name		VARCHAR(75)		NOT NULL,
	PRIMARY KEY(artist_id)
);

-- create song table 
CREATE TABLE song (
	album_id		INT 			NOT NULL 		AUTO_INCREMENT,
	title		Varchar(150)	Not Null, 
	artist_id		INT				NOT NULL,
	genre			VARCHAR(75)		NOT NULL,
	price			DECIMAL(5, 2)	NOT NULL,
	img_url			VARCHAR(150)	NOT NULL,
	
	PRIMARY KEY(album_id),
	CONSTRAINT fk_artist
	FOREIGN KEY(artist_id)
		REFERENCES artist(artist_id)
); 


-- insert artist statements 
INSERT INTO artist(first_name, last_name)
	VALUES('Pearl', 'Jam');

INSERT INTO artist(first_name, last_name)
	VALUES('No', 'Doubt');
	
INSERT INTO artist(first_name, last_name)
	VALUES('ZZ', 'Top');
	
INSERT INTO artist(first_name, last_name)
	VALUES('Garth', 'Brooks');
	
INSERT INTO artist(first_name, last_name)
	VALUES('Amy', 'Grant');
	
	
-- insert album statements
INSERT INTO album(title, artist_id, genre, price, img_url, )
	VALUES('Ten', (SELECT artist_id FROM artist WHERE last_name = 'Jam'), 'Rock', 39.95, '');
	
INSERT INTO album(title, artist_id, genre, price, img_url, )
	VALUES('Tragic Kingdom', (SELECT artist_id FROM artist WHERE last_name = 'Doubt'), 'Pop', 35.95, '');
	
INSERT INTO album(title, artist_id, genre, price, img_url, )
	VALUES('Eliminator', (SELECT artist_id FROM artist WHERE last_name = 'Top'), 'Blues', 29.95, '');
	
INSERT INTO album(title, artist_id, genre, price, img_url, )
	VALUES('No Fences', (SELECT artist_id FROM artist WHERE last_name = 'Brooks'), 'Country', 39.95, '');
	
INSERT INTO album(title, artist_id, genre, price, img_url, )
	VALUES('Home For Christmas', (SELECT artist_id FROM artist WHERE last_name = 'Grant'), 'Christian', 25.95, '');
	
© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
