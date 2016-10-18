--liquibase formatted sql

-- ***********************************************************************************
-- Author         :  Poojan Reddy
-- Created        :  13-Oct-2016
-- Name           :  eCAB_DML_Scripts_v1.sql
-- Purpose        :  This will update code and description of appointment_cancel_reason_lookup table
-- Schema         :  public
-- Assumption     :  None
-- ***********************************************************************************


-------------TABLE  appointment_cancel_reason_lookup UPDATE SCRIPT :START -----------------------------

UPDATE appointment_cancel_reason_lookup SET code = 'OTHER_PATIENT_CANCELLATION' , description =  'Other', modified_date = current_timestamp WHERE id = 1 ;
UPDATE appointment_cancel_reason_lookup SET code = 'CLINIC_OVERRUN' , description =  'Clinic over run', modified_date = current_timestamp WHERE id = 2 ;
UPDATE appointment_cancel_reason_lookup SET code = 'PATIENT_DIED' , description =  'Patient has died', modified_date = current_timestamp WHERE id = 3 ;
UPDATE appointment_cancel_reason_lookup SET code = 'PATIENT_ON_HOLIDAY' , description =  'I am on holiday', modified_date = current_timestamp WHERE id = 4 ;
UPDATE appointment_cancel_reason_lookup SET code = 'FURTHER_INFORMATION_REQUIRED' , description =  'I need further information', modified_date = current_timestamp WHERE id = 5 ;
UPDATE appointment_cancel_reason_lookup SET code = 'CLINIC_CANCELLED' , description =  'Clinic has cancelled', modified_date = current_timestamp WHERE id = 6 ;
UPDATE appointment_cancel_reason_lookup SET code = 'REDIRECTED_DUE_TO_STAFF_VACATION' , description =  'Redirected due to staff vacation', modified_date = current_timestamp WHERE id = 7 ;
UPDATE appointment_cancel_reason_lookup SET code = 'OTHER_PROVIDER_CANCELLATION' , description =  'Provider cancellation', modified_date = current_timestamp WHERE id = 8 ;
UPDATE appointment_cancel_reason_lookup SET code = 'OUTPATIENT_APPOINTMENT_NOT_REQUIRED' , description =  'Outpatient appointment not required', modified_date = current_timestamp WHERE id = 9 ;
UPDATE appointment_cancel_reason_lookup SET code = 'PATIENT_ILL' , description =  'I am ill', modified_date = current_timestamp WHERE id = 10 ;
UPDATE appointment_cancel_reason_lookup SET code = 'ADDITIONAL_REQ_UNAVIALABLE_FOR_THIS_APPT' , description =  'Additional requirement unavailable for this appointment', modified_date = current_timestamp WHERE id = 11 ;
UPDATE appointment_cancel_reason_lookup SET code = 'OTHER_REASON' , description =  'Other', modified_date = current_timestamp WHERE id = 12 ;
UPDATE appointment_cancel_reason_lookup SET code = 'PATIENT_CLASHES_WITH_OTHER_APPOINTMENT' , description =  'Clashing with other appointment', modified_date = current_timestamp WHERE id = 13 ;
UPDATE appointment_cancel_reason_lookup SET code = 'SLOT_CANCELLED' , description =  'Slot is cancelled', modified_date = current_timestamp WHERE id = 14 ;
UPDATE appointment_cancel_reason_lookup SET code = 'INAPPROPRIATE_SERVICE' , description =  'Inappropriate service', modified_date = current_timestamp WHERE id = 15 ;
UPDATE appointment_cancel_reason_lookup SET code = 'INAPPROPRIATE_PRIORITY' , description =  'Inappropriate priority', modified_date = current_timestamp WHERE id = 16 ;
UPDATE appointment_cancel_reason_lookup SET code = 'REDIRECTED_DUE_TO_CONFIDENTIALITY' , description =  'Redirected due to confidentiality', modified_date = current_timestamp WHERE id = 17 ;
UPDATE appointment_cancel_reason_lookup SET code = 'INTEND_TO_GO_TO_PRIVATE' , description =  'I intend to go to private', modified_date = current_timestamp WHERE id = 18 ;
UPDATE appointment_cancel_reason_lookup SET code = 'OTHER_REFERRER_REQUEST_CANCELLATION' , description =  'Referrer request for cancellation', modified_date = current_timestamp WHERE id = 19 ;
UPDATE appointment_cancel_reason_lookup SET code = 'PRIORITY_CHANGE_FOR_OTHER_REASON' , description =  'Priority has changed for other reason', modified_date = current_timestamp WHERE id = 20 ;

-------------TABLE  appointment_cancel_reason_lookup INSERT SCRIPT :START -----------------------------

INSERT INTO appointment_cancel_reason_lookup(id, status, code, description, category, created_by, created_date, modified_by, modified_date) VALUES (nextval('appointment_cancel_reason_lookup_id_sequence') , 'VALID' , 'APPOINTMENT_NOT_REQUIRED', 'I no longer require an appointment' , 'PATIENT' , 'manual' ,current_timestamp , 'manual' ,current_timestamp); 