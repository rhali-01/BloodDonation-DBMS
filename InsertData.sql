	------------------------ INSERTING RECORDS -----------------------------
INSERT INTO Recipient_A VALUES (1249, 'sara', 'Riyadh', 'Mohammdyah', 'Athba', 'A+', '9665789');
INSERT INTO Recipient_A VALUES (2345, 'Fatima', 'Jeddah', 'Obhur', 'Al-baghwī', 'AB+', '9665432');
INSERT INTO Recipient_A VALUES (9076, 'Rayan', 'Al-Dammam', 'Al-Jalawiyah', 'Turki Al-Atayshan', 'O-', '9664489');
INSERT INTO Recipient_A VALUES (5437, 'Ghaida', 'Jeddah', 'Alrawdah', 'Alkiyal', 'AB-', '9667843');
INSERT INTO Recipient_A VALUES (6781, 'Shahad', 'Jeddah', 'Alnaim', 'Amna bint wahb', 'O-', '9665234');
select * from Recipient_A;
    ------------------------ INSERTING RECORDS -----------------------------
INSERT INTO Hos VALUES (45098,1249);
INSERT INTO Hos VALUES (10087,2345);
INSERT INTO Hos VALUES (30884,9076);
INSERT INTO Hos VALUES (61023,5437);
INSERT INTO Hos VALUES (10088,6781);
select * from Hos;
    ------------------------ INSERTING RECORDS -----------------------------
INSERT INTO Hospital VALUES (45098, 'king Faisal', 'Riyadh', 'Diriyah', 'Al Saber');
INSERT INTO Hospital VALUES (10087, 'Erfan', 'Jeddah', 'Al Sitteen', 'king Fahd st');
INSERT INTO Hospital VALUES (30884 , 'AlHabeeb', 'Dammam', 'AlRawdah', 'Sharg' );
INSERT INTO Hospital VALUES (61023, 'Soliman Fakeeh', 'Jeddah', 'Palestine', 'Al Hamra');
INSERT INTO Hospital VALUES (10088, 'king Fahd', 'Jeddah', 'Bani Malek', 'Bani Malek');
select * from Hospital;
    ------------------------ INSERTING RECORDS -----------------------------
INSERT INTO BloodBank VALUES (21441, 'Jeddah Branch', 'Jeddah', 'Al Balad', 'Al Muassasah Road', 0126480008);
INSERT INTO BloodBank VALUES (31169, 'Dammam Branch', 'Dammam', 'Mohammad bin Saud', 'Malik Khalid', 0138267888);
INSERT INTO BloodBank VALUES (61411, 'Abha Branch', 'Abha', 'Al Andulas', 'Malik Fahad', 0172250160);
INSERT INTO BloodBank VALUES (27568, 'Riyadh Branch', 'Riyadh', 'Al Futah', 'King Faisal', 0114011100);
INSERT INTO BloodBank VALUES (88411, 'Tabuk Branch', 'Tabuk', 'Al Azizia', 'Malik Khalid', 0144327020);
select * from BloodBank;
    ------------------------ INSERTING RECORDS -----------------------------
INSERT INTO Request VALUES (1001,45098,21441,'1-Sep-2021','O+',2);
INSERT INTO Request VALUES (1002,10087,31169,'4-Sep-2021','AB+',1);
INSERT INTO Request VALUES (1003,30884,61411,'11-Nov-2021','A-',3);
INSERT INTO Request VALUES (1004,61023,88411,'7-Aug-2021','B+',1);
INSERT INTO Request VALUES (1005,10088,27568,'22-Dec-2021','O-',3);
select * from Request;
    ------------------------ INSERTING RECORDS -----------------------------
INSERT INTO Donor VALUES (1654, 'Sarah Ahmed', 'Jeddah', 'Almurjan', 'Almurjan', '0543686432', 'O-');
INSERT INTO Donor VALUES (1639, 'Khalid Ali', 'Jeddah', 'Obhur', 'Abir Alqarat', '0506345101', 'AB-');
INSERT INTO Donor VALUES (1642, 'Turki Salem', 'Riyadh', 'Alyasmin', 'Alburj', '0555332954', 'A+');
INSERT INTO Donor VALUES (1633, 'Layan Mohammed', 'Alkhobar', 'Al Qusur', 'Jarir', '0594366555', 'O+');
INSERT INTO Donor VALUES (1620, 'Dana Khalid', 'Riyadh', 'Alnakheel', 'Alnakheel', '0564864576', 'A+');
select * from Donor;
    ------------------------ INSERTING RECORDS -----------------------------
INSERT INTO Donation VALUES (21441, 1639, to_date('17-10-2021', 'dd-mm-yyyy'), 2);
INSERT INTO Donation VALUES (31169, 1639, to_date('6-9-2008', 'dd-mm-yyyy'), 1);
INSERT INTO Donation VALUES (61411, 1654, to_date('9-4-2021', 'dd-mm-yyyy'), 2);
INSERT INTO Donation VALUES (27568, 1642, to_date('10-4-2015', 'dd-mm-yyyy'), 1);
INSERT INTO Donation VALUES (88411, 1654, to_date('18-9-2011', 'dd-mm-yyyy'), 2);
INSERT INTO Donation VALUES (61411, 1633, to_date('9-4-2021', 'dd-mm-yyyy'), 2);
INSERT INTO Donation VALUES (27568, 1620, to_date('10-4-2019', 'dd-mm-yyyy'), 3);
select * from Donation;
    ------------------------ INSERTING RECORDS -----------------------------
INSERT INTO HEALTH_CONDITION VALUES (1249, null);
INSERT INTO HEALTH_CONDITION VALUES (2345, null);
INSERT INTO HEALTH_CONDITION VALUES (5437, 'Blood pressure');
INSERT INTO HEALTH_CONDITION VALUES (6781, null);
INSERT INTO HEALTH_CONDITION VALUES (9076, 'Diabetes');
select * from HEALTH_CONDITION;