/*First Query*/

select * from Passenger p , Ticket t
Where p.ticket_no = t.t_no and
t.price > 2000

/*Second Query*/
select COUNT(*) Number_Of_Flights , flight_no
from Flight
where YEAR(departure_date)='2020'
GROUP BY flight_no

/*Third Query*/
select fares_type , fname as First_Name , lname as Last_Name , b_date
from Fare inner join Ticket on Fare.ticket_no = Ticket.t_no
inner join Passenger on Ticket.t_no = Passenger.ticket_no
where YEAR(b_date) >= 2000;

/*Forth Query*/
SELECT r_no , destination , class , Flight.flight_no
from Route inner join Airplane on Route.plane_code = Airplane.plane_code
inner join Plane_flight_port on Airplane.plane_code = Plane_flight_port.plane_code
inner join Flight on Plane_flight_port.flight_no = Flight.flight_no
Where Flight.class = 'A'
ORDER BY Flight.flight_no

/*Fifth Query*/
Select COUNT(Flight.flight_no) Number_of_FLights , flight_no
from Flight
WHERE Flight.too = 'BOM'
Group by flight_no

/*6th Query*/
select CONCAT(fname ,' ', lname) as Passenger_Name
from Passenger inner join Ticket on Passenger.ticket_no = Ticket.t_no
inner join Flight on Ticket.flight_no = Flight.flight_no
where Flight.too = 'FRA'
Order by Passenger_Name


/*7th Query*/
Select COUNT(*) as NumberOfFLights , flight_no
from Flight
where MONTH(Flight.arrival_date) = '04'
group by flight_no

/*8th Query*/
Select Airline.airline_code , Airline.name , Flight.flight_no
from Airline inner join Airplane ON Airline.airline_code = Airplane.airline_code
inner join Plane_flight_port on Airplane.plane_code = Plane_flight_port.plane_code
inner join Flight on Plane_flight_port.flight_no = Flight.flight_no
where DAY(Flight.departure_date) = '02'

/*9th Query*/
Select *
from Passenger
where fname like 'a%'

/*10th Query*/
Select Ticket.t_type , CONCAT(fname , ' ' , lname) as Full_Name
from Ticket inner join Passenger on Ticket.t_no = Passenger.ticket_no
where Passenger.sex = 'M'

/*11th Query*/
Select CONCAT(fname, ' ' ,lname) as Passenger_Name
from Passenger
where Passenger.ticket_no NOT IN(
Select Ticket.t_no
from Ticket inner join Passenger on Ticket.t_no = Passenger.ticket_no
where Ticket.credit='N'
)

/*12th Query*/
select Distinct CONCAT(p.fname , ' ' ,p.lname) as Full_Name , p.ticket_no
from Passenger p
where p.ticket_no IN ( select f.ticket_no from Fare f)

/*13th Query*/
Select *
from Ticket
Where Ticket.price=(
Select MAX(Ticket.price)
from Ticket
)


/*14th Query*/
Select *
FROM Passenger
WHERE ticket_no IN(
SELECT Ticket.t_no FROM Ticket
GROUP BY Ticket.t_no
HAVING SUM(Ticket.price) >3500)

/*15th Query*/
SELECT CONCAT(fname , ' ' ,lname) as full_name
from Passenger inner join Ticket on Ticket.t_no = Passenger.ticket_no
where fname like '%a%' and lname like '%m%' and sex like 'F'


/*16th Query*/
select *
from ticket full outer join fare
on Ticket.t_no=fare.ticket_no
where Ticket.t_no in
(select Ticket.t_no from passenger inner join ticket on Passenger.ticket_no = Ticket.t_no
where Passenger.sex='F')
