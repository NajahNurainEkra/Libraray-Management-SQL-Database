create or replace 
procedure pro2
is
member_id int;
issue_date varchar(20);
issue_id int;	
	cursor c2 is 
(select
member.member_id,issue.issue_date ,issue.issue_id 
from member@site_link
inner join issue@site_link 
on member.member_id=issue.member_id where issue.issue_date='31-may-98');

begin

	DBMS_OUTPUT.PUT_LINE('member_id'||'  '||'issue_date'||' '||'issue_id ');
	
	open c2;
	loop
		fetch c2 into member_id , issue_date,issue_id ;
		exit when c2%notfound;
		DBMS_OUTPUT.PUT_LINE(member_id||'   '||issue_date||' '||issue_id );
	end loop;
	
end pro2;
/