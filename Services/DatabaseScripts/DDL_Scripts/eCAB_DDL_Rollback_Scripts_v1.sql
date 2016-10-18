--liquibase formatted sql

-- *********************************************************************
-- Author         :  Poojan Reddy
-- Created        :  18-Oct-2016
-- Name           :  eCAB_DDL_Rollback_Scripts_v1.sql
-- Purpose        :  This is rollback script of eCAB_DDL_Scripts_v1.sql
-- Schema         :  public
-- Assumption     :  None
-- *********************************************************************

ALTER TABLE REFERRAL_REQUEST 
ADD COLUMN appointment_id INT;
 