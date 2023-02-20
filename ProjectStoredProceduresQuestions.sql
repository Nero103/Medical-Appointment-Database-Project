/* =================== STORED PROCEDURE QUERY QUESTIONS =================================== */

/*Question*/
/*1). Which doctors have upcomming appointments?*/

Create Procedure UpcomingAppointments
As
select (p.firstname + ' ' + p.lastname) as 'patient name', country, state, city,
		p.sex, d.name, d.sex as 'doctor sex' , a.date, a.classification
from patient as p
join appointment as a
on p.id = a.patientid
join doctor as d
on a.patientid = d.patient
where a.classification = 'Upcoming'
order by d.name

/*Execution of Stored Procedure*/

Exec UpcomingAppointments

/*Question*/
/*2). How many appointments does each doctor have with each patient?*/

Create Procedure AppointmentCounter
As
select count(p.id) 'num of appointments', d.name, d.sex as 'doctor sex'
from patient as p
join appointment as a
on p.id = a.patientid
join doctor as d
on a.patientid = d.patient
group by d.name, d.sex
order by [num of appointments] desc

/*Execution of Stored Procedure*/

Exec AppointmentCounter

/*Question*/
/*3). Which patient had the most appointments?*/

Create Procedure PatientVisits
As
select (p.firstname + ' ' + p.lastname) as 'patient name', country, state, city,
		p.sex, count((p.firstname + ' ' + p.lastname)) over (partition by ((p.firstname + ' ' + p.lastname))) as 'total visits'
from patient as p
join appointment as a
on p.id = a.patientid
join doctor as d
on a.patientid = d.patient
order by [Total Visits] desc

/*Execution of Stored Procedure*/

Exec PatientVisits

/* =================== STORED PROCEDURE QUERY QUESTIONS =================================== */
