--1
SELECT name, population
  FROM world
 WHERE population BETWEEN 1000000 AND 1250000

 --2
 --Table E

 --3
SELECT name FROM world
 WHERE name LIKE '%a' OR name LIKE '%l'

 --4
 --C

 --5
 --C

 --6
 --C

 --7
SELECT name, population/area
  FROM world
 WHERE name IN ('China', 'Nigeria', 'France', 'Australia')

