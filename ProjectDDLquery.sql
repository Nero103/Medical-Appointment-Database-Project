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


/*======================== END TABLES ======================*/
