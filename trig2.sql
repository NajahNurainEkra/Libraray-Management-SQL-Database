create or replace trigger member_m
before insert  on member@site_link
begin
  IF(TO_CHAR(SYSDATE,'HH24:MI') NOT BETWEEN '09:00' AND '18:00') THEN
     dbms_output.put_line('you can add member only between 9:00AM and 6:00PM.');
  END IF;
END ;
/




insert into Member values (6,'a', 'za', '01998329543', 'lalbag', 'female', '19-april-89');
insert into Member values (7,'ali', 'zamw', '01998329543', 'lalbag', 'female', '19-april-89');