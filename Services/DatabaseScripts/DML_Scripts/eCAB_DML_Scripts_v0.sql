--liquibase formatted sql

-- ***********************************************************************************
-- Author         :  Poojan Reddy
-- Created        :  12-Oct-2016
-- Name           :  eCAB_DML_Scripts_v0.sql
-- Purpose        :  This will insert data into  tables and corresponding sequences for eCAB POC
-- Schema         :  public
-- Assumption     :  None
-- ***********************************************************************************


------------TABLE  patient INSERT SCRIPT :START -----------------------------
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123121 , '1-JAN-1987' , 'Poojan' , 'Reddy' ,7417443101 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123122 , '1-JAN-1987' , 'Abhishek' , 'Mukherjee' ,7417443102 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123123 , '1-JAN-1987' , 'Arindam' , 'Chatterjee' ,7417443103 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123124 , '1-JAN-1987' , 'Vaibhav' , 'Patil' ,7417443104 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123125 , '1-JAN-1987' , 'Kaushal' , 'Chandwani' ,7417443105 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123126 , '1-JAN-1987' , 'Kajal' , 'Kundu' ,7417443106 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123127 , '1-JAN-1987' , 'Naga' , 'Kadali' ,7417443107 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123128 , '1-JAN-1987' , 'Jelica' , 'Salta' ,7417443108 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123129 , '1-JAN-1987' , 'Siddhesh' , 'Bhandarkar' ,7417443109 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123130 , '1-JAN-1987' , 'Kalpita' , 'Adagatla' ,7417443110 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123131 , '1-JAN-1987' , 'Vikram' , 'Shinde' ,7417443111 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123132 , '1-JAN-1987' , 'Prachi' , 'Dongre' ,7417443112 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123133 , '1-JAN-1987' ,  'Kashif' , 'Ahmed' ,7417443113 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123134 , '1-JAN-1987' , 'Umesh' , 'Dandy' ,7417443114 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123135 , '1-JAN-1987' , 'Manish' , 'Loharuka' ,7417443115 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123136 , '1-JAN-1987' , 'Rajendra'  , 'Paliwal' ,7417443116 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123137 , '1-JAN-1987' , 'Rajiv' , 'Iyer' ,7417443117 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123138 , '1-JAN-1987' , 'Dinesh' , 'Purushothaman' ,7417443118 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123139 , '1-JAN-1987' , 'Krishna' , 'Kuntala' ,7417443119 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);
INSERT INTO patient( id, nhs_number, dob, first_name, last_name, contact, postal_code,  address, created_by, created_date, modified_by, modified_date)     VALUES (nextval('patient_id_sequence') ,7123123140 , '1-JAN-1987' , 'Sriram' , 'Vepa' ,7417443120 , 'LS1 5JL' , 'Mastek 3rd Floor, 36 Park Row, Leeds' , 'manual' ,CURRENT_TIMESTAMP , 'manual' ,CURRENT_TIMESTAMP);



-------------TABLE  hospital_status_lookup INSERT SCRIPT :START -----------------------------
INSERT INTO hospital_status_lookup(id, status, description, created_by, created_date, modified_by, modified_date)     VALUES (nextval('hospital_status_lookup_id_sequence')  , 'ONLINE' , 'Online booking is possible' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_status_lookup(id, status, description, created_by, created_date, modified_by, modified_date)     VALUES (nextval('hospital_status_lookup_id_sequence') , 'OFFLINE' , 'Telephonic booking is possible' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 


-------------TABLE  hospital INSERT SCRIPT :START -----------------------------
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RR813' ,'St James''s Hospital' ,'LS9 7TF' ,1 ,'0113 243 3144' ,'' ,'http://www.leedsth.nhs.uk' ,'' ,'Beckett StreetBeckett StreetLeedsWest Yorkshire' ,53.8072967529296 ,-1.51906335353851, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RR801' ,'Leeds General Infirmary' ,'LS1 3EX' ,1 ,'0113 243 2799' ,'' ,'http://www.leedsth.nhs.uk' ,'' ,'Great George StreetLeedsWest Yorkshire' ,53.8014602661132 ,-1.55211925506591, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
	
UPDATE HOSPITAL SET ADDRESS = 'Great George Street,  ,  Leeds,  West Yorkshire' WHERE ID = 1;

UPDATE HOSPITAL SET ADDRESS = 'Beckett Street,  Beckett Street,  Leeds,  West Yorkshire' WHERE ID = 2;

	
	------------TABLE  service INSERT SCRIPT :START -----------------------------
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,100 , 'GENERAL SURGERY' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,101 , 'UROLOGY' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,102 , 'TRAUMA & ORTHOPAEDICS' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,103 , 'ENT' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,104 , 'OPHTHALMOLOGY' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,105 , 'ORAL SURGERY' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,106 , 'NEUROSURGERY' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,107 , 'PLASTIC SURGERY' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,108 , 'CARDIOTHRACIC SURGERY' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,109 , 'GENERAL MEDICINE' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,110 , 'GASTROENTEROLOGY' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,111 , 'CARDIOLOGY' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,112 , 'DERMATOLOGY' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,113 , 'RESPIRATORY MEDICINE' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,114 , 'NEUROLOGY' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,115 , 'RHEUMATOLOGY' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,116 , 'GERIATRIC MEDICINE' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,117 , 'GYNAECOLOGY' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO service(id, code, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('service_id_sequence') ,118 , 'OTHERS' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 


-------------TABLE  hospital_service_lookup INSERT SCRIPT :START -----------------------------
INSERT INTO hospital_service_lookup(id, status, description, created_by, created_date, modified_by,  modified_date)  VALUES (nextval('hospital_service_lookup_id_sequence') , 'AVAILABLE' , 'Slot for the given service in a hospital is currently available' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service_lookup(id, status, description, created_by, created_date, modified_by,  modified_date)  VALUES (nextval('hospital_service_lookup_id_sequence') , 'UNAVAILABLE' , 'Slot for the given service in a hospital is currently not available' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 


-------------TABLE  referral_status_lookup INSERT SCRIPT :START -----------------------------
INSERT INTO referral_status_lookup(id, status, description, created_by, created_date, modified_by, modified_date)    VALUES (nextval('referral_status_lookup_id_sequence') , 'NOT_BOOKED' , 'Appointment not yet booked' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO referral_status_lookup(id, status, description, created_by, created_date, modified_by, modified_date)    VALUES (nextval('referral_status_lookup_id_sequence') , 'BOOKED' , 'Appointment booked' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO referral_status_lookup(id, status, description, created_by, created_date, modified_by, modified_date)    VALUES (nextval('referral_status_lookup_id_sequence') , 'CANCELLED' , 'Appointment cancelled' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 


-------------TABLE  appointment_status_lookup INSERT SCRIPT :START -----------------------------
INSERT INTO appointment_status_lookup(id, status, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_status_lookup_id_sequence') , 'ACTIVE' , 'Appointment is active' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_status_lookup(id, status, description, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_status_lookup_id_sequence') , 'INACTIVE' , 'Appointment is inactive' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 


-------------TABLE  appointment_cancel_reason_lookup INSERT SCRIPT :START -----------------------------
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'OTHER - PATIENT CANCELLATION' , 'PATIENT' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'CLINIC OVERRUN' , 'PROVIDER' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'PATIENT DIED' , 'PATIENT' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'PATIENT - ON HOLIDAY' , 'PATIENT' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'FURTHER INFORMATION REQUIRED' , 'PATIENT' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'CLINIC CANCELLED' , 'PROVIDER' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'REDIRECTED DUE TO STAFF VACATION' , 'REDIECT' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'OTHER - PROVIDER CANCELLATION' , 'PROVIDER' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'OUTPATIENT APPOINTMENT NOT REQUIRED' , 'PROVIDER' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'PATIENT ILL' , 'PATIENT' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'ADDITIONAL REQ UNAVIALABLE FOR THIS APPT' , 'PROVIDER' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'OTHER REASON' , 'PROVIDER' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'PATIENT - CLASHES WITH OTHER APPOINTMENT' , 'PATIENT' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'SLOT CANCELLED' , 'PROVIDER' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'INAPPROPRIATE SERVICE' , 'PROVIDER' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'INAPPROPRIATE PRIORITY' , 'PROVIDER' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'REDIRECTED DUE TO CONFIDENTIALITY' , 'REDIRECT'  , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'INTEND TO GO TO PRIVATE' , 'PATIENT' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'OTHER - REFERRER REQUEST CANCELLATION' , 'PROVIDER' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO appointment_cancel_reason_lookup(id, status, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'PRIORITY CHANGE FOR OTHER REASON' , 'PROVIDER' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 



-------------TABLE  hospital_service INSERT SCRIPT :START -----------------------------
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-17 08:30:00' , '2016-10-17 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-10-17 09:30:00' , '2016-10-17 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-10-17 10:30:00' , '2016-10-17 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-10-17 11:30:00' , '2016-10-17 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-10-17 12:30:00' , '2016-10-17 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-17 13:30:00' , '2016-10-17 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-10-17 14:30:00' , '2016-10-17 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-10-17 15:30:00' , '2016-10-17 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-10-17 16:30:00' , '2016-10-17 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-10-18 08:30:00' , '2016-10-18 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-18 09:30:00' , '2016-10-18 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-10-18 10:30:00' , '2016-10-18 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-10-18 11:30:00' , '2016-10-18 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-10-18 12:30:00' , '2016-10-18 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-10-18 13:30:00' , '2016-10-18 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-18 14:30:00' , '2016-10-18 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-10-18 15:30:00' , '2016-10-18 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-10-18 16:30:00' , '2016-10-18 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-10-19 08:30:00' , '2016-10-19 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-10-19 09:30:00' , '2016-10-19 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-19 10:30:00' , '2016-10-19 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-10-19 11:30:00' , '2016-10-19 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-10-19 12:30:00' , '2016-10-19 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-10-19 13:30:00' , '2016-10-19 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-10-19 14:30:00' , '2016-10-19 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-19 15:30:00' , '2016-10-19 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-19 16:30:00' , '2016-10-19 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-10-20 08:30:00' , '2016-10-20 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-10-20 09:30:00' , '2016-10-20 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-10-20 10:30:00' , '2016-10-20 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-10-20 11:30:00' , '2016-10-20 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-20 12:30:00' , '2016-10-20 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-10-20 13:30:00' , '2016-10-20 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-10-20 14:30:00' , '2016-10-20 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-10-20 15:30:00' , '2016-10-20 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-10-20 16:30:00' , '2016-10-20 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-21 08:30:00' , '2016-10-21 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-10-21 09:30:00' , '2016-10-21 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-10-21 10:30:00' , '2016-10-21 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-10-21 11:30:00' , '2016-10-21 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-10-21 12:30:00' , '2016-10-21 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-21 13:30:00' , '2016-10-21 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-10-21 14:30:00' , '2016-10-21 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-10-21 15:30:00' , '2016-10-21 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-10-21 16:30:00' , '2016-10-21 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-10-24 08:30:00' , '2016-10-24 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-24 09:30:00' , '2016-10-24 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-10-24 10:30:00' , '2016-10-24 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-10-24 11:30:00' , '2016-10-24 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-10-24 12:30:00' , '2016-10-24 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-10-24 13:30:00' , '2016-10-24 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-24 14:30:00' , '2016-10-24 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-24 15:30:00' , '2016-10-24 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-10-24 16:30:00' , '2016-10-24 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-10-25 08:30:00' , '2016-10-25 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-10-25 09:30:00' , '2016-10-25 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-10-25 10:30:00' , '2016-10-25 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-25 11:30:00' , '2016-10-25 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-10-25 12:30:00' , '2016-10-25 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-10-25 13:30:00' , '2016-10-25 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-10-25 14:30:00' , '2016-10-25 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-10-25 15:30:00' , '2016-10-25 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-25 16:30:00' , '2016-10-25 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-10-26 08:30:00' , '2016-10-26 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-10-26 09:30:00' , '2016-10-26 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-10-26 10:30:00' , '2016-10-26 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-10-26 11:30:00' , '2016-10-26 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-26 12:30:00' , '2016-10-26 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-10-26 13:30:00' , '2016-10-26 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-10-26 14:30:00' , '2016-10-26 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-10-26 15:30:00' , '2016-10-26 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-10-26 16:30:00' , '2016-10-26 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-27 08:30:00' , '2016-10-27 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-10-27 09:30:00' , '2016-10-27 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-10-27 10:30:00' , '2016-10-27 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-10-27 11:30:00' , '2016-10-27 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-10-27 12:30:00' , '2016-10-27 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-10-27 13:30:00' , '2016-10-27 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 6 , '2016-10-27 14:30:00' , '2016-10-27 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 7 , '2016-10-27 15:30:00' , '2016-10-27 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 8 , '2016-10-27 16:30:00' , '2016-10-27 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 9 , '2016-10-28 08:30:00' , '2016-10-28 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 10 , '2016-10-28 09:30:00' , '2016-10-28 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 11 , '2016-10-28 10:30:00' , '2016-10-28 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 12 , '2016-10-28 11:30:00' , '2016-10-28 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 13 , '2016-10-28 12:30:00' , '2016-10-28 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 14 , '2016-10-28 13:30:00' , '2016-10-28 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 15 , '2016-10-28 14:30:00' , '2016-10-28 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 16 , '2016-10-28 15:30:00' , '2016-10-28 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 17 , '2016-10-28 16:30:00' , '2016-10-28 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 6 , '2016-10-29 08:30:00' , '2016-10-29 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 7 , '2016-10-29 09:30:00' , '2016-10-29 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 8 , '2016-10-29 10:30:00' , '2016-10-29 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 9 , '2016-10-29 11:30:00' , '2016-10-29 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 10 , '2016-10-29 12:30:00' , '2016-10-29 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 11 , '2016-10-29 13:30:00' , '2016-10-29 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 12 , '2016-10-29 14:30:00' , '2016-10-29 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 13 , '2016-10-29 15:30:00' , '2016-10-29 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 14 , '2016-10-29 16:30:00' , '2016-10-29 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 15 , '2016-11-01 16:30:00' , '2016-11-19 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 16 , '2016-11-02 08:30:00' , '2016-11-02 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 17 , '2016-11-02 09:30:00' , '2016-11-02 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-11-02 10:30:00' , '2016-11-02 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-11-02 11:30:00' , '2016-11-02 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-11-02 12:30:00' , '2016-11-02 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-11-02 13:30:00' , '2016-11-02 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-11-02 14:30:00' , '2016-11-02 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-11-02 15:30:00' , '2016-11-02 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 6 , '2016-11-02 16:30:00' , '2016-11-02 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 7 , '2016-11-03 08:30:00' , '2016-11-03 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 8 , '2016-11-03 09:30:00' , '2016-11-03 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 9 , '2016-11-03 10:30:00' , '2016-11-03 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 10 , '2016-11-03 11:30:00' , '2016-11-03 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 11 , '2016-11-03 12:30:00' , '2016-11-03 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 12 , '2016-11-03 13:30:00' , '2016-11-03 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 13 , '2016-11-03 14:30:00' , '2016-11-03 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 14 , '2016-11-03 15:30:00' , '2016-11-03 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 15 , '2016-11-03 16:30:00' , '2016-11-03 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 16 , '2016-11-04 08:30:00' , '2016-11-04 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 17 , '2016-11-04 09:30:00' , '2016-11-04 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 6 , '2016-11-04 10:30:00' , '2016-11-04 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 7 , '2016-11-04 11:30:00' , '2016-11-04 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 8 , '2016-11-04 12:30:00' , '2016-11-04 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 9 , '2016-11-04 13:30:00' , '2016-11-04 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 10 , '2016-11-04 14:30:00' , '2016-11-04 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 11 , '2016-11-04 15:30:00' , '2016-11-04 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 12 , '2016-11-04 16:30:00' , '2016-11-04 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 13 , '2016-11-05 08:30:00' , '2016-11-05 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 14 , '2016-11-05 09:30:00' , '2016-11-05 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 15 , '2016-11-05 10:30:00' , '2016-11-05 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-11-05 11:30:00' , '2016-11-05 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-11-05 12:30:00' , '2016-11-05 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-11-05 13:30:00' , '2016-11-05 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-11-05 14:30:00' , '2016-11-05 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-11-05 15:30:00' , '2016-11-05 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-11-05 16:30:00' , '2016-11-05 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 6 , '2016-11-06 08:30:00' , '2016-11-06 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 7 , '2016-11-06 09:30:00' , '2016-11-06 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 8 , '2016-11-06 10:30:00' , '2016-11-06 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 9 , '2016-11-06 11:30:00' , '2016-11-06 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 10 , '2016-11-06 12:30:00' , '2016-11-06 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 11 , '2016-11-06 13:30:00' , '2016-11-06 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 12 , '2016-11-06 14:30:00' , '2016-11-06 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 13 , '2016-11-06 15:30:00' , '2016-11-06 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 14 , '2016-11-06 16:30:00' , '2016-11-06 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 15 , '2016-11-07 08:30:00' , '2016-11-07 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 16 , '2016-11-07 09:30:00' , '2016-11-07 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 17 , '2016-11-07 10:30:00' , '2016-11-07 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 6 , '2016-11-07 11:30:00' , '2016-11-07 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 7 , '2016-11-07 12:30:00' , '2016-11-07 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 8 , '2016-11-07 13:30:00' , '2016-11-07 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 9 , '2016-11-07 14:30:00' , '2016-11-07 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 10 , '2016-11-07 15:30:00' , '2016-11-07 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 11 , '2016-11-07 16:30:00' , '2016-11-07 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 12 , '2016-11-08 08:30:00' , '2016-11-08 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 13 , '2016-11-08 09:30:00' , '2016-11-08 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 14 , '2016-11-08 10:30:00' , '2016-11-08 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 15 , '2016-11-08 11:30:00' , '2016-11-08 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 18 , '2016-11-08 12:30:00' , '2016-11-08 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 19 , '2016-11-08 13:30:00' , '2016-11-08 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-11-08 14:30:00' , '2016-11-08 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-11-08 15:30:00' , '2016-11-08 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-11-08 16:30:00' , '2016-11-08 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-11-09 08:30:00' , '2016-11-09 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-11-09 09:30:00' , '2016-11-09 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 6 , '2016-11-09 10:30:00' , '2016-11-09 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 7 , '2016-11-09 11:30:00' , '2016-11-09 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 8 , '2016-11-09 12:30:00' , '2016-11-09 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 9 , '2016-11-09 13:30:00' , '2016-11-09 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 10 , '2016-11-09 14:30:00' , '2016-11-09 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 11 , '2016-11-09 15:30:00' , '2016-11-09 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 12 , '2016-11-09 16:30:00' , '2016-11-09 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 3 , '2016-11-01 16:30:00' , '2016-11-19 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 4 , '2016-11-02 08:30:00' , '2016-11-02 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 5 , '2016-11-02 09:30:00' , '2016-11-02 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 6 , '2016-11-02 10:30:00' , '2016-11-02 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 7 , '2016-11-02 11:30:00' , '2016-11-02 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 8 , '2016-11-02 12:30:00' , '2016-11-02 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 9 , '2016-11-02 13:30:00' , '2016-11-02 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 10 , '2016-11-02 14:30:00' , '2016-11-02 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 11 , '2016-11-02 15:30:00' , '2016-11-02 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 12 , '2016-11-02 16:30:00' , '2016-11-02 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 13 , '2016-11-03 08:30:00' , '2016-11-03 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 14 , '2016-11-03 09:30:00' , '2016-11-03 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 15 , '2016-11-03 10:30:00' , '2016-11-03 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 16 , '2016-11-03 11:30:00' , '2016-11-03 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 17 , '2016-11-03 12:30:00' , '2016-11-03 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 18 , '2016-11-03 13:30:00' , '2016-11-03 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 19 , '2016-11-03 14:30:00' , '2016-11-03 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 1 , '2016-11-03 15:30:00' , '2016-11-03 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 2 , '2016-11-03 16:30:00' , '2016-11-03 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 3 , '2016-11-04 08:30:00' , '2016-11-04 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 4 , '2016-11-04 09:30:00' , '2016-11-04 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 5 , '2016-11-04 10:30:00' , '2016-11-04 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 6 , '2016-11-04 11:30:00' , '2016-11-04 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 7 , '2016-11-04 12:30:00' , '2016-11-04 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 8 , '2016-11-04 13:30:00' , '2016-11-04 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 9 , '2016-11-04 14:30:00' , '2016-11-04 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 10 , '2016-11-04 15:30:00' , '2016-11-04 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 11 , '2016-11-04 16:30:00' , '2016-11-04 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 12 , '2016-11-05 08:30:00' , '2016-11-05 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 13 , '2016-11-05 09:30:00' , '2016-11-05 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 14 , '2016-11-05 10:30:00' , '2016-11-05 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 15 , '2016-11-05 11:30:00' , '2016-11-05 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 16 , '2016-11-05 12:30:00' , '2016-11-05 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 17 , '2016-11-05 13:30:00' , '2016-11-05 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 18 , '2016-11-05 14:30:00' , '2016-11-05 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 19 , '2016-11-05 15:30:00' , '2016-11-05 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 1 , '2016-11-05 16:30:00' , '2016-11-05 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 2 , '2016-11-06 08:30:00' , '2016-11-06 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 3 , '2016-11-06 09:30:00' , '2016-11-06 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 4 , '2016-11-06 10:30:00' , '2016-11-06 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 5 , '2016-11-06 11:30:00' , '2016-11-06 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 6 , '2016-11-06 12:30:00' , '2016-11-06 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 7 , '2016-11-06 13:30:00' , '2016-11-06 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 8 , '2016-11-06 14:30:00' , '2016-11-06 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 9 , '2016-11-06 15:30:00' , '2016-11-06 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 10 , '2016-11-06 16:30:00' , '2016-11-06 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 11 , '2016-11-07 08:30:00' , '2016-11-07 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 12 , '2016-11-07 09:30:00' , '2016-11-07 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 13 , '2016-11-07 10:30:00' , '2016-11-07 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 14 , '2016-11-07 11:30:00' , '2016-11-07 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 15 , '2016-11-07 12:30:00' , '2016-11-07 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 16 , '2016-11-07 13:30:00' , '2016-11-07 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 17 , '2016-11-07 14:30:00' , '2016-11-07 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 18 , '2016-11-07 15:30:00' , '2016-11-07 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 19 , '2016-11-07 16:30:00' , '2016-11-07 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 1 , '2016-11-08 08:30:00' , '2016-11-08 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 2 , '2016-11-08 09:30:00' , '2016-11-08 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 3 , '2016-11-08 10:30:00' , '2016-11-08 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 4 , '2016-11-08 11:30:00' , '2016-11-08 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 5 , '2016-11-08 12:30:00' , '2016-11-08 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 

