--liquibase formatted sql

-- ***********************************************************************************
-- Author         :  Poojan Reddy
-- Created        :  13-Oct-2016
-- Name           :  eCAB_DML_Scripts_v2.sql
-- Purpose        :  This will insert Hospital entries
-- Schema         :  public
-- Assumption     :  None
-- ***********************************************************************************


-------------TABLE  Hospital Insert SCRIPT :START -----------------------------

INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence'),'RAN02' ,'Royal National Orthopaedic Hospital (Bolsover Street)' ,'W1W 5AQ' ,1 ,'020 8954 2300' ,'enquiries@rnoh.nhs.uk' ,'http://www.rnoh.nhs.uk/' ,'' ,'45-51 Bolsover Street ,   ,   ,  London ,  Greater London' ,51.5230445861816 ,-0.142939388751983,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RBV01' ,'The Christie' ,'M20 4BX' ,1 ,'0161 446 3000' ,'enquiries@christie.nhs.uk' ,'http://www.christie.nhs.uk/' ,'0161 446 3977' ,'550 Wilmslow Road ,  Withington ,   ,  Manchester ,  Greater Manchester' ,53.4297523498535 ,-2.23003482818603,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RGD17' ,'St Mary''s Hospital' ,'LS12 3QE' ,1 ,'0113 279 0121' ,'communications.lypft@nhs.net' ,'http://www.leedsandyorkpft.nhs.uk/home' ,'0113 231 0185' ,'Green Hill Road ,   ,   ,  Leeds ,  West Yorkshire' ,53.8008918762207 ,-1.6118893623352,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RGDBL' ,'Becklin Centre' ,'LS9 7BE' ,1 ,'0113 305 6607' ,'communications.lypft@nhs.net' ,'http://www.leedsandyorkpft.nhs.uk/home' ,'0113 224 3167' ,'Alma Street ,   ,   ,  Leeds ,  West Yorkshire' ,53.8053321838378 ,-1.52444601058959,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RJ701' ,'St George''s Hospital (London)' ,'SW17 0QT' ,1 ,'0208 672 1255' ,'communications@stgeorges.nhs.uk' ,'http://www.stgeorges.nhs.uk' ,'' ,'Blackshaw Road ,   ,   ,  London ,  Greater London' ,51.4267272949218 ,-0.175731509923934,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RJZ03' ,'Dulwich Community Hospital' ,'SE22 8PT' ,1 ,'' ,'' ,'' ,'' ,'East Dulwich Grove ,   ,   ,  London ,  Greater London' ,51.4590759277343 ,-0.0812201276421546,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RKEHC' ,'The Whittington Hospital At Hornsey Central' ,'N8 8JD' ,1 ,'' ,'' ,'' ,'' ,'151 Park Road ,   ,   ,  London ,  Greater London' ,51.5834808349609 ,-0.130848750472068,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RP401' ,'Great Ormond Street Hospital ' ,'WC1N 3JH' ,1 ,'+44 (0)20 7405 9200' ,'' ,'http://www.gosh.nhs.uk' ,'' ,'Great Ormond Street ,   ,   ,  London ,  Greater London' ,51.5222091674804 ,-0.119909524917602,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RP601' ,'Moorfields Eye Hospital (City Road)' ,'EC1V 2PD' ,1 ,'020 7253 3411' ,'info@moorfields.nhs.uk' ,'http://www.moorfields.nhs.uk' ,'020 7253 4696' ,'162 City Road ,   ,   ,  London ,  Greater London' ,51.527244567871 ,-0.0898742750287055,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RP603' ,'Moorfields At St Ann''s Hospital' ,'N15 3TH' ,1 ,'020 7566 2841' ,'info@moorfields.nhs.uk' ,'http://www.moorfields.nhs.uk' ,'' ,'St. Ann''s Hospital ,  St. Ann''s Road ,   ,  London ,  Greater London' ,51.5806617736816 ,-0.092167280614376,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RPY01' ,'The Royal Marsden Hospital (London)' ,'SW3 6JJ' ,1 ,'020 7352 8171' ,'patientcentre@royalmarsden.nhs.uk' ,'http://www.royalmarsden.nhs.uk' ,'020 8661 3335' ,'Fulham Road ,   ,   ,  London ,  Greater London' ,51.4908714294433 ,-0.172797694802284,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RQXM1' ,'Homerton University Hospital' ,'E9 6SR' ,1 ,'020 8510 5555' ,'enquiries@homerton.nhs.uk' ,'http://www.homerton.nhs.uk' ,'020 8510 7608' ,'Homerton Row ,   ,   ,  London ,  Greater London' ,51.5506324768066 ,-0.0460843555629253,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RR801' ,'Leeds General Infirmary' ,'LS1 3EX' ,1 ,'0113 243 2799' ,'' ,'http://www.leedsth.nhs.uk' ,'' ,'Great George Street ,   ,   ,  Leeds ,  West Yorkshire' ,53.8014602661132 ,-1.55211925506591,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RR802' ,'Leeds Dental Hospital' ,'LS2 9LU' ,1 ,'0113 2440111' ,'' ,'http://www.leedsth.nhs.uk' ,'' ,'Clarendon Way ,   ,   ,  Leeds ,  West Yorkshire' ,53.8033752441406 ,-1.55570137500762,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RR803' ,'Cookridge Hospital' ,'LS16 6QB' ,1 ,'(0113) 2673411' ,'' ,'http://www.leedsth.nhs.uk' ,'' ,'Hospital Lane ,   ,   ,  Leeds ,  West Yorkshire' ,53.8462677001953 ,-1.61536109447479,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RR813' ,'St James''s Hospital' ,'LS9 7TF' ,1 ,'0113 243 3144' ,'' ,'http://www.leedsth.nhs.uk' ,'' ,'Beckett Street ,  Beckett Street ,   ,  Leeds ,  West Yorkshire' ,53.8072967529296 ,-1.51906335353851,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RR814' ,'Seacroft Hospital' ,'LS14 6UH' ,1 ,'(0113) 2648164' ,'' ,'http://www.leedsth.nhs.uk' ,'' ,'York Road ,   ,   ,  Leeds ,  West Yorkshire' ,53.8065910339355 ,-1.47088921070098,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RR819' ,'Chapel Allerton Hospital' ,'LS7 4SA' ,1 ,'(0113) 2623404' ,'' ,'http://www.leedsth.nhs.uk' ,'' ,'Chapeltown Road ,   ,   ,  Leeds ,  West Yorkshire' ,53.822639465332 ,-1.52979481220245,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RRV92' ,'Uclh Outreach: The Princess Grace Hospital' ,'W1U 5NY' ,1 ,'' ,'' ,'' ,'' ,'42-52 Nottingham Place ,   ,   ,  London ,  Greater London' ,51.5223388671875 ,-0.153044030070304,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RT302' ,'Royal Brompton Hospital' ,'SW3 6NP' ,1 ,'020 7352 8121' ,'webadmin@rbht.nhs.uk' ,'http://www.rbht.nhs.uk' ,'020 7351 8473' ,'Sydney Street ,   ,   ,  London ,  Greater London' ,51.4897422790527 ,-0.170840546488761,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RW602' ,'North Manchester General Hospital' ,'M8 5RB' ,1 ,'0161 795 4567' ,'enquiries@pat.nhs.uk' ,'http://www.pat.nhs.uk' ,'0161 740 4450' ,'Delaunays Road ,  Crumpsall ,   ,  Manchester ,  Greater Manchester' ,53.5178871154785 ,-2.22947168350219,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RWK61' ,'The Tower Hamlets Centre For Mental Health' ,'E1 4DG' ,1 ,'020 8121 5001' ,'' ,'http://www.elcmht.nhs.uk' ,'' ,'Bancroft Road ,  Mile End ,   ,  London ,  Greater London' ,51.5245056152343 ,-0.042633231729269,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RXV06' ,'Prestwich Hospital' ,'M25 3BL' ,1 ,'0161 773 9121' ,'' ,'' ,'' ,'Bury New Road ,  Prestwich ,   ,  Manchester ,  Greater Manchester' ,53.536750793457 ,-2.29145073890686,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RYJ01' ,'St Mary''s Hospital (HQ)' ,'W2 1NY' ,1 ,'020 3312 6666' ,'' ,'http://www.imperial.nhs.uk/stmarys/index.htm' ,'' ,'Praed Street ,   ,   ,  London ,  Greater London' ,51.5171241760253 ,-0.174197494983673,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RYJ03' ,'Hammersmith Hospital' ,'W12 0HS' ,1 ,'020 3313 1000' ,'' ,'http://www.imperial.nhs.uk/hammersmith/index.htm' ,'' ,'Du Cane Road ,   ,   ,  London ,  Greater London' ,51.5165252685546 ,-0.236643999814987,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RYJ04' ,'Queen Charlotte''s Hospital' ,'W12 0HS' ,1 ,'020 3313 1111' ,'' ,'http://www.imperial.nhs.uk/qcch/index.htm' ,'' ,'Du Cane Road ,   ,   ,  London ,  Greater London' ,51.5165252685546 ,-0.236643999814987,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'RYJ07' ,'Western Eye Hospital' ,'NW1 5QH' ,1 ,'020 3312 6666' ,'' ,'http://www.imperial.nhs.uk/westerneye/index.htm' ,'' ,'153-173 Marylebone Road ,   ,   ,  London ,  Greater London' ,51.5207023620605 ,-0.163315638899803,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'NNH04' ,'Optegra (Manchester Eye Hospital)' ,'M20 2EY' ,1 ,'' ,'' ,'' ,'' ,'One Didsbury Point ,  2 The Avenue ,  Didsbury ,  Manchester ,  Greater Manchester' ,53.4301986694335 ,-2.25012946128845,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'NW611' ,'Wellington Hospital' ,'NW9 9LE' ,1 ,'' ,'' ,'' ,'' ,'Wellington South ,  Wellington Place ,   ,  London ,  Greater London' ,51.5911788940429 ,-0.277843713760375,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'AHN01' ,'Bigfoot Independent Hospital' ,'M13 0XE' ,1 ,'' ,'' ,'' ,'' ,'4 Birch Hall Lane ,  Longsight ,   ,  Manchester ,  Greater Manchester' ,53.4546432495117 ,-2.20593929290771,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'AHN02' ,'Jigsaw Independent Hospital' ,'M20 3ZA' ,1 ,'' ,'' ,'' ,'' ,'134 Palatine Road ,  Didsbury ,   ,  Manchester ,  Greater Manchester' ,53.4239654541015 ,-2.2389121055603,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'AHQ02' ,'Olive Eden Hospital' ,'N17 0ND' ,1 ,'' ,'' ,'' ,'' ,'71 St. Pauls Road ,   ,   ,  London ,  Greater London' ,51.6013107299804 ,-0.0614833049476146,'manual',current_timestamp ,'manual',current_timestamp); 
INSERT INTO hospital(
            id, organisation_code, name, postal_code, hospital_status_id, contact, 
            email, website, fax, address, latitude, longitude, created_by, 
            created_date, modified_by, modified_date)
    VALUES (nextval('hospital_id_sequence') ,'AHQ03' ,'Bloomfield Court Hospital' ,'SE18 7JN' ,1 ,'' ,'' ,'' ,'' ,'69 Bloomfield Road ,  Woolwich ,  Greenwich ,  London ,  Greater London' ,51.4841423034667 ,0.0706757754087448,'manual',current_timestamp ,'manual',current_timestamp); 
