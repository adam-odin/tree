--if you created a database named tree, you would connect to it using:
\c tree

SELECT * FROM node ORDER BY id;

SELECT n1.it AS from_node, n2.it AS to_node, e.rel
FROM edge e
JOIN node n1 ON e."from" = n1.id
JOIN node n2 ON e."to" = n2.id
ORDER BY n2.id;

--GRANT ALL ON SCHEMA public TO ad;
--GRANT ALL ON ALL TABLES IN SCHEMA public TO ad;
--ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO ad;
