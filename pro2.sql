create or replace 
procedure searchsubjects
is
	book_id int;
        book_name varchar(20);
        author_name varchar(20);
        price decimal(12,3);
	subject varchar(20);
	
	cursor c1 is 
		select  book_id, book_name, author_name,price, subject 
		from book_details@site_link where book_id= 1;
		


begin

	DBMS_OUTPUT.PUT_LINE('book_id'||' '||'book_name'||' '||' author_name'||'subject'||'price');
	
	open c1;
	loop
		fetch c1 into book_id, book_name, author_name,price,subject;
		exit when c1%notfound;
		DBMS_OUTPUT.PUT_LINE(book_id||'  '||book_name||' '||author_name||'  '||subject||'  '||price);
	end loop;
	
end searchsubjects ;
/

