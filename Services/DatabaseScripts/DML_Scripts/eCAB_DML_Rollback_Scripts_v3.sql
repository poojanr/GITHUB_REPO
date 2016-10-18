--liquibase formatted sql

-- ***********************************************************************************
-- Author         :  Poojan Reddy
-- Created        :  13-Oct-2016
-- Name           :  eCAB_DML_Rollback_Scripts_v3.sql
-- Purpose        :  This will delete the hospital_service data loaded by eCAB_DML_Scripts_v3
-- Schema         :  public
-- Assumption     :  None
-- ***********************************************************************************

-------------TABLE  Hospital Insert SCRIPT :START -----------------------------
DELETE FROM hospital_service where date(slot_start_time) >= '2016-11-10' ;
