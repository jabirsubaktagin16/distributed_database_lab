--Show the faculty names who take the Algorithm course---

SET SERVEROUTPUT ON;

DECLARE
	f_name faculty.fname %type;
BEGIN
	select fname into f_name 
	from faculty full join course on faculty.fid=course.fid 
	where cname='Algorithm';
	
	DBMS_OUTPUT.PUT_LINE('Faculty Name');
	DBMS_OUTPUT.PUT_LINE(f_name);
	
END;
/
