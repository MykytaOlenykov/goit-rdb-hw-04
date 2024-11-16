INSERT INTO authors (author_name)
VALUES 
	('George Orwell'), 
	('Margaret Atwood'),
	('Harper Lee');

INSERT INTO genres (genre_name)
VALUES 
	('Dystopian'), 
	('Fiction');

INSERT INTO books (title, publication_year, author_id, genre_id)
VALUES 
	('1984', 1949, 1, 1),
	('The Handmaid\'s Tale', 1985, 2, 2),
	('To Kill a Mockingbird', 1960, 3, 2);

INSERT INTO users (username, email)
VALUES 
	('Mango', 'mango@gmail.com'),
	('Tomato', 'tomato@gamil.com');

INSERT INTO borrowed_books (borrow_date, return_date, book_id, user_id)
VALUES
	('2024-01-01', '2024-01-15', 1, 1),
	('2024-02-01', '2024-02-14', 2, 2),
	('2024-03-01', NUll, 3, 1);
	