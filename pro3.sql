create or replace 
procedure pro3
is
   member_id int;
   issue_date varchar(20);
   expiry_date varchar(20);	
   cursor c1 is 
     (select
       member.member_id ,ret.issue_date,ret.expiry_date
       from member@site_link member 
        inner join ret
         on member.member_id=ret.member_id where ret.expiry_date='31-june-9');

begin
	DBMS_OUTPUT.PUT_LINE('member_id'||' '||'issue_date'||' '||'expiry_date');
	
	open c1;
	loop
		fetch c1 into member_id ,issue_date,expiry_date ;
		exit when c1%notfound;
		DBMS_OUTPUT.PUT_LINE(member_id||'  '||issue_date||' '||expiry_date);
	end loop;	
end pro3;
/