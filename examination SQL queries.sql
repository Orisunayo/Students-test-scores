/* Calculating total number of students */
SELECT COUNT(SN) AS num_count
FROM education.dataorg

/* calculating the number of students based on their gender */ 
SELECT gender,
COUNT(SN) AS stu_num
FROM education.dataorg
GROUP BY gender

/* calculating total number of students base3d on the parents education */ 
SELECT parenteduc,
COUNT(SN) AS stu_num
FROM education.dataorg
GROUP BY parenteduc

/* calculating the avegare, minimium & maximium scores of the tests */
SELECT
avg(mathscore) AS mathscore_mean,
min(mathscore) AS mathscore_min,
max(mathscore) AS mathscore_max,
avg(readingscore) AS readingscore_mean,
min(readingscore) AS readingscore_min,
max(readingscore) AS readingscore_max,
avg(writingscore) AS writingscore_mean,
min(writingscore) AS writingscore_min,
max(writingscore) AS writingscore_max
FROM education.dataorg

/* calculating the avegare, minimium & maximium scores of the tests per parents education */
SELECT parenteduc,
avg(mathscore) AS mathscore_mean,
min(mathscore) AS mathscore_min,
max(mathscore) AS mathscore_max,
avg(readingscore) AS readingscore_mean,
min(readingscore) AS readingscore_min,
max(readingscore) AS readingscore_max,
avg(writingscore) AS writingscore_mean,
min(writingscore) AS writingscore_min,
max(writingscore) AS writingscore_max
FROM education.dataorg
GROUP BY parenteduc

/* calculating the avegare, minimium & maximium scores of the tests per test preparation */
SELECT test prep,
avg(mathscore) AS mathscore_mean,
min(mathscore) AS mathscore_min,
max(mathscore) AS mathscore_max,
avg(readingscore) AS readingscore_mean,
min(readingscore) AS readingscore_min,
max(readingscore) AS readingscore_max,
avg(writingscore) AS writingscore_mean,
min(writingscore) AS writingscore_min,
max(writingscore) AS writingscore_max
FROM education.dataorg
GROUP BY test prep

/* calculating the avegare, minimium & maximium scores of the tests per gender*/
SELECT gender,
avg(mathscore) AS mathscore_mean,
min(mathscore) AS mathscore_min,
max(mathscore) AS mathscore_max,
avg(readingscore) AS readingscore_mean,
min(readingscore) AS readingscore_min,
max(readingscore) AS readingscore_max,
avg(writingscore) AS writingscore_mean,
min(writingscore) AS writingscore_min,
max(writingscore) AS writingscore_max
FROM education.dataorg
GROUP BY gender

       