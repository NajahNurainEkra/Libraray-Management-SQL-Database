DROP TABLE Member CASCADE CONSTRAINTS;
DROP TABLE Book_details CASCADE CONSTRAINTS;
DROP TABLE Issue CASCADE CONSTRAINTS;
DROP TABLE Ret CASCADE CONSTRAINTS;
DROP TABLE Branch CASCADE CONSTRAINTS;
DROP TABLE Staff CASCADE CONSTRAINTS;


CREATE TABLE Book_details(
	book_id int NOT NULL, 
	book_name varchar(20)NOT NULL, 
	Author_name varchar(20) NOT NULL,
	Price decimal(12,3) NOT NULL,
	Subject varchar (20) NOT NULL,
	PRIMARY KEY(Book_id));
	
	
CREATE TABLE Branch(
	branch_id int NOT NULL,
	branch_name varchar (20) NOT NULL,
	branch_location varchar (20) NOT NULL,
	PRIMARY KEY(branch_id));
	


CREATE TABLE Member (
	member_id int NOT NULL, 
	Firstname varchar(20) NOT NULL, 
	Lastname varchar(20) NOT NULL, 
	Phone_no varchar(20) NOT NULL, 
	Address varchar(20)NOT NULL,
	Gender varchar(20)NOT NULL,
	DOB date,
	PRIMARY KEY(member_id));



CREATE TABLE Staff(
	staff_id int NOT NULL,
	staff_name varchar (20) NOT NULL,
	Address varchar(20)NOT NULL,
	Gender varchar(20)NOT NULL,
	branch_id int NOT NULL,
	book_id int NOT NULL,
	FOREIGN KEY (book_id) REFERENCES book_details (book_id),
	FOREIGN KEY (branch_id) REFERENCES Branch (branch_id),
	PRIMARY KEY(staff_id));
	
	
CREATE TABLE Issue(
	issue_id int NOT NULL, 
	book_name varchar(20)NOT NULL, 
	book_id int NOT NULL, 
	member_id int NOT NULL,
	issue_date varchar(20),
	Expiry_date varchar(20),
	PRIMARY KEY(issue_id),
	FOREIGN KEY (book_id) REFERENCES Book_details (book_id),
	FOREIGN KEY (member_id) REFERENCES Member (member_id));


CREATE TABLE Ret(
    ret_id int  NOT NULL,
    book_id int NOT NULL,
	issue_date varchar(20),
	Expiry_date varchar(20),
	book_name varchar(20) NOT NULL,
	member_id int NOT NULL, 
	staff_id int NOT NULL,
    issue_id int NOT NULL,	
	PRIMARY KEY(ret_id),
	FOREIGN KEY (book_id) REFERENCES Book_details (book_id),
	FOREIGN KEY (member_id) REFERENCES Member (member_id),
	FOREIGN KEY (staff_id) REFERENCES Staff (staff_id),
	FOREIGN KEY (issue_id) REFERENCES Issue (issue_id));
	

	
insert into Book_details values (1,'sapiens','marshallow',100,'story');
insert into Book_details values (2,'hobbit','tolkien',150,'novels');
insert into Book_details values (3,'twilight','stephenie',103,'thriller');
insert into Book_details values (4,'eclipse','meyer',200,'story');
insert into Book_details values (5,'catch','joseph',180,'horror');
insert into Book_details values (6,'theIliad','homer',196,'travel');




insert into Branch values(1,'A','uttara');
insert into Branch values(2,'B','badda');
insert into Branch values(3,'C','mirpur');
insert into Branch values(4,'D','lalbag');
insert into Branch values(5,'E','dhanmondi');




insert into Member (member_id, Firstname, Lastname, Phone_no, Address, Gender, DOB) values (1,'sumi', 'sarker', '01928475832' ,'uttara','female', '31-may-98');
insert into Member (member_id, Firstname, Lastname, Phone_no, Address, Gender, DOB) values (2,'amin', 'raja', '01928475894', 'badda', 'male', '12- march-99');
insert into Member (member_id, Firstname, Lastname, Phone_no, Address, Gender, DOB) values (3,'dia', 'mirza', '01994758329', 'lalbag', 'female', '19-april-89');
insert into Member (member_id, Firstname, Lastname, Phone_no, Address, Gender, DOB) values (4,'lopa', 'sarker', '01558475882' ,'mirpur', 'female', '11- may-98');
insert into Member (member_id, Firstname, Lastname, Phone_no, Address, Gender, DOB) values (5,'aman', 'hasan', '01728475822' ,'lalbag', 'male', '18-june-99');


insert into Staff values(1,'jaman','uttara','female',1,2);
insert into Staff values(2,'hazi','badda','male',2,3);
insert into Staff values(3,'sana','uttara','female',3,4);
insert into Staff values(4,'ria','mirpur','female',4,5);
insert into Staff values(5,'subha','dhanmondi','female',5,6);	

insert into Issue values(1,'sapiens', 1, 3, '31-may-98', '31-june-98');
insert into Issue values(2,'hobbit', 2, 4, '12-march-99', '12-april-97');
insert into Issue values(3,'twilight', 3, 5, '19-april-89', '19-may-89');


insert into Ret values(1,4,'31-may-98','31-june-9','sapiens',3,2,1);
insert into Ret values(2,5,'12-march-99','12-april-97','hobbit',4,3,2);
insert into Ret values(3,6,'19-april-89','19-may-89','twilight',5,4,3);


	
commit;	
	
	

