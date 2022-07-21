set serveroutput on;
declare
  v_id staff.book_id%type;
begin
  v_id:= updatebooks(6);
  dbms_output.put_line(v_id);
end;
/




