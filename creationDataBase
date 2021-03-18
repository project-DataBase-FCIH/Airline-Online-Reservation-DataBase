create database airline
go
use airline

create table Passenger
(
p_id int primary key ,
fname nvarchar (100),
lname nvarchar (100),
sex nvarchar (50),
email nvarchar (100),
b_date date,
age int,
ticket_no int
)

create table P_Telephone
(
p_id int,
telephone int
constraint c1 primary key (p_id,telephone)
)

create table Ticket
(
t_no int primary key ,
price float ,
credit nvarchar(50) ,
debit nvarchar(50),
t_type nvarchar (50),
max_weight int,
flight_no int
)

create table Fare
(
fares_type nvarchar (50) not null,
condition nvarchar (100),
fares_description nvarchar (50),
ticket_no int not null
)

create table Route
(
r_no int primary key,
destination nvarchar (50),
airport_code int,
plane_code int
)

create table Airport
(
airport_code int primary key,
city nvarchar (50),
country nvarchar (50),
name nvarchar (100)
)

create table Airplane
(
plane_code int primary key,
type nvarchar (50),
no_seats int,
airline_code int
)

create table Airport_Airplane
(
airport_code int,
plane_code int,
constraint c2 primary key(airport_code,plane_code)
)
create table Airline
(
airline_code int primary key,
name nvarchar (50)
)

create table Flight
(
flight_no int primary key ,
fromm nvarchar (50),
too nvarchar (50),
class nvarchar (50),
arrival_date date,
departure_date date,
no_passenger int
)

create table Plane_flight_port
(
plane_code int,
airport_code int,
flight_no int,
constraint c3 primary key (plane_code,airport_code,flight_no)
)

alter table passenger add constraint c4 foreign key(ticket_no) references ticket(t_no)
on update cascade on delete cascade

 alter table P_Telephone add constraint c5 foreign key(p_id) references passenger(p_id)
on update cascade on delete cascade

 alter table ticket add constraint c6 foreign key(flight_no) references flight(flight_no)
on update cascade on delete cascade

 alter table fare add constraint c7 foreign key(ticket_no) references ticket(t_no)
on update cascade on delete cascade

alter table route add constraint c8 foreign key(airport_code) references airport (airport_code)
on update cascade on delete cascade
alter table airplane add constraint c9 foreign key(airline_code) references airline(airline_code)
on update cascade on delete cascade

 alter table Airport_Airplane add constraint c10 foreign key(airport_code) references airport(airport_code)
on update cascade on delete cascade

 alter table Airport_Airplane add constraint c11 foreign key(plane_code) references airplane(plane_code)
on update cascade on delete cascade
alter table route add constraint c12 foreign key(plane_code) references airplane(plane_code)
on update cascade on delete cascade

 alter table Plane_flight_port add constraint c13 foreign key(plane_code) references airplane(plane_code)
on update cascade on delete cascade

 alter table Plane_flight_port add constraint c14 foreign key(airport_code) references airport(airport_code)
on update cascade on delete cascade

 alter table Plane_flight_port add constraint c15 foreign key(flight_no) references flight(flight_no)
on update cascade on delete cascade

 alter table fare add constraint c16 primary key (ticket_no,fares_type)

 alter table Passenger drop column age

insert into Flight(flight_no, fromm, too, class, departure_date, arrival_date,no_passenger)values
('672015','DFW','BOM','A','2016-09-15','2016-09-16','150'),
('152305','BOM','DFW','B','2012-01-21','2012-01-22','200'),
('121234','JFK','TPA','A','2015-11-13','2015-11-13','160'),
('569876','JFK','BOM','C','2020-02-07','2020-02-08','130'),
('561689','FRA','DEL','A','2018-04-02','2018-07-02','250'),
('784367','SFO','FRA','A','2019-01-11','2019-01-12','190'),
('561902','IXC','IAH','B','2019-07-05','2019-07-05','200'),
('223056','BOM','DFW','A','2017-03-04','2017-03-05','120'),
('334563','BOM','SFO','B','2021-01-06','2021-01-06','160'),
('923344','IAH','DEL','C','2020-06-05','2020-06-05','180'),
('672515','DEL','BOM','A','2016-05-15','2016-05-16','150'),
('152505','SFO','DFW','B','2012-07-21','2012-07-22','200'),
('121534','JFK','TPA','A','2015-11-14','2015-11-15','160'),
('569576','DFW','BOM','C','2020-03-07','2020-03-08','130'),
('561589','FRA','IAH','A','2018-04-02','2018-04-02','250'),
('784567','SFO','FRA','A','2019-02-11','2019-02-12','190'),
('561502','IXC','IAH','B','2019-08-05','2019-08-05','200'),
('223556','BOM','DFW','A','2017-06-04','2017-06-05','120'),
('334553','BOM','SFO','B','2021-02-06','2021-02-06','160'),
('923544','IAH','DEL','C','2020-12-05','2020-12-05','180')

