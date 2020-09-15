set serveroutput on;

declare
	p_id parts.pid %type;
	p_name parts.pname %type;
	color_1 parts.color %type;
begin
	DBMS_OUTPUT.PUT_LINE('view_pid	view_pname	view_color');
	for R in (select pid,pname,color from parts where parts.pid in(select pid from records)) loop
		DBMS_OUTPUT.PUT_LINE(R.pid||'		'||R.pname||'		'||R.color);
	end loop;

end;
/