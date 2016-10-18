--liquibase formatted sql

-- ***********************************************************************************
-- Author         :  Poojan Reddy
-- Created        :  12-Oct-2016
-- Name           :  eCAB_DDL_Scripts_v0.sql
-- Purpose        :  This will create tables and corresponding sequences for eCAB POC
-- Schema         :  public
-- Assumption     :  None
-- ***********************************************************************************

---------------------------TABLE DEFINITION:END------------------------------------------------------------

ALTER TABLE referral_request 
DROP column IF EXISTS appointment_id;