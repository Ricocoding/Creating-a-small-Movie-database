-- Create a view to check movies with directors and actors from different countries
CREATE VIEW movies_director_actor_diff_countries AS
SELECT
    m.movie_id,
    m.title,
    m.release_year,
    g.genre_name,
    d.director_name,
    d.director_country AS director_country,
    a.actor_name,
    a.actor_country AS actor_country,
    m.description,
    m.IMDB_Rating
FROM
    movies m
JOIN directors d ON m.director_id = d.director_id
JOIN actors a ON m.actor_id = a.actor_id
JOIN genres g ON m.genre_id = g.genre_id
WHERE
    d.director_country <> a.actor_country;
	
-- Run the view
SELECT * FROM movies_director_actor_diff_countries;
