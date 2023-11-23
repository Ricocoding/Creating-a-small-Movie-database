-- Actor Filmography View: Shows a list of movies featuring a specific actor
CREATE VIEW actor_filmography AS
SELECT
    a.actor_name,  -- Actor's name
    m.title,       -- Movie title
    m.release_year  -- Year of release
FROM
    actors a
JOIN movies m ON a.actor_id = m.actor_id
ORDER BY actor_name;
-- Run the view
SELECT * FROM actor_filmography