create or replace trigger b_book_details
before insert or update on book_details@site_link
for each row
declare
  v_user varchar(20);

begin

  select user into v_user from book_details@site_link; 
  dbms_output.put_line('Inserted a row'||v_user);

end;
/




insert into book_details values(7,'cascade','Ryan',165,'travel');

update book_details set price = 567 where book_id=5;









