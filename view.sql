create view vw2 as 
select  member_id, FirstName||' '||LastName as Name,phone_no,Address,Gender,DOB
from member@site_link
where member_id=5;


select*from vw2@site_link;