--1
SELECT winner FROM nobel
 WHERE winner LIKE 'C%' AND winner LIKE '%n'

--2
 SELECT COUNT(subject) FROM nobel
 WHERE subject = 'Chemistry'
   AND yr BETWEEN 1950 and 1960

--3
SELECT COUNT(DISTINCT yr) FROM nobel
 WHERE yr NOT IN (SELECT DISTINCT yr FROM nobel WHERE subject = 'Medicine')

--4
--C

--5
SELECT yr FROM nobel
 WHERE yr NOT IN(SELECT subject
                 FROM nobel
                WHERE subject IN ('Chemistry','Physics'))

--6
SELECT DISTINCT yr
  FROM nobel WHERE subject='Medicine'
   AND yr NOT IN(SELECT yr from nobel
                  WHERE subject='Literature'
                    AND subject='Peace')

--7
--D