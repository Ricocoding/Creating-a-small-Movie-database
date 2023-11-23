-- Create a view for searching films based on a keyword in the description
CREATE VIEW movies_search_by_keyword AS
SELECT
    movie_id,
    title,
    release_year,
    genre_id,
    director_id,
    actor_id,
    description,
    IMDB_Rating
FROM
    movies;

-- Run the view
SELECT *
FROM movies_search_by_keyword
WHERE description ILIKE '%po%' OR title ILIKE '%po%';


