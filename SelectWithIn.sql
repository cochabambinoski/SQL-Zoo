-- 1
SELECT name FROM world
  WHERE population > (SELECT population FROM world
      WHERE name='Russia');

-- 2
SELECT name FROM world 
  WHERE continent = 'Europe' AND gdp/population > (SELECT gdp/population FROM world
      WHERE name='United Kingdom');

-- 3
SELECT name, continent FROM world 
  WHERE continent = (SELECT continent FROM world 
    WHERE name = 'Australia') OR continent = (SELECT continent FROM world 
      WHERE name = 'Argentina') ORDER BY name;

-- 4
SELECT name, population FROM world 
  WHERE population > (SELECT population FROM world 
    WHERE name = 'Canada') AND population < (SELECT population FROM world 
      WHERE name = 'Poland'); 

-- 5
SELECT name, concat(ROUND(100*population/(SELECT population 
FROM world WHERE name = 'Germany')), '%') FROM world 
  WHERE continent = 'Europe';

-- 6
SELECT name FROM world
  WHERE gdp > ALL(SELECT gdp FROM world 
    WHERE continent = 'Europe' AND gdp >0);

-- 7
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND population>0);

-- 8
SELECT continent, name FROM world x 
  WHERE name <= ALL (SELECT name FROM world y 
    WHERE y.continent = x.continent);

-- 9
SELECT name, continent, population FROM world 
  WHERE continent IN (SELECT continent FROM world  x 
    WHERE 25000000 >= (SELECT MAX(population) FROM world y 
      WHERE x.continent = y.continent));

-- 10
SELECT name, continent FROM world x 
  WHERE population > ALL (SELECT population*3 FROM world y 
    WHERE y.continent = x.continent AND y.name != x.name);