SELECT *
FROM Movie

SELECT  Movie_Title
FROM Budget
WHERE Production_Budget > 150000000

SELECT DISTINCT Movie_Title
FROM Movie_Review
WHERE Rating BETWEEN 9 AND 10;

SELECT Movie_Title, COUNT(TrackNo) as Songs
FROM Multiple_Songs
GROUP BY Movie_Title

SELECT MIN(Opening_Weekend) AS min, MAX(Opening_Weekend) AS max, AVG(Opening_Weekend) AS avg
FROM Income

SELECT  Movie_Title, COUNT(Award_Show) AS awards
FROM Award
GROUP BY Movie_Title
HAVING awards > 2

SELECT Movie_Title
FROM Budget b
WHERE EXISTS
	(SELECT *
     	 FROM Income i
	 WHERE b.Movie_Title = i.Movie_Title and i.Worldwide_Gross < b.Production_Budget)

SELECT DISTINCT First_Name, Last_Name
FROM staff s, award a, multiple_movies m
WHERE m.Movie_Title = a.Movie_Title and s.StaffID = m.StaffID  and a.Award_Show LIKE 'Academy%'

SELECT c.Movie_Title, Rating
FROM Movie_Review r, Award a
WHERE r.Movie_Title = a.Movie_Title and a.Award_Show = ‘Golden Globe’ and r.CriticID = 
	(SELECT CriticID
	 FROM Critics
	WHERE Critic_Name = ‘Rotten Tomatoes’)
