--liquibase formatted sql

-- *********************************************************************
-- Author         :  Poojan Reddy
-- Created        :  12-Oct-2016
-- Name           :  eCAB_DDL_Rollback_Scripts_v0.sql
-- Purpose        :  This is rollback script of eCAB_DDL_Scripts_v0.sql
-- Schema         :  public
-- Assumption     :  None
-- *********************************************************************

DROP TABLE referral_request CASCADE;
DROP TABLE appointment CASCADE;
DROP TABLE hospital_service CASCADE;
DROP TABLE patient CASCADE;
DROP TABLE hospital CASCADE;
DROP TABLE service CASCADE;
DROP TABLE hospital_status_lookup;
DROP TABLE hospital_service_lookup;
DROP TABLE referral_status_lookup;
DROP TABLE appointment_status_lookup;
DROP TABLE appointment_cancel_reason_lookup;

DROP SEQUENCE public.appointment_id_sequence;
DROP SEQUENCE public.hospital_service_id_sequence;
DROP SEQUENCE public.patient_id_sequence;
DROP SEQUENCE public.hospital_id_sequence;
DROP SEQUENCE public.service_id_sequence;
DROP SEQUENCE public.hospital_status_lookup_id_sequence;
DROP SEQUENCE public.hospital_service_lookup_id_sequence;
DROP SEQUENCE public.referral_status_lookup_id_sequence;
DROP SEQUENCE public.appointment_status_lookup_id_sequence;
DROP SEQUENCE public.appointment_cancel_reason_lookup_id_sequence;
DROP SEQUENCE public.referral_request_id_sequence;
 