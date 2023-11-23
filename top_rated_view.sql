-- Top Rated Movies View: Displays a list of top-rated movies based on IMDB ratings
CREATE VIEW top_rated_movies AS
SELECT
    title,
    release_year,
    IMDB_Rating
FROM
    movies
ORDER BY
    IMDB_Rating DESC
LIMIT 10;

-- Run the view
SELECT * FROM top_rated_movies