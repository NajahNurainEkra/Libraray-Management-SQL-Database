create view viewdetails1 as 
select  s.staff_id as id,s.staff_name as name, b.book_id as bookid, b.price as price
from staff@site_link s, book_details@site_link b;
where s.book_id=b.book_id;




select*from viewdetails@site_link;
