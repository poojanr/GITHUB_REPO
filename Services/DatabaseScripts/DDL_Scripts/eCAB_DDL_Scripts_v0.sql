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

create table patient (
	id bigint primary key,
	nhs_number varchar(50) unique,
	dob timestamp not null,
	first_name varchar(100),
	last_name varchar(100),
	contact varchar(50),
	postal_code varchar not null,
	address varchar(250),
	created_by varchar(100),
	created_date timestamp,
	modified_by varchar(100),
	modified_date timestamp
);

create table hospital_status_lookup (
	id int primary key,
	status varchar(20),          -- flag: online/offline
	description varchar(100),
    created_by varchar(100),
    created_date timestamp,
	modified_by varchar(100),
	modified_date timestamp
);

create table hospital (
	id bigint primary key,
	organisation_code varchar(10),
	name varchar(500),
	postal_code varchar(10) not null,
	hospital_status_id int references hospital_status_lookup(id), 
	contact  varchar(20),
	email varchar(50),
	website varchar(100),
	fax varchar(20),
	address varchar(250),
	latitude double precision,
	longitude double precision,
	created_by varchar(100),
	created_date timestamp,
	modified_by varchar(100),
	modified_date timestamp
);

create table service (
	id bigint primary key,
	code varchar(50),           --> version1.1: renamed from name to code
	description varchar(250),
	created_by varchar(100),
	created_date timestamp,
	modified_by varchar(100),
	modified_date timestamp
);

create table hospital_service_lookup (
	id int primary key,
	status varchar(20),          -- flag: available/unavailable
    description varchar(200),	
	created_by varchar(100),
	created_date timestamp,
	modified_by varchar(100),
	modified_date timestamp
);

create table hospital_service (
	id bigint primary key,
	hospital_id int references hospital(id),
	service_id int references service(id),
	slot_start_time timestamp,
	slot_end_time timestamp,
	slot_status_id int references hospital_service_lookup(id),
	created_by varchar(100),
	created_date timestamp,
	modified_by varchar(100),
	modified_date timestamp
);

create table referral_status_lookup (
	id int primary key,
	status varchar(20),
	description varchar(200), -- booked, not_booked, cancelled
	created_by varchar(100),
	created_date timestamp,
	modified_by varchar(100),
	modified_date timestamp
);

create table referral_request (
	id bigint primary key,
    referral_number varchar(12),
	patient_id int references patient(id),	
	service_id int references service(id),
	appointment_id int,
	password varchar(200),
	referral_status_id int references referral_status_lookup(id),
	additional_requirements text,
	referred_by varchar(100),
	referred_date timestamp,
	created_by varchar(100),
	created_date timestamp,
	modified_by varchar(100),
	modified_date timestamp
);

create table appointment_status_lookup (
	id int primary key,
	status varchar(20),   -->  version1.1: changed from flag: available/unavailable to active/inactive
	description varchar(200),
	created_by varchar(100),
	created_date timestamp,
	modified_by varchar(100),
	modified_date timestamp
);

create table appointment_cancel_reason_lookup (
	id int primary key,
    code varchar(200),
	description varchar(200),
	category varchar(50),  -->  version1.1: newly added (patient or provider)
	status varchar(20),    -->  version1.1: purpose changed, to check if the cancel reason is valid or invalid
	created_by varchar(100),
	created_date timestamp,
	modified_by varchar(100),
	modified_date timestamp
);

create table appointment (
	id bigint primary key,
	hospital_service_id int references hospital_service(id),
	referral_id int references referral_request(id),
	cancel_reason int references appointment_cancel_reason_lookup(id),	
	appointment_status_id int references appointment_status_lookup(id),
	created_by varchar(100),
	created_date timestamp,
	modified_by varchar(100),
	modified_date timestamp
);
---------------------------TABLE DEFINITION:END------------------------------------------------------------

---------------------------SEQUNCES:START------------------------------------------------------------------
CREATE SEQUENCE public.appointment_id_sequence INCREMENT 1  START 1;
CREATE SEQUENCE public.hospital_service_id_sequence INCREMENT 1  START 1;
CREATE SEQUENCE public.patient_id_sequence INCREMENT 1  START 1;
CREATE SEQUENCE public.hospital_id_sequence INCREMENT 1  START 1;
CREATE SEQUENCE public.service_id_sequence INCREMENT 1  START 1;
CREATE SEQUENCE public.hospital_status_lookup_id_sequence INCREMENT 1  START 1;
CREATE SEQUENCE public.hospital_service_lookup_id_sequence INCREMENT 1  START 1;
CREATE SEQUENCE public.referral_status_lookup_id_sequence INCREMENT 1  START 1;
CREATE SEQUENCE public.appointment_status_lookup_id_sequence INCREMENT 1  START 1;
CREATE SEQUENCE public.appointment_cancel_reason_lookup_id_sequence INCREMENT 1  START 1;
CREATE SEQUENCE public.referral_request_id_sequence INCREMENT 1  START 1;
 
---------------------------SEQUNCES:END------------------------------------------------------------------


---------------------------CONSTRAINT:START------------------------------------------------------------------------

------------------------------------------------------------------------CONSTRAINT:END--------------------------------------------------------------------------