DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans (
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan VARCHAR(15) NOT NULL,
    plan_value DECIMAL(3 , 2 ) NOT NULL
)  ENGINE=INNODB;

CREATE TABLE artist (
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(15) NOT NULL
)  ENGINE=INNODB;

CREATE TABLE `user` (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(15) NOT NULL,
    age INT NOT NULL,
    date_of_signature DATE NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id)
        REFERENCES plans (plan_id)
)  ENGINE=INNODB;

CREATE TABLE followers (
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id , artist_id),
    FOREIGN KEY (user_id)
        REFERENCES `user` (user_id),
    FOREIGN KEY (artist_id)
        REFERENCES artist (artist_id)
)  ENGINE=INNODB;

CREATE TABLE album (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(40) NOT NULL,
    artist_id INT NOT NULL,
    release_year YEAR NOT NULL,
    FOREIGN KEY (artist_id)
        REFERENCES artist (artist_id)
)  ENGINE=INNODB;

CREATE TABLE songs (
    songs_id INT PRIMARY KEY AUTO_INCREMENT,
    song_name VARCHAR(50) NOT NULL,
    artist_id INT NOT NULL,
    album_id INT NOT NULL,
    `length` INT NOT NULL,
    FOREIGN KEY (artist_id)
        REFERENCES artist (artist_id),
    FOREIGN KEY (album_id)
        REFERENCES album (album_id)
)  ENGINE=INNODB;

CREATE TABLE music_history (
    music_history_id INT PRIMARY KEY AUTO_INCREMENT,
    songs_id INT NULL,
    `date` DATETIME,
    user_id INT NOT NULL,
    FOREIGN KEY (songs_id)
        REFERENCES songs (songs_id),
    FOREIGN KEY (user_id)
        REFERENCES `user` (user_id)
)  ENGINE=INNODB;
