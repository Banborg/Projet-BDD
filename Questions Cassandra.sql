use bddproject;

-- Q1
select *, count(ratings.rating), avg(ratings.rating) from movies join ratings on movies.mov_id=ratings.mov_id group by movies.mov_Id;

-- Q2
select movies.title, genres.name from movies join mov_genre on movies.mov_Id=mov_genre.mov_Id join genres on mov_genre.genre_Id=genres.genre_Id;

-- Q3
select genres.name, count(mov_genre.mov_Id) from genres join mov_genre on genres.genre_Id=mov_genre.genre_Id group by genres.name;

-- Q4
select movies.title, ratings.rating, ratings.user_Id from movies join ratings on movies.mov_Id=ratings.mov_Id where movies.mov_Id=123;

-- Q5
select ratings.user_Id, movies.title, ratings.rating from movies join ratings on movies.mov_Id=ratings.mov_Id where ratings.user_Id=112;