insert into Ticket(t_no,t_type,flight_no,max_weight,debit,credit,price)
values
('131101','A','672015','46','Y','N','1200'),
('705001','B','152305','46','N','Y','3600'),
('120201','B','121234','46','Y','N','3200'),
('702002','A','569876','46','N','Y','1200'),
('210101','A','561689','46','Y','N','5200'),
('280312','A','784367','46','N','Y','1200'),
('100999','B','561902','46','Y','N','2000'),
('200594','B','223056','46','N','Y','1200'),
('270310','A','334563','46','Y','N','4500'),
('202001','A','923344','46','N','Y','1800'),
('131102','B','672515','46','Y','N','1200'),
('705002','A','152505','46','N','Y','3600'),
('120202','A','121534','46','N','Y','3200'),
('702003','B','569576','46','N','Y','1200'),
('210102','B','561589','46','Y','N','5200'),
('280313','B','784567','46','Y','N','1200'),
('100990','A','561502','46','Y','N','2000'),
('200595','A','223556','46','Y','N','1200'),
('270315','B','334553','46','Y','N','4500'),
('202005','B','923544','46','N','Y','1800')

 insert into Passenger(fname,lname,p_id,sex,b_date,email,ticket_no) values
('Aalaa','Magdy','18182020','F','2001-1-21','aalaa@gmail.com','131101'),
('Abdelrahman','Montasser','40182020','M','2001-4-23','amontsser@gmail.com','705001'),
('Ahmed','Gamal','20182020','M','2002-2-7','ahmed@gmail.com','120201'),
('Clara','William','61182020','F','2001-11-13','clara@gmail.com','702002'),
('Roudina','lasheen','28182020','F','2001-5-7','roudina@gmail.com','210101'),
('momen','ayman','89182020','M','2001-3-3','momen@gmail.com','280312'),
('EzzAldien','Ezzat','42182020','M','2001-3-27','ezz@gmail.com','100999'),
('Omar','moustafa','43182020','M','2001-2-2','omar@gmail.com','200594'),
('lasheen','Mohamed','82182020','M','1966-6-10','lasheen@gmail.com','270310'),
('Gehad','Lasheen','65182020','F','1999-9-10','gehad@gmail.com','202001'),
('Mariem','Magdy','19182020','F','2001-1-22','mariem@gmail.com','131102'),
('Abdelrahman','Ahmed','40162020','M','2009-4-26','abdelrahman@gmail.com','705002'),
('Ramy','Gamal','20182022','M','1992-2-7','ramy@gmail.com','120202'),
('Marcellino','Ramsis','62182020','M','1997-10-20','maroo@gmail.com','702003'),
('Salma','Ahmed','29182020','F','1998-5-20','salma@yahoo.com','210102'),
('Omar','Ayman','99182020','M','2010-12-4','omar55@gmail.com','280313'),
('Liela','Ahmed','52182020','F','2019-3-27','lielaa@gmail.com','100990'),
('Selim','Moustafa','53182020','M','1997-2-2','selim5@gmail.com','200595'),
('Mohamed','Magdy','92182020','M','1971-6-10','mmagdy@gmail.com','270315'),
('Rana','Hossam','75182020','F','1989-9-10','ranah@gmail.com','202005')

