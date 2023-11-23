-- Create the genres table
CREATE TABLE genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(255) NOT NULL
);

-- Create the directors table
CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    director_name VARCHAR(255) NOT NULL,
    director_country VARCHAR(255) NOT NULL
);

-- Create the actors table
CREATE TABLE actors (
    actor_id SERIAL PRIMARY KEY,
    actor_name VARCHAR(255) NOT NULL,
    actor_country VARCHAR(255) NOT NULL
);

-- Create the movies table
CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year INTEGER,
    genre_id INTEGER REFERENCES genres(genre_id),
    director_id INTEGER REFERENCES directors(director_id),
    actor_id INTEGER REFERENCES actors(actor_id),
    description TEXT,
	IMDB_Rating NUMERIC(3,1)
);
