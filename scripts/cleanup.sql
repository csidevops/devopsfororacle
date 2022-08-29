-- liquibase formatted sql
-- changeset csidevops:20220819-003
BEGIN 
    EXECUTE IMMEDIATE 'DROP TABLE CUSTOMER_MASTER_DATA_BACKUP'; 
EXCEPTION 
     WHEN OTHERS THEN 
        IF SQLCODE != -942 THEN 
          RAISE; 
        END IF; 
END;
/
-- rollback select * from customer_master_data;
