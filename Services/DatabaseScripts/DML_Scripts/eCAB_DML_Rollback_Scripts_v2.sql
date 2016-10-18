--liquibase formatted sql

-- ***********************************************************************************
-- Author         :  Poojan Reddy
-- Created        :  13-Oct-2016
-- Name           :  eCAB_DML_Rollback_Scripts_v2.sql
-- Purpose        :  This will delete the hospital data loaded by eCAB_DML_Scripts_v2
-- Schema         :  public
-- Assumption     :  None
-- ***********************************************************************************

-------------TABLE  Hospital Insert SCRIPT :START -----------------------------
DELETE FROM hospital where id > 2 ;
