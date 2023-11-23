-- Movie Details View: Displays detailed information about each movie
CREATE VIEW movie_details AS
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
JOIN genres g ON m.genre_id = g.genre_id
JOIN directors d ON m.director_id = d.director_id
JOIN actors a ON m.actor_id = a.actor_id;
-- Run the view
SELECT * FROM movie_details