--liquibase formatted sql

-- ***********************************************************************************
-- Author         :  Poojan Reddy
-- Created        :  17-Oct-2016
-- Name           :  eCAB_DML_Scripts_v3.sql
-- Purpose        :  This will insert Hospital Services
-- Schema         :  public
-- Assumption     :  None
-- ***********************************************************************************


-------------TABLE  Hospital Service Insert SCRIPT :START -----------------------------
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-11-10 13:30:00' , '2016-11-10 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-11-10 14:30:00' , '2016-11-10 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-11-10 15:30:00' , '2016-11-10 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-11-10 16:30:00' , '2016-11-10 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-11-11 08:30:00' , '2016-11-11 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 6 , '2016-11-11 09:30:00' , '2016-11-11 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 7 , '2016-11-11 10:30:00' , '2016-11-11 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 8 , '2016-11-11 11:30:00' , '2016-11-11 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 9 , '2016-11-11 12:30:00' , '2016-11-11 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 10 , '2016-11-11 13:30:00' , '2016-11-11 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 11 , '2016-11-11 14:30:00' , '2016-11-11 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 12 , '2016-11-11 15:30:00' , '2016-11-11 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 13 , '2016-11-11 16:30:00' , '2016-11-11 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 14 , '2016-11-14 08:30:00' , '2016-11-14 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 15 , '2016-11-14 09:30:00' , '2016-11-14 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 16 , '2016-11-14 10:30:00' , '2016-11-14 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 17 , '2016-11-14 11:30:00' , '2016-11-14 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 18 , '2016-11-14 12:30:00' , '2016-11-14 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 19 , '2016-11-14 13:30:00' , '2016-11-14 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-11-14 14:30:00' , '2016-11-14 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-11-14 15:30:00' , '2016-11-14 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 3 , '2016-11-10 13:30:00' , '2016-11-10 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 4 , '2016-11-10 14:30:00' , '2016-11-10 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 5 , '2016-11-10 15:30:00' , '2016-11-10 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 6 , '2016-11-10 16:30:00' , '2016-11-10 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 7 , '2016-11-11 08:30:00' , '2016-11-11 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 8 , '2016-11-11 09:30:00' , '2016-11-11 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 9 , '2016-11-11 10:30:00' , '2016-11-11 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 10 , '2016-11-11 11:30:00' , '2016-11-11 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 11 , '2016-11-11 12:30:00' , '2016-11-11 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 12 , '2016-11-11 13:30:00' , '2016-11-11 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 13 , '2016-11-11 14:30:00' , '2016-11-11 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 14 , '2016-11-11 15:30:00' , '2016-11-11 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 15 , '2016-11-11 16:30:00' , '2016-11-11 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 16 , '2016-11-14 08:30:00' , '2016-11-14 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 17 , '2016-11-14 09:30:00' , '2016-11-14 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 18 , '2016-11-14 10:30:00' , '2016-11-14 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 19 , '2016-11-14 11:30:00' , '2016-11-14 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 1 , '2016-11-14 12:30:00' , '2016-11-14 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 2 , '2016-11-14 13:30:00' , '2016-11-14 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 3 , '2016-11-14 14:30:00' , '2016-11-14 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 4 , '2016-11-14 15:30:00' , '2016-11-14 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-11-14 16:30:00' , '2016-11-14 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 6 , '2016-11-15 08:30:00' , '2016-11-15 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 7 , '2016-11-15 09:30:00' , '2016-11-15 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 8 , '2016-11-15 10:30:00' , '2016-11-15 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 9 , '2016-11-15 11:30:00' , '2016-11-15 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 10 , '2016-11-15 12:30:00' , '2016-11-15 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 11 , '2016-11-15 13:30:00' , '2016-11-15 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 12 , '2016-11-15 14:30:00' , '2016-11-15 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 13 , '2016-11-15 15:30:00' , '2016-11-15 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 14 , '2016-11-15 16:30:00' , '2016-11-15 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 15 , '2016-11-16 08:30:00' , '2016-11-16 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 16 , '2016-11-16 09:30:00' , '2016-11-16 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 17 , '2016-11-16 10:30:00' , '2016-11-16 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 18 , '2016-11-16 11:30:00' , '2016-11-16 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 19 , '2016-11-16 12:30:00' , '2016-11-16 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-11-16 13:30:00' , '2016-11-16 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 2 , '2016-11-14 16:30:00' , '2016-11-14 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 3 , '2016-11-15 08:30:00' , '2016-11-15 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 4 , '2016-11-15 09:30:00' , '2016-11-15 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 5 , '2016-11-15 10:30:00' , '2016-11-15 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 6 , '2016-11-15 11:30:00' , '2016-11-15 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 7 , '2016-11-15 12:30:00' , '2016-11-15 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 8 , '2016-11-15 13:30:00' , '2016-11-15 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 9 , '2016-11-15 14:30:00' , '2016-11-15 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 10 , '2016-11-15 15:30:00' , '2016-11-15 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 11 , '2016-11-15 16:30:00' , '2016-11-15 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 12 , '2016-11-16 08:30:00' , '2016-11-16 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 13 , '2016-11-16 09:30:00' , '2016-11-16 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 14 , '2016-11-16 10:30:00' , '2016-11-16 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 15 , '2016-11-16 11:30:00' , '2016-11-16 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 16 , '2016-11-16 12:30:00' , '2016-11-16 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 17 , '2016-11-16 13:30:00' , '2016-11-16 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 18 , '2016-11-16 14:30:00' , '2016-11-16 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 19 , '2016-11-16 15:30:00' , '2016-11-16 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 1 , '2016-11-16 16:30:00' , '2016-11-16 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 2 , '2016-11-17 08:30:00' , '2016-11-17 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 3 , '2016-11-17 09:30:00' , '2016-11-17 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 4 , '2016-11-17 10:30:00' , '2016-11-17 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 5 , '2016-11-17 11:30:00' , '2016-11-17 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 15 , '2016-11-17 12:30:00' , '2016-11-17 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 16 , '2016-11-17 13:30:00' , '2016-11-17 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 17 , '2016-11-17 14:30:00' , '2016-11-17 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 18 , '2016-11-17 15:30:00' , '2016-11-17 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 19 , '2016-11-17 16:30:00' , '2016-11-17 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 1 , '2016-11-18 08:30:00' , '2016-11-18 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 2 , '2016-11-18 09:30:00' , '2016-11-18 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 3 , '2016-11-18 10:30:00' , '2016-11-18 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 4 , '2016-11-18 11:30:00' , '2016-11-18 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 5 , '2016-11-18 12:30:00' , '2016-11-18 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 

INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 4 , '2016-11-18 13:30:00' , '2016-11-18 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 5 , '2016-11-18 14:30:00' , '2016-11-18 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 6 , '2016-11-18 15:30:00' , '2016-11-18 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 1 , 7 , '2016-11-18 16:30:00' , '2016-11-18 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 8 , '2016-11-16 13:30:00' , '2016-11-16 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 9 , '2016-11-16 14:30:00' , '2016-11-16 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 10 , '2016-11-16 15:30:00' , '2016-11-16 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 11 , '2016-11-16 16:30:00' , '2016-11-16 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 12 , '2016-11-17 08:30:00' , '2016-11-17 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 13 , '2016-11-17 09:30:00' , '2016-11-17 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 14 , '2016-11-17 10:30:00' , '2016-11-17 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 15 , '2016-11-17 11:30:00' , '2016-11-17 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 16 , '2016-11-17 12:30:00' , '2016-11-17 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 17 , '2016-11-17 13:30:00' , '2016-11-17 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 18 , '2016-11-17 14:30:00' , '2016-11-17 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 19 , '2016-11-17 15:30:00' , '2016-11-17 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 1 , '2016-11-17 16:30:00' , '2016-11-17 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 2 , '2016-11-18 08:30:00' , '2016-11-18 09:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 3 , '2016-11-18 09:30:00' , '2016-11-18 10:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 4 , '2016-11-18 10:30:00' , '2016-11-18 11:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 5 , '2016-11-18 11:30:00' , '2016-11-18 12:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 6 , '2016-11-18 12:30:00' , '2016-11-18 13:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 7 , '2016-11-18 13:30:00' , '2016-11-18 14:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 8 , '2016-11-18 14:30:00' , '2016-11-18 15:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 9 , '2016-11-18 15:30:00' , '2016-11-18 16:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
INSERT INTO hospital_service(
            id, hospital_id, service_id, slot_start_time, slot_end_time, 
            slot_status_id, created_by, created_date, modified_by, modified_date)
    VALUES (nextval('hospital_service_id_sequence') , 2 , 10 , '2016-11-18 16:30:00' , '2016-11-18 17:30:00' , 1, 'manual' ,current_timestamp , 'manual' ,current_timestamp); 
