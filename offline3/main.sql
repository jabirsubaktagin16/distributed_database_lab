set serveroutput on;

declare
	s_id supplier.sid %type:=&x;
begin
	total_cost(s_id);
end;
/