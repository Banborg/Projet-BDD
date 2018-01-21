CREATE DATABASE BDDPROJECT;
USE BDDPROJECT;
DROP TABLE ratings;
create table Users (
	user_Id int auto_increment,
    age int,
	sex varchar(10),
    occupation varchar(30),
    zip_code int,
    primary key(user_Id)

);


LOAD DATA LOCAL INFILE 'C:/Perso/users.csv' INTO TABLE users
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(user_Id,age,sex,occupation,zip_code);



create table Friends (
	user1_Id int,
    user2_Id int,
    Primary key(user1_Id, user2_Id)
);

LOAD DATA LOCAL INFILE 'C:/Perso/friends.csv' INTO TABLE friends
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(user1_Id, user2_Id);



create table Movies (
	mov_Id int auto_increment,
    title  varchar(100),
    date int,
    Primary key(mov_Id)
);

LOAD DATA LOCAL INFILE 'C:/Perso/movies.csv' INTO TABLE movies
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(mov_Id, title, date);



create table Genres (
	genre_Id int auto_increment,
    name  varchar(100),
    Primary key(genre_Id)
);

LOAD DATA LOCAL INFILE 'C:/Perso/genres.csv' INTO TABLE genres
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(name, genre_Id);



create table mov_genre (
	mov_Id int,
    genre_Id int,
    Primary key(genre_Id, mov_Id),
    foreign key(genre_Id) references genres(genre_Id),
    foreign key(mov_Id) references movies(mov_Id)
);

LOAD DATA LOCAL INFILE 'C:/Perso/mov_genre.csv' INTO TABLE mov_genre
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(mov_Id, genre_Id);


create table ratings (
	user_Id int,
    mov_Id int,
    rating int,
    timestamp int,
    Primary key(user_Id, mov_Id),
    foreign key(user_Id) references users(user_Id),
    foreign key(mov_Id) references movies(mov_Id)
);

LOAD DATA LOCAL INFILE 'C:/Perso/ratings.csv' INTO TABLE ratings
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(user_Id,mov_Id, rating, timestamp);