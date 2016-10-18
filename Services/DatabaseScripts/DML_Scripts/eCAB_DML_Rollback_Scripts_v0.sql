--liquibase formatted sql

-- ***********************************************************************************
-- Author         :  Poojan Reddy
-- Created        :  12-Oct-2016
-- Name           :  eCAB_DML_Rollback_Scripts_v0.sql
-- Purpose        :  This will rollback the data inserted by eCAB_DML_Scripts_v0.sql
-- Schema         :  public
-- Assumption     :  None
-- ***********************************************************************************


------------TABLE  patient Delete SCRIPT :START -----------------------------
DELETE FROM patient WHERE id <= 20 ;

-------------TABLE  hospital_service DELETE SCRIPT :START -----------------------------
DELETE FROM hospital_service WHERE ID <= 241 ;

-------------TABLE  hospital Delete SCRIPT :START -----------------------------
DELETE FROM hospital WHERE ID <= 2 ;
	
-------------TABLE  service DELETE SCRIPT :START -----------------------------
DELETE FROM service WHERE ID <=  19 ;

-------------TABLE  hospital_status_lookup Delete SCRIPT :START -----------------------------
DELETE FROM hospital_status_lookup WHERE id <= 2 ;

-------------TABLE  hospital_service_lookup DELETE SCRIPT :START -----------------------------
DELETE FROM hospital_service_lookup WHERE ID <= 2 ;

-------------TABLE  referral_status_lookup DELETE SCRIPT :START -----------------------------
DELETE FROM referral_status_lookup WHERE ID <= 3 ;

-------------TABLE  appointment_status_lookup DELETE SCRIPT :START -----------------------------
DELETE FROM appointment_status_lookup WHERE ID <= 2 ;

-------------TABLE  appointment_cancel_reason_lookup DELETE SCRIPT :START -----------------------------
DELETE FROM appointment_cancel_reason_lookup WHERE ID <= 20 ;
