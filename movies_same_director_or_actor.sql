-- Create a view to check movies with the same director or actor
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

-- Run the view
SELECT * FROM movies_same_director_or_actor;