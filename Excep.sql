DECLARE 
   s_id staff.staff_id%type; 
   s_name staff.staff_name%type; 
   s_bid staff.book_id%type:=4; 
   -- user defined exception 
   ex_invalid_id  EXCEPTION; 
BEGIN 
   IF s_id >4 THEN 
      RAISE ex_invalid_id; 
   ELSE 
      SELECT staff_id, staff_name INTO s_id , s_name
      FROM staff 
      WHERE book_id = s_bid;
      DBMS_OUTPUT.PUT_LINE ('staff_id: '||  s_id);
      DBMS_OUTPUT.PUT_LINE ('staff_name: ' || s_name); 
      DBMS_OUTPUT.PUT_LINE ('book_id: ' || s_bid); 
   END IF; 

EXCEPTION 
   WHEN ex_invalid_id THEN 
      dbms_output.put_line('ID must be greater than zero!'); 
   WHEN no_data_found THEN 
      dbms_output.put_line('No records!'); 
   WHEN others THEN 
      dbms_output.put_line('Error!');  
END; 
/


















