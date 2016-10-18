--liquibase formatted sql

-- ***********************************************************************************
-- Author         :  Poojan Reddy
-- Created        :  12-Oct-2016
-- Name           :  eCAB_DML_Rollback_Scripts_v1.sql
-- Purpose        :  This will rollback the data updated and inserted by eCAB_DML_Scripts_v1.sql
-- Schema         :  public
-- Assumption     :  None
-- ***********************************************************************************


------------TABLE  patient Delete SCRIPT :START -----------------------------
UPDATE appointment_cancel_reason_lookup SET description =  'OTHER - PATIENT CANCELLATION', modified_date = current_timestamp WHERE id = 1 ;
UPDATE appointment_cancel_reason_lookup SET description =  'CLINIC OVERRUN', modified_date = current_timestamp WHERE id = 2 ;
UPDATE appointment_cancel_reason_lookup SET description =  'PATIENT DIED', modified_date = current_timestamp WHERE id = 3 ;
UPDATE appointment_cancel_reason_lookup SET description =  'PATIENT - ON HOLIDAY', modified_date = current_timestamp WHERE id = 4 ;
UPDATE appointment_cancel_reason_lookup SET description =  'FURTHER INFORMATION REQUIRED', modified_date = current_timestamp WHERE id = 5 ;
UPDATE appointment_cancel_reason_lookup SET description =  'CLINIC CANCELLED', modified_date = current_timestamp WHERE id = 6 ;
UPDATE appointment_cancel_reason_lookup SET description =  'REDIRECTED DUE TO STAFF VACATION', modified_date = current_timestamp WHERE id = 7 ;
UPDATE appointment_cancel_reason_lookup SET description =  'OTHER - PROVIDER CANCELLATION', modified_date = current_timestamp WHERE id = 8 ;
UPDATE appointment_cancel_reason_lookup SET description =  'OUTPATIENT APPOINTMENT NOT REQUIRED', modified_date = current_timestamp WHERE id = 9 ;
UPDATE appointment_cancel_reason_lookup SET description =  'PATIENT ILL', modified_date = current_timestamp WHERE id = 10 ;
UPDATE appointment_cancel_reason_lookup SET description =  'ADDITIONAL REQ UNAVIALABLE FOR THIS APPT', modified_date = current_timestamp WHERE id = 11 ;
UPDATE appointment_cancel_reason_lookup SET description =  'OTHER REASON', modified_date = current_timestamp WHERE id = 12 ;
UPDATE appointment_cancel_reason_lookup SET description =  'PATIENT - CLASHES WITH OTHER APPOINTMENT', modified_date = current_timestamp WHERE id = 13 ;
UPDATE appointment_cancel_reason_lookup SET description =  'SLOT CANCELLED', modified_date = current_timestamp WHERE id = 14 ;
UPDATE appointment_cancel_reason_lookup SET description =  'INAPPROPRIATE SERVICE', modified_date = current_timestamp WHERE id = 15 ;
UPDATE appointment_cancel_reason_lookup SET description =  'INAPPROPRIATE PRIORITY', modified_date = current_timestamp WHERE id = 16 ;
UPDATE appointment_cancel_reason_lookup SET description =  'REDIRECTED DUE TO CONFIDENTIALITY', modified_date = current_timestamp WHERE id = 17 ;
UPDATE appointment_cancel_reason_lookup SET description =  'INTEND TO GO TO PRIVATE', modified_date = current_timestamp WHERE id = 18 ;
UPDATE appointment_cancel_reason_lookup SET description =  'OTHER - REFERRER REQUEST CANCELLATION', modified_date = current_timestamp WHERE id = 19 ;
UPDATE appointment_cancel_reason_lookup SET description =  'PRIORITY CHANGE FOR OTHER REASON', modified_date = current_timestamp WHERE id = 20 ;

------------TABLE  appointment_cancel_reason_lookup Delete SCRIPT :START -----------------------------
DELETE FROM appointment_cancel_reason_lookup WHERE code = 'APPOINTMENT_NOT_REQUIRED'; 