#INNER JOIN
we have 2 tables ,one contain student infromation and other contain the course .we can use the inner joins to 
match student_id

SELECT *
FROM student
INNER JOIN course ON student.student_id = course.student_id;

#LEFT JOIN
"student" and "course" are the names of the tables.
 The LEFT JOIN keyword specifies that you want to perform a left join.
 It means that all rows from the "student" table will be included in the result, even if there is no corresponding match in the "course" table.
SELECT *
FROM student
LEFT JOIN course ON student.course_id = course.course_id;

#RIGHT JOIN
 course.course_id = student.course_id specifies the column that relates the two tables.
 Adjust this condition based on the specific column names that relate 
 the "course" and "student" tables in your database schema.
SELECT *
FROM course
RIGHT JOIN student ON course.course_id = student.course_id;




#FULL JOIN
The join condition assumes that both the "student" and "course" tables have a column called "course_id" that represents the course identifier.

The result set will include all rows from both the "student" and "course" tables. 
If a student is enrolled in a course, the corresponding columns will contain the relevant data. 
If there is no match between a student and a course, the corresponding columns will contain NULL values.
SELECT *
FROM student
FULL JOIN course
ON student.course_id = course.course_id;

