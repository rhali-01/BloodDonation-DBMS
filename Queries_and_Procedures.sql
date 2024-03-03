    ------------------------ QUERY -----------------------------
-- The following query is to display, donor id, their name and the blood bank id where they donate: --
select Donor.DonorID, Donor.DonorNAME, Donation.BloodBankID
From Donor JOIN Donation
ON (Donor.DonorID = Donation.DonorID)
ORDER BY DonorID
    ------------------------ QUERY -----------------------------
-- The aim of the query is to show the quantity of blood bags available in each blood bank branch: --
SELECT Donation.BloodBankID,
SUM(Donation.Quantity) as Available_Blood_Bags
From Donation
GROUP by Donation.BloodBankID
ORDER BY Donation.BloodBankID
    ------------------------ QUERY -----------------------------
-- The purpose of this query is to find bags of blood type A+: --
SELECT sum(Quantity) as A_PLUS_Blood_Bags
FROM Donation WHERE DonorID
IN ( SELECT DonorID FROM Donor WHERE DONOR_BLOOD_TYPE='A+')
    ------------------------ QUERY -----------------------------
-- The query below displays the donor ID and name of the person who donates the most blood bags:--
Select Donor.DonorID, Donor.DonorNAME, Donation.Quantity
From Donor, Donation
Where Donor.DonorID = Donation.DonorID
And Quantity IN (Select MAX(Quantity) From Donation)
    ------------------------ STORED PROCEDURE -----------------------------
/* The purpose of the procedure is to display the hospital ID, blood bank ID, 
    and request date for a specific request ID.*/
Create or Replace Procedure get_request_info (
req_num IN Request.RequestID%Type)
AS
req_hos Request.HospitalID%Type;
req_blood Request.BloodBankID%Type;
req_date Request.RequestDate%Type;
Begin
  Select HospitalID, BloodBankID, RequestDate INTO req_hos, req_blood, req_date
  From Request Where RequestID = req_num;

  DBMS_OUTPUT.PUT_LINE('Request ID: ' || req_num);
  DBMS_OUTPUT.PUT_LINE('Hospital ID: ' || req_hos);
  DBMS_OUTPUT.PUT_LINE('Blood Bank ID: ' || req_blood);
  DBMS_OUTPUT.PUT_LINE('Request Date: ' || req_date);
END;

Exec get_request_info(1003)
    ------------------------ STORED PROCEDURE -----------------------------
/* The purpose of this procedure is to update the contact number for a specific donor identified by their donor ID: */
CREATE OR REPLACE PROCEDURE update_donor_contact IS
BEGIN
  UPDATE donor
  SET Donor_CONTACT_NUMBER = '0534523536'
  WHERE donorID = 1620;
  COMMIT;
END;
EXEC update_donor_contact;
    ------------------------ STORED PROCEDURE -----------------------------
/* The purpose of this procedure is to display the ID, name, city, and district of a hospital based on a given hospital ID: */
CREATE OR REPLACE PROCEDURE get_hospital_info (hosID NUMBER) IS
  h_hospital hospital%ROWTYPE;
BEGIN
  SELECT *
  INTO h_hospital
  FROM hospital
  WHERE hospitalID = hosID;

  DBMS_OUTPUT.PUT_LINE(h_hospital.hospitalID || ' ' || h_hospital.hospitalName || ' ' || h_hospital.City || ' ' || h_hospital.Dist);
END;
Exec get_hospital_info(45098)