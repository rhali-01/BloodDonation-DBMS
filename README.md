# BloodDonation-DBMS🩸


### Problem Statement

Nowadays, blood donation systems that are used have been proven unsuccessful for so many reasons. The system already in use by the blood banks can cause many problems due to it being outdated and need to be used manually. The old system can cause records to be lost due to it being outdated, it does not include accurate data as the new system does and that could lead to a major problem for example: a donor may have a disease that the old system did not record and in which if he donated blood to a patient the disease will be transferred. Blood Donation Management System helps correlate and save recipient data, Donor data and data of the blood bank and hospital data. Making it easier to manage, Save and secure recipients, donors, blood bank and hospital records and make sure the donation process is safe for both the doner and recipient.

### Entities & Attributes Description

Each hospital have many Recipient and every recipient belong to the hospital, each hospital has a unique hospital id, and has hospital name, composite Address (city, dist, street). Each recipient has a unique Recipient id, Recipient name, Recipient phone, Recipient blood type, Recipient health condition. All request sent to blood bank and blood bank receive many requests, blood bank has a unique Blood bank id and has Blood bank name,composite address (city, dist, street), Blood bank contact number. Hospital sends many request and many request are sent by hospital, each request in table request has a unique request id, and has Request date, Request blood type, Request quantity. Each blood bank have one or more donor and every donor belong to blood bank, Donor has a unique Donor id and has Donor name, composite address (city, dist, street), Donor Phone, Donor blood type, Donor health condition.

### DBMS Relational Model

<div>
  <img src="https://github.com/rhali-01/BloodDonation-DBMS/assets/109041560/0382d63d-9bf6-4012-b247-9810ad47702a" alt="Alternative Text" width="600">
</div>

### ER Diagram 

<div>
  <img src="https://github.com/rhali-01/BloodDonation-DBMS/assets/109041560/d3c9311d-4131-444e-8987-e8a146920362" alt="Alternative Text" width="500">
</div>
