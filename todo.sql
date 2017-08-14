CREATE TABLE todos (id serial PRIMARY KEY, title TEXT NOT NULL, details TEXT, priority INTEGER NOT NULL, created_at timestamp [ (p) ] with time NOT NULL, completed_at timestamp [(p)] with time);

INSERT INTO todos(title, details, priority, created_at, completed_at) VALUES ('name', 'blach', 8, 06-01-87 11:11, 12-12-12 11:11);

INSERT INTO todos(title, details, priority, created_at) VALUES ('doThis', 'details words words words', 7, 08-01-99 06:16,);

INSERT INTO todos(title, details, priority, created_at) VALUES ('doThat', 'things and stuff and things', 1, 08-01-99 06:16);

INSERT INTO todos(title, priority, created_at) VALUES ('do the other stuff', 6, 08-01-99 06:16);

INSERT INTO todos(title, priority, created_at, completed_at) VALUES ('do the other stuff', 0, 08-01-99 06:16, 08-08-08 06:16);


SELECT * FROM todos;

SELECT title FROM todos WHERE completed_at IS NOT NULL;

SELECT title FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = 09/09/2012 WHERE completed_at IS NULL;

DELETE todos WHERE completed_at IS NOT NULL;
