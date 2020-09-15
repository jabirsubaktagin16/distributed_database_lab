---Show the courses which has at least 10 students---

SET SERVEROUTPUT ON;

DECLARE
	c_name course.cname %type;
	number_of_student number(4);
BEGIN
	select course.cname,count(enrolled.cnum) into c_name, number_of_student
	from course left join enrolled
	on course.cnum=enrolled.cnum
	having count(enrolled.cnum)>=10
	group by course.cname;
	
	DBMS_OUTPUT.PUT_LINE('Course Name');
	DBMS_OUTPUT.PUT_LINE(c_name);
	DBMS_OUTPUT.PUT_LINE('Number of Students');
	DBMS_OUTPUT.PUT_LINE(number_of_student);
	
	
END;
/
