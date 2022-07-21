create or replace 
procedure pro4
is
   staff_id int;
   branch_id int;
   branch_location varchar(20);	
   cursor c1 is 
     (select
       branch.branch_id, staff.staff_id ,branch.branch_location
       from branch@site_link branch
        inner join staff@site_link
         on branch.branch_id=staff.branch_id where branch_location='uttara');

begin
	DBMS_OUTPUT.PUT_LINE('branch_id'||' '||'staff_id'||' '||'branch_location');
	
	open c1;
	loop
		fetch c1 into branch_id ,staff_id,branch_location ;
		exit when c1%notfound;
		DBMS_OUTPUT.PUT_LINE(branch_id||'  '||staff_id||' '||branch_location);
	end loop;	
end pro4;
/