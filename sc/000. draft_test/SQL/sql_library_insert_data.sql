USE library;

INSERT INTO books
VALUES (1, 'Harry Potter', 'Eve', 'Wonderfil', 5),
		(2, 'Peter Pan', 'Bolt', 'Good', 5),
        (3, 'The Mermaid', 'Adam', 'Very Good', 0);
        
INSERT INTO students
VALUES (1, 'Tony Stark', '11A'),
		(2, 'Howard Stark', '11B'),
		(3, 'Natasha Romanoff', '10E'),
		(4, 'Wanda Maximox', '12A'),
		(5, 'Peter Parker', '10B');
        
INSERT INTO borrowings
VALUES (1, 3, 1, 1, '2023-03-03', '2023-04-04'),
		(2, 3, 2, 1, '2023-02-02', '2023-03-04'),
		(3, 3, 1, 1, '2023-02-02', '2023-03-04'),
		(4, 3, 2, 1, '2023-02-02', '2023-03-04'),
		(5, 3, 2, 1, '2023-02-02', '2023-03-04');