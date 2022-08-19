-- liquibase formatted sql
-- changeset csidevops:20220819-006
ALTER TABLE CUSTOMER_MASTER_DATA  
MODIFY (ZIP_CODE CHAR(10) );
-- rollback ALTER TABLE CUSTOMER_MASTER_DATA MODIFY (ZIP_CODE NUMBER(5) );

-- liquibase formatted sql
-- changeset csidevops:20220819-006
