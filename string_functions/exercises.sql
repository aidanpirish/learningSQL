
-- reverse and uppercase the sentence
-- Why does my cat look at me with such hatred?
SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));

-- what does this print out?
"I-like-cats"

-- in books, replace spaces with '->'
SELECT REPLACE(title, ' ', '->') FROM books;

-- print out row of last names forwards and backward
SELECT author_lname AS 'forwards', REVERSE(author_lname) AS 'backwards'
FROM books;

-- print full name in caps
SELECT CONCAT(UPPER(author_fname), ' ', UPPER(author_lname)) AS 'full name in caps'
FROM books;

-- print title 'was released in 'year'
SELECT CONCAT_WS(' ', title, 'was released in', released_year) AS 'blurb'
FROM books;

-- print title and title char length
SELECT title, CHAR_LENGTH(title) AS 'character count'
FROM books;

-- shortened title with 10 characters, author, quantity in stock where name starts with 'A'
SELECT CONCAT(SUBSTRING(title, 1, 10),'...') AS 'short title',
       CONCAT(author_lname, ',', author_fname) AS 'author',
       CONCAT(stock_quantity, ' in stock') AS 'quantity'
FROM books
WHERE SUBSTRING(title,1,1) = 'A';
