-- liquibase formatted sql
-- changeset csidevops:20220819-005
BEGIN 
    EXECUTE IMMEDIATE 'DROP TABLE CUSTOMER_MASTER_DATA_BACKUP'; 
EXCEPTION 
     WHEN OTHERS THEN 
        IF SQLCODE != -942 THEN 
          RAISE; 
        END IF; 
END;
