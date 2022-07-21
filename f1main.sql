set serveroutput on;
declare
  v_price book_details.price%type;
begin
  v_price:=pricefind(6);
  dbms_output.put_line(v_price);
end;
/