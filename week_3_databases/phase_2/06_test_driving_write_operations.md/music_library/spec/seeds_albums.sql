TRUNCATE TABLE artists RESTART IDENTITY; 
TRUNCATE TABLE albums RESTART IDENTITY;

INSERT INTO artists (name, genre) VALUES ('Linkin Park', 'Alternative Rock');

INSERT INTO albums (title, release_year, artist_id) VALUES ('Hybrid theory', '2000', 1);
INSERT INTO albums (title, release_year, artist_id) VALUES ('Meteora', '2003', 1);