set serveroutput on;

declare
	p_id parts.pid %type :=&x;
begin	
	for R in (select sid,sname, address from supplier where sid=(select records.sid from records where cost=(select max(cost) from records where pid=p_id)))loop
		dbms_output.put_line(R.sid||'	'||R.sname||'	'||R.address);
	end loop;
end;
/