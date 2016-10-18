-- Test Data --
-- For Referral: Insert into Referral Request
-- For booking: Insert into Appointment, update hospital_service and referral_request
-- For cancellation: update referral_request, appointment, hospital_service


-- Not Booked --- 
insert into referral_request (id, referral_number, patient_id, service_id, appointment_id, password, referral_status_id, additional_requirements, referred_by, referred_date, created_by, created_date) values (nextval('referral_request_id_sequence'), '000000000001', 1, 1, null, 'fmEcSayXTEq0H1zCBhuQ8Q==', 1, 'Transport, Interpreter', 'Test', '2016-09-15 12:24:45.745', 'Test', '2016-09-15 12:24:45.745');

insert into referral_request (id, referral_number, patient_id, service_id, appointment_id, password, referral_status_id, additional_requirements, referred_by, referred_date, created_by, created_date) values (nextval('referral_request_id_sequence'), '000000000002', 2, 1, null, 'fmEcSayXTEq0H1zCBhuQ8Q==', 1, 'Transport, Interpreter', 'Test', '2016-09-15 12:24:45.745', 'Test', '2016-09-15 12:24:45.745');

insert into referral_request (id, referral_number, patient_id, service_id, appointment_id, password, referral_status_id, additional_requirements, referred_by, referred_date, created_by, created_date) values (nextval('referral_request_id_sequence'), '000000000003', 3, 1, null, 'fmEcSayXTEq0H1zCBhuQ8Q==', 1, 'Transport, Interpreter', 'Test', '2016-09-15 12:24:45.745', 'Test', '2016-09-15 12:24:45.745');

-- Booked ---  

insert into referral_request (id, referral_number, patient_id, service_id, appointment_id, password, referral_status_id, additional_requirements, referred_by, referred_date, created_by, created_date) values (nextval('referral_request_id_sequence'), '000000000004', 1, 2, null, 'fmEcSayXTEq0H1zCBhuQ8Q==', 1, 'Transport, Interpreter', 'Test', '2016-09-15 12:24:45.745', 'Test', '2016-09-15 12:24:45.745');

insert into referral_request (id, referral_number, patient_id, service_id, appointment_id, password, referral_status_id, additional_requirements, referred_by, referred_date, created_by, created_date) values (nextval('referral_request_id_sequence'), '000000000005', 2, 2, null, 'fmEcSayXTEq0H1zCBhuQ8Q==', 1, 'Transport, Interpreter', 'Test', '2016-09-15 12:24:45.745', 'Test', '2016-09-15 12:24:45.745');

insert into referral_request (id, referral_number, patient_id, service_id, appointment_id, password, referral_status_id, additional_requirements, referred_by, referred_date, created_by, created_date) values (nextval('referral_request_id_sequence'), '000000000006', 3, 2, null, 'fmEcSayXTEq0H1zCBhuQ8Q==', 1, 'Transport, Interpreter', 'Test', '2016-09-15 12:24:45.745', 'Test', '2016-09-15 12:24:45.745');

insert into appointment values(nextval('appointment_id_sequence'),2,4,null,1,'Test',CURRENT_TIMESTAMP,'Test',CURRENT_TIMESTAMP);
insert into appointment values(nextval('appointment_id_sequence'),7,5,null,1,'Test',CURRENT_TIMESTAMP,'Test',CURRENT_TIMESTAMP);
insert into appointment values(nextval('appointment_id_sequence'),12,6,null,1,'Test',CURRENT_TIMESTAMP,'Test',CURRENT_TIMESTAMP);

update hospital_service set slot_status_id = 2
where id in (2,7,12);

update referral_request set referral_status_id = 2,appointment_id = 1 where id = 4;
update referral_request set referral_status_id = 2,appointment_id = 2 where id = 5;
update referral_request set referral_status_id = 2,appointment_id = 3 where id = 6;

-- Cancelled -- 

update referral_request set referral_status_id = 1,appointment_id = null where id = 6;
update appointment set appointment_status_id = 2, cancel_reason = 10 where id = 3;
update hospital_service set slot_status_id = 1 where id = 12;
