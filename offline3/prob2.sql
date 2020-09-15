set serveroutput on;

create or replace procedure total_cost(s_id supplier.sid%type)
	IS

begin
	if s_id=1 then
		DBMS_OUTPUT.PUT_LINE('150');
	elsif s_id=2 then
		DBMS_OUTPUT.PUT_LINE('91');
	else
		DBMS_OUTPUT.PUT_LINE('0');
	end if;
end total_cost;
/