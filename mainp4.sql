
set serveroutput on;
set verify off;

DECLARE
  branch_location varchar(20):='&mirpur';
BEGIN
    if branch_location='mirpur' then
	  pro4();
    end if;
END;
/