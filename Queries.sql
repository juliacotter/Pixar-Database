Select all from Movie
SELECT *
FROM Movie

SELECT  Movie_Title
FROM Budget
WHERE Production_Budget > 150000000

SELECT DISTINCT Movie_Title
FROM Multiple_Critics
WHERE Rating BETWEEN 9 AND 10;

SELECT Movie_Title, COUNT(TrackNo) as Songs
FROM multiple_songs
GROUP BY Movie_Title

SELECT MIN(gross) AS min, MAX(gross) AS max, AVG(gross) AS avg
FROM income

SELECT  Movie_Title, COUNT(Award_Show) AS awards
FROM award
GROUP BY Movie_Title
HAVING awards > 2

SELECT Movie_Title
FROM budget b
WHERE EXISTS
	(SELECT *
     	 FROM income i
	 WHERE b.Movie_Title = i.Movie_Title and i.Gross < b.Production_Budget)

SELECT DISTINCT First_Name, Last_Name
FROM staff s, award a, multiple_movies m
WHERE m.Movie_Title = a.Movie_Title and s.StaffID = m.StaffID  and a.Award_Show = ‘Academy%’

SELECT c.Movie_Title, Rating
FROM multiple_critics c, award a
WHERE c.Movie_Title = a.Movie_Title and a.Award_Show = ‘Golden Globe’ and c.CriticID = 
	(SELECT CriticID
	 FROM movie_review
	WHERE Critic_Name = ‘Rotten Tomatoes’)
