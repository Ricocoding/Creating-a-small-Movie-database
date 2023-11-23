# Movie Database

## Overview
In this project we will build a PostgreSQL movie database, designed to store information about movies, genres, directors, and actors, with some views to query and analyze the data.

## Dataset details
### genres
- genre_id - unique identifier to the particular genre.
- genre_name (string) : respective genre.

### directors
- director_id - unique identifier to the particular director.
- director_name (string) - respective director.
- director_country (string) - director's country.

### actors
- actor_id - unique identifier to the particular actor.
- actor_name (string) - respective actor.
- actor_country (string) - actor's country.

### movies
- movie_id - unique identifier to the particular movie.
- title (string) - film title
- release_year (string) – in YYYY format.
- genre_id - foreign key, referring to genres table.
- director_id - foreign key, referring to directors table.
- actor_id - foreign key, referring to actors table.
- description - film descriptions.
- IMDB_Rating - rating from IMDB, ranging from 0.0 to 10.0.

## Entity-Relationship (ER) diagram
<img width="451" alt="image" src="https://github.com/Ricocoding/Movie_Project/assets/65225231/dfbc244e-58fb-44f3-9686-afa0a22d6eda">


## Create the table
1. Execute the _Create_Table.sql_ script to create the necessary tables, and run the _Insert_Data.sql_ script accordingly to populate the tables with sample data.
2. Utilize various views to query and analyze the movie data.

## Some SQL Queries to play with the data
### Actor Filmography View
- Displays a list of movies featuring a specific actor.
### Movie Details View
- Provides detailed information about each movie, including genre, director, actor, description, and IMDB rating.
### Top Rated Movies View
- Shows a list of top-rated movies based on IMDB ratings.
### Movies Search by Keyword View
- Allows searching for movies based on a keyword in the description.
### Movies with Directors and Actors from Different Countries View
- Highlights movies where the director and actor hail from different countries.
### Movies with the Same Director or Actor View
- Identifies movies with the same director or actor.

### Example
Who plays in more than one film in the database?
```SQL
CREATE VIEW movies_same_director_or_actor AS
SELECT
    m.movie_id,
    m.title,
    m.release_year,
    g.genre_name,
    d.director_name,
    a.actor_name,
    m.description,
    m.IMDB_Rating
FROM
    movies m
JOIN directors d ON m.director_id = d.director_id
JOIN actors a ON m.actor_id = a.actor_id
JOIN genres g ON m.genre_id = g.genre_id
WHERE
    m.director_id = ANY (SELECT director_id FROM movies GROUP BY director_id HAVING COUNT(*) > 1)
    OR m.actor_id = ANY (SELECT actor_id FROM movies GROUP BY actor_id HAVING COUNT(*) > 1);
```
To see the results:
```SQL
-- Run the view
SELECT * FROM movies_same_director_or_actor;
```

## Update the database
You can always update the data in the database by simply run the following code:
```SQL
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```
For example, let's say you wanna change the Samuel Jackson to James Dean, just execute:
```SQL
UPDATE actors
SET actor_name = 'James Dean', actor_country = 'USA'
WHERE actor_id = 2
```

Enjoy!!"# Movie_Project" 
"# Movie_Project" 
"# Movie_Database" 
