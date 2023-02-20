/* ======================= TABLES ========================*/


Create Table Patient (
id int not null,
firstname varchar(40) not null,
lastname varchar(40) not null,
email varchar(40),
sex varchar(25),
state varchar(40) not null,
country varchar(40) not null,
city varchar(40) not null,
PRIMARY KEY (id)
)

Create Table Appointment (
id int not null,
date Date not null,
starttime Time not null,
endtime Time not null,
classification varchar(40)
PRIMARY KEY (id)
)

Create Table Doctor (
email varchar(40) not null,
name varchar(40) not null,
sex varchar(25),
patient int not null,
PRIMARY KEY (email),
Foreign Key (patient) REFERENCES Patient (id)
)

Create Table Diagnoses (
diagnoid int not null,
appointment int not null,
doctor varchar(40) not null,
doctoremail varchar(40) not null,
diagnosis varchar(40) not null,
prescription varchar(50) not null,
Foreign Key (appointment) REFERENCES Appointment (id),
Foreign Key (email) REFERENCES Doctor (email),
Primary Key (diagnoid)
)

/*======================== END TABLES ======================*/
