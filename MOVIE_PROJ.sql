# Movies database
use project;
select* from movies_sql;
-- 1. Retrieve the names of all the Bollywood movies which are of drama genre in the dataset.
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE GENRE="DRAMA";
-- 2. Retrieve the names of all the Bollywood movies of Amir Khan in the dataset. 
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE LEAD_STAR = "AAMIR KHAN";
-- 3. Retrieve the names of all the Bollywood movies which are directed by RamGopal Verma in the dataset. 
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE DIRECTOR = "RAM GOPAL VERMA";
/*4. Retrieve the names of all the Bollywood 
movies which have been released over 
more than 1000 number of screens in the 
dataset.*/
 SELECT MOVIE_NAME FROM MOVIES_SQL WHERE NUMBER_OF_SCREENS = 1000;
/*5. Retrieve the names of all the Bollywood 
movies which have generated Revenue(INR) 
more than 700000000 in the dataset. */
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE REVENUE > 700000000;
/*6. Retrieve the names of all the Bollywood 
movies which have budget less than 1cr in 
the dataset. */
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE BUDGET < 10000000; 
/* 7. Retrieve the names of all the Bollywood 
movies which are flop in the 
dataset.(flop=revenue – budget) */
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE REVENUE- BUDGET<0; 
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE BUDGET> REVENUE;
/* 8. Retrieve the names and profit of all the 
Bollywood movies in the 
dataset.(profit=revenue – budget) */
SELECT Movie_Name, (Revenue - Budget) AS Profit
FROM movies_sql WHERE REVENUE> BUDGET;
/* 9. Retrieve the names and loss of all the 
Bollywood movies in the 
dataset.(loss=revenue – budget) */
SELECT Movie_Name, (Revenue - Budget) AS LOSS
FROM movies_sql WHERE REVENUE< BUDGET;
/*10. Retrieve the names of all the Bollywood 
movies which have been released on 
holidays in the dataset. */
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE RELEASE_PERIOD = "HOLIDAY";
/* 11. Retrieve the names of all the Bollywood 
movies which have lead star as Akshay 
Kumar and directed by Priyadarshan  in the 
dataset. */
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE LEAD_STAR = "AKSHAY KUMAR" AND DIRECTOR = "PRIYADARSHAN";
/*12. Retrieve the names of all the Bollywood 
movies starting with ‘a’ in the dataset. */
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE MOVIE_NAME LIKE "A%"; 
/* 13. Retrieve the names of all the Bollywood 
movies ending with ‘a’ in the dataset. */
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE MOVIE_NAME LIKE "%A"; 
/*14. Retrieve the names of all the Bollywood 
movies having ‘a’ at second place of the 
name in the dataset. */
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE MOVIE_NAME LIKE "_A%"; 
/*15. Retrieve the names of all the Bollywood 
movies having music of amit trivedi the 
dataset. */
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE MUSIC_DIRECTOR= "AMIT TRIVEDI";
/*16. Retrieve the names of all the comedy 
movies of Akshay Kumar in the dataset. */
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE LEAD_STAR="AKSHAY KUMAR" AND GENRE= "COMEDY";
/* 17. Retrieve the names of movies  and star 
name starring khan in the dataset. */
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE LEAD_STAR= "SALMAN KHAN";
/* 18. Retrieve all the information of movies 
race and race2 in the dataset. */
SELECT * FROM MOVIES_SQL WHERE MOVIE_NAME IN("RACE" ,"RACE 2");
/*19. Retrieve the names of all the thriller 
Bollywood movies in the dataset. */
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE GENRE="THRILLER";
/*20. Retrieve the names and budget of all the 
Bollywood movies according to the highest 
budget to lowest budget in the dataset. */
SELECT MOVIE_NAME,BUDGET FROM MOVIES_SQL ORDER BY BUDGET DESC;
/*21. Retrieve the names and budget of top 5  
Bollywood movies with highest budget in 
the dataset. */
SELECT MOVIE_NAME,BUDGET FROM MOVIES_SQL ORDER BY BUDGET DESC LIMIT 5;
/*22. Retrieve the names of top 10  Bollywood 
movies with highest revenue generation in 
the dataset.*/
SELECT MOVIE_NAME,REVENUE FROM MOVIES_SQL ORDER BY REVENUE DESC LIMIT 10;
/*23. Retrieve the names  of top 5  movies of 
salman khan in the dataset. */
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE LEAD_STAR="SALMAN KHAN" ORDER BY REVENUE DESC LIMIT 5;
/*24. Retrieve the names of top 5 floped movies 
in the dataset. */
SELECT Movie_Name, (Revenue - Budget) AS Profit
FROM movies_sql
ORDER BY Profit ASC
LIMIT 5;
/*25. Retrieve the names of top 5 hit movies in 
the dataset.*/
 SELECT Movie_Name, (Revenue - Budget) AS Profit
FROM movies_sql
ORDER BY Profit DESC
LIMIT 5;
/*26. Which is the second movie released on 
maximum screens. */
SELECT MOVIE_NAME FROM MOVIES_SQL ORDER BY NUMBER_OF_SCREENS DESC LIMIT 1,1;
-- 27. Which is the 10th movies with highest budget.
SELECT MOVIE_NAME FROM MOVIES_SQL ORDER BY BUDGET DESC LIMIT 9,1;
/*28. Which is the 2nd movie of Amitabh 
Bachchan with highest budget. */
SELECT MOVIE_NAME FROM MOVIES_SQL WHERE LEAD_STAR= "AMITABH BACHCHAN" ORDER BY BUDGET DESC LIMIT 1,1;
-- 29. Which are the flopped movies of Akshay Kumar.
SELECT MOVIE_NAME,(REVENUE-BUDGET) AS PROFIT FROM MOVIES_SQL WHERE LEAD_STAR="AKSHAY KUMAR" AND REVENUE-BUDGET<0;
-- 30. With which director Sharukh Khan have given the biggest hit movie . 
SELECT Director, Movie_Name, (Revenue - Budget) AS Profit
FROM movies_sql
WHERE Lead_Star = 'ShahRukh Khan'
ORDER BY Profit DESC
LIMIT 1;
