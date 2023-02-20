/*==================== POPULATING TABLES ======================*/

INSERT INTO Patient(id, firstname, lastname, email, sex, state, country, city)
VALUES
(10001,'Rickard','Lamond','rlamond@gmail.com','Male','Mexico','Mexico', 'San Pedro'),
(10002,'Joan','Isgate','Isgatej@gmail.com','Female','Louisiana','United States', 'New Orleans'),
(10003,'Walton','Chantree','walchan@gmail.com','Male','Saskatchewan','Canada', 'Saskatoon')
;

/*Querying the table*/

SELECT *
FROM Patient
;

INSERT INTO Doctor(email, name, sex, patient)
VALUES
('hmssa@healthnetwork.com','Zanab Fahkr','Female', 10001),
('nmssa@healthnetwork.com','Nadine Amir','Female', 10003),
('rdionn@msda.com','Rodrigo Moreno','Male', 10002)
;

/*Querying the table*/

SELECT *
FROM Doctor
;

INSERT INTO Appointment(id, patientid, date, starttime, endtime, classification)
VALUES
(1, 10001, '12/10/2022', '09:30', '10:30', 'Done'),
(2, 10002, '5/21/2023', '11:00', '12:00', 'Upcoming'),
(3, 10003, '1/19/2023', '13:00', '14:00', 'Done'),
(4, 10003, '1/9/2023', '09:30', '10:30', 'Done'),
(5, 10002, '11/16/2022', '12:00', '13:00', 'Done'),
(6, 10003, '10/1/2022', '13:30', '14:30', 'Done'),
(7, 10001, '6/17/2023', '10:30', '11:30', 'Upcoming'),
(8, 10002, '9/9/2023', '14:00', '15:00', 'Upcoming'),
(9, 10003, '2/14/2023', '13:00', '14:30', 'Done'),
(10, 10001, '4/1/2023', '09:45', '10:45', 'Upcoming'),
(11, 10001, '8/16/2023', '9:00', '10:00', 'Upcoming'),
(12, 10003, '2/1/2023', '14:00', '15:00', 'Done')
;

/*Querying the table*/

SELECT *
FROM Appointment
;

/*==================== END TABLE POPULATING ======================*/
