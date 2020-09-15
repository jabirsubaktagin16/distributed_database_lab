---Insert a new course named 'Data Structure' and 
---add the faculty to that course who take the Algorithm 
---course. Show the faculty name with the courses. Also 
---check if the faculty takes more than 2 courses.

SET SERVEROUTPUT ON;

DECLARE
	course_name course.cname %TYPE :='&name';
	meets course.meets_at %TYPE :='&meeting';
	room_no course.room %TYPE :='&classroom';
	faculty_id faculty.fid %TYPE;
	faculty_name faculty.fname %TYPE;
	count_number number(4);
BEGIN
	select course.fid into faculty_id
	from course
	where cname='Algorithm';
	
	insert into course values(9, course_name, meets, room_no, faculty_id);
	
	select faculty.fname into faculty_name from faculty
	where fid=faculty_id;
	
	DBMS_OUTPUT.PUT_LINE(faculty_name||' takes');
	FOR t IN (SELECT cname from course where fid=faculty_id)
	LOOP
		DBMS_OUTPUT.PUT_LINE(t.cname);
	END LOOP;
	
	select count(course.fid) into count_number
	from course
	where fid=faculty_id
	group by fid;
	
	IF count_number>2:
		DBMS_OUTPUT.PUT_LINE('He takes more than 2 courses');
	ELSIF count_number=2:
		DBMS_OUTPUT.PUT_LINE('He takes 2 courses');
	ELSE:
		DBMS_OUTPUT.PUT_LINE('He takes only 1 course');
	END IF;
END;
/