insert into P_Telephone(p_id,telephone) values
('18182020','1234556789'),
('40182020','1134565788'),('40182020','1234567757'),
('20182020','1234567587'),('20182020','1234567555'),
('61182020','1234567856'),
('28182020','1034567585'),('28182020','1234567665'),
('89182020','1534567854'),('89182020','1234567454'),
('42182020','1134556783'),('42182020','1234567225'),
('43182020','1034565782'),('43182020','1234567050'),
('82182020','1234565781'),
('65182020','1134565780'),
('19182020','1010556789'),
('40162020','1213555667'), ('40162020','1213555567'),
('20182022','1200250754'),
('62182020','1125355474'), ('62182020','1125355424'),
('29182020','1123532525'),
('29182020','1149205171'),
('52182020','1066465152'), ('52182020','1066545512'),
('53182020','1202024355'),
('92182020','1145552582'),
('75182020','1236355440')

 insert into Fare(fares_type,fares_description,condition,ticket_no) values
('3','BUR','117','131101'),
('3','SDR','158','705001'),('15','KFS','53','705001'),
('3','SDS','79','202005'),('8','SDS','74','202005'),
('4','SDR','158','100999'),('7','SDR','158','100999'),
('4','SBS','42','202001'),('6','SBS','42','202001'),('9','SDS','79','202001'),
('6','KFS','53','705002'),('3','SDR','158','705002'),('11','SDR','158','705002'),
('9','BUR','117','131102'),('14','BUR','117','131102'),
('13','SBS','42','210101'),('14','SBS','42','210101')

 insert into Airport(name, city, country, airport_code) VALUES
('Louisville International Airport','Kentucky','United States',101),
('Chandigarh International Airport','Chandigarh','India',102),
('Dallas/Fort Worth International Airport','Texas','United States',103),
('Indira GandhiInternational Airport','Delhi','India',104),
('Chhatrapati Shivaji International Airport','Maharashtra','India',105),
('San Francisco International Airport','California', 'United States',106),
('Frankfurt Airport','Hesse','Germany',107),
('George Bush Intercontinental Airport','Texas','United States',108),
('John F. Kennedy International Airport','New York','United States',109),
('Tampa International Airport','Florida', 'United States',110)

insert into Airline (name,airline_code) values
('American Airlines','001'),
('Air India Limited','098'),
('Lufthansa','220'),
('British Airways','125'),
('Qatar Airways','157'),
('Jet Airways','589'),
('Emirates Airlines','176'),
('Ethiad Airways','607'),
('Egypt Airlines','118'),
('Kuwait Airlines','578'),
('El jezira Airlines','854'),
('Turkish Airlines','486'),
('Omaneya Airlines','008'),
('Jordan Airlines','879'),
('Singapore Airlines','123')

insert into Airplane (plane_code,type,no_seats,airline_code)values
(9023,'Airbus A380',100,001),
(9033,'Airbus A380',100,098),
(9723,'Airbus A380',100,220),
(9167,'Boeing 747-8',300,125),
(9165,'Boeing 747-8',400,157),
(9168,'Boeing 737 NG/737 MAX',350,589),
(9155,'Supermarine Spitfire',150,879),
(9248,'Lockheed SR-71 Blackbird',200,008),
(9875,'Cirrus SR22',250,879),
(9235,'Lockheed C-130',200,854)

insert into route (r_no,destination,airport_code,plane_code)values
(1,'Heathrow-Edinburgh',101,9023),
(2,'Birmingham-Brussels',102,9033),
(3,'East Midlands-Paris',103,9723),
(4,'Heathrow-Birmingham',104,9167),
(5,'East Midlands-Belfast',105,9165),
(6,'Heathrow-East Midlands',106,9168),
(7,'Heathrow-Teeside',107,9155),
(8,'Heathrow-Liverpool',109,9248),
(9,'Heathrow-Leeds/Bradford',109,9875),
(10,'East Midlands-Liverpool',110,9235)

insert into Plane_flight_port (plane_code,airport_code,flight_no)values
(9023,101,672015),
(9033,102,152305),
(9723,103,121234),
(9167,104,569876),
(9165,105,561689),
(9168,106,784367),
(9155,107,561902),
(9248,108,223056),
(9875,109,334563),
(9235,110,923344),
(9023,110,672515),
(9033,109,152505),
(9723,108,121534),
(9167,107,569576),
(9165,106,561589),
(9168,105,784567),
(9155,104,561502),
(9248,103,223556),
(9875,102,334553),
(9235,101,923544)

insert into Airport_Airplane (airport_code,plane_code) values
(101,9023),
(102,9033),
(103,9723),
(104,9167),
(105,9165),
(106,9168),
(107,9155),
(108,9248),
(109,9875),
(110,9235)
