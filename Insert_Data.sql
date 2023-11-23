-- Insert genres
INSERT INTO genres (genre_name) VALUES
    ('Mystery'),
	('Action'),
	('Western'),
    ('Drama'),
    ('Comedy'),
    ('Sci-Fi'),
	('Thriller'),
	('Romance');

-- Insert directors
INSERT INTO directors (director_name, director_country) VALUES
    ('Christopher Nolan', 'USA'),
    ('Quentin Tarantino', 'USA'),
    ('Sergio Leone', 'Italy'),
	('Krzysztof Kieslowski', 'Poland'),
	('Johnnie To', 'Hong Kong'),
	('Ridley Scott', 'UK'),
	('Richard Linklater', 'USA'),
	('Kar-Wai Wong', 'Hong Kong'),
	('Ingmar Bergman', 'Sweden'),
	('Michael Haneke', 'Austria'),
	('Agnès Varda', 'France'),
	('Federico Fellini ', 'Italy'),
	('Akira Kurosawa', 'Japan');

-- Insert actors
INSERT INTO actors (actor_name, actor_country) VALUES
    ('Guy Edward Pearce', 'Australia'),
    ('Samuel Jackson', 'USA'),
    ('Clint Eastwood', 'USA'),
	('Leonardo DiCaprio', 'USA'),
	('Roy Cheung Yiu Yeung', 'Hong Kong'),
	('Rutger Oelsen Hauer', 'Netherlands'),
	('Julie Delpy', 'France'),
	('Leslie Cheung', 'Hong Kong'),
	('Liv Johanne Ullmann', 'Norway'),
	('Daniel Auteuil', 'France'),
	('Corinne Marchand', 'France'),
	('Marcello Mastroianni ', 'Italy'),
	('Shimura Takashi', 'Japan');
	 
-- Insert movies
INSERT INTO movies (title, release_year, genre_id, director_id, actor_id, description, IMDB_Rating) VALUES
    ('Memento', 2000, 1, 1, 1, 'A man with short-term memory loss attempts to track down the murderer of his wife.', 8.4),
    ('Pulp Fiction', 1994, 4, 2, 2, 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 8.9),
    ('The Good, the Bad and the Ugly', 1966, 3, 3, 3, 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.', 8.8),
    ('Three color: White', 1994, 4, 4, 7, 'After his wife divorces him, a Polish immigrant plots to get even with her.', 7.6),
	('The Mission', 1999, 2, 5, 5, 'Triad boss Lung, who has just escaped being killed in an assassination, hires five killers for his protection. Their grown solidarity is under compulsion when Lung gives a special order.', 7.5),
    ('Blade Runner', 1982, 6, 6, 6, 'A blade runner must pursue and terminate four replicants who stole a ship in space and have returned to Earth to find their creator.', 8.1),
    ('Before Sunrise', 1995, 8, 7, 7, 'A young man and woman meet on a train in Europe, and wind up spending one evening together in Vienna. Unfortunately, both know that this will probably be their only night together.', 8.1),
    ('Ashes of Time', 1994, 4, 8, 8, 'A broken-hearted hit man moves to the desert where he finds skilled swordsmen to carry out his contract killings.', 7.0),
	('Persona', 1966, 4, 9, 9, 'A nurse is put in charge of a mute actress and finds that their personae are melding together.', 8.1 ),
    ('Caché', 2005, 1, 10, 10, 'A married couple is terrorized by a series of surveillance videotapes left on their front porch.', 7.3),
    ('Cleo from 5 to 7', 1962, 4, 11, 11, 'Cleo, a singer and hypochondriac, becomes increasingly worried that she might have cancer while awaiting test results from her doctor.', 7.9),
    ('8½', 1963, 4, 12, 12, 'A harried movie director retreats into his memories and fantasies.', 8.0),
	('Ikiru', 1952, 4, 13, 13, 'A bureaucrat tries to find meaning in his life after he discovers he has terminal cancer.', 8.3)
