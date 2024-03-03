	------------------------ CREATE Recipient TABLE -----------------------------
create table Recipient_A(
    RecipientID number(10) primary key not null,
    RecipientName Varchar2(20) not null,
    City Varchar2(20) not null,
    Dist Varchar2(20) not null,
    Street Varchar2(20) not null,
    Recipient_BLOOD_TYPE Varchar2(5) not null,
    Recipient_CONTACT_NUMBER Varchar2(10) not null
);
	------------------------ CREATE Hos TABLE -----------------------------
create table Hos(
    HospitalID number(5) PRIMARY KEY,
    RecipientID number(10),
    constraint fk2 foreign key(RECIPIENTID) References Recipient_A(RECIPIENTID)
);
	------------------------ CREATE Hospital TABLE -----------------------------
Create table Hospital(
    HospitalID number(5) primary key not null,
    HospitalNAME Varchar2(20) not null,
    City Varchar2(10) not null,
    Dist Varchar2(10) not null,
    Street Varchar2(20) not null
);
	------------------------ CREATE BloodBank TABLE -----------------------------
create table BloodBank(
    BloodBankID number(5) primary key,
    BloodBankNAME Varchar2(20) not null,
    City Varchar2(10) not null,
    Dist Varchar2(10) not null,
    Street Varchar2(20) not null,
    BloodBank_CONTACT_NUMBER Varchar2(10) not null
);
	------------------------ CREATE Request TABLE -----------------------------
create table Request(
    RequestID number(5) primary key not null,
    HospitalID number(5) not null,
    BloodBankID number(5) not null,
    RequestDATE date,
    RequestedBLOODTYPE Varchar2(5) not null,
    RequestedQUANTITY number(2) not null,
    constraint Request_fk1 foreign key(HospitalID) References Hospital(HospitalID),
    constraint Request_fk2 foreign key(BloodBankID) References BloodBank(BloodBankID)
);
	------------------------ CREATE Donor TABLE -----------------------------
create table Donor(
    DonorID number(5) primary key not null,
    DonorNAME Varchar2(20) not null,
    City Varchar2(10) not null,
    Dist Varchar2(10) not null,
    Street Varchar2(20) not null,
    Donor_CONTACT_NUMBER Varchar2(10) not null,
    Donor_BLOOD_TYPE Varchar2(5) not null
);
	------------------------ CREATE Doation TABLE -----------------------------
create table Donation(
    BloodBankID number(5),
    DonorID number(5),
    constraint Donation_fk1 foreign key(BloodBankID) References BloodBank(BloodBankID),
    constraint Donation_fk2 foreign key(DonorID) References Donor(DonorID),
    date1 date not null,
    Quantity number(2) not null
);
	------------------------ CREATE Donor_HEALTH_CONDITION TABLE -----------------------------
Create table Donor_HEALTH_CONDITION(
    Donor_HEALTH_CONDITION Varchar2(20)
);
	------------------------ CREATE HEALTH_CONDITION TABLE -----------------------------
Create table HEALTH_CONDITION (
RecipientID Number (10),
Constraint fk1 foreign key(RecipientID) References Recipient_A(RecipientID),
Recipient_HEALTH_CONDITION Varchar2(20)
); 