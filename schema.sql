-- Create database (run this only if you haven't already)
--CREATE DATABASE tree;

-- Connect to the database
\c tree

-- Create tables
CREATE TABLE node (
    id SERIAL PRIMARY KEY,
    it TEXT NOT NULL UNIQUE
);

CREATE TABLE edge (
    id SERIAL PRIMARY KEY,
    "from" INTEGER REFERENCES node(id),
    "to" INTEGER REFERENCES node(id),
    rel TEXT
);

-- Insert nodes
INSERT INTO node (it) VALUES
('H'), ('He'), ('Li'), ('Be'), ('B'), ('C'), ('N'), ('O'), ('F'), ('Ne'),
('Na'), ('Mg'), ('Al'), ('Si'), ('P'), ('S'), ('Cl'), ('Ar'), ('K'), ('Ca'),
('p'), ('e'), ('u'), ('d');

-- Insert edges for proton relationships
INSERT INTO edge ("from", "to", rel)
SELECT n1.id, n2.id, 
    CASE WHEN n2.it = 'H' THEN '>'
         ELSE (ROW_NUMBER() OVER (ORDER BY n2.id))::TEXT || '>'
    END
FROM node n1, node n2
WHERE n1.it = 'p' AND n2.it NOT IN ('p', 'e', 'u', 'd')
ORDER BY n2.id;

-- Insert edges for quark and electron relationships
INSERT INTO edge ("from", "to", rel) VALUES
((SELECT id FROM node WHERE it = 'u'), (SELECT id FROM node WHERE it = 'p'), '2>'),
((SELECT id FROM node WHERE it = 'd'), (SELECT id FROM node WHERE it = 'p'), '>'),
((SELECT id FROM node WHERE it = 'e'), (SELECT id FROM node WHERE it = 'H'), '~>');