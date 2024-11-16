CREATE DATABASE IF NOT EXISTS LibraryManagement;

USE LibraryManagement;

CREATE TABLE IF NOT EXISTS authors (
	author_id INT PRIMARY KEY AUTO_INCREMENT,
	author_name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS genres (
	genre_id INT PRIMARY KEY AUTO_INCREMENT,
	genre_name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS books (
	book_id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL,
	publication_year YEAR NOT NULL,
	author_id INT NOT NULL,
	genre_id INT NOT NULL,
	
	FOREIGN KEY (author_id) REFERENCES authors(author_id) ON DELETE RESTRICT,
	FOREIGN KEY (genre_id) REFERENCES genres(genre_id) ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS users (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(100) NOT NULL,
	email VARCHAR(255) NOT NUll UNIQUE
);

CREATE TABLE IF NOT EXISTS borrowed_books (
	borrow_id INT PRIMARY KEY AUTO_INCREMENT,
	borrow_date DATE NOT NULL,
	return_date DATE,
	book_id INT NOT NULL,
	user_id INT NOT NULL,
	
	FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE RESTRICT,
	FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE RESTRICT
);