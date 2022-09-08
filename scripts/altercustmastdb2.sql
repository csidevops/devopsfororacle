-- liquibase formatted sql 
-- changeset csidevops:20220819-006
DELETE FROM CUSTOMER_MASTER_DATA;
ALTER TABLE CUSTOMER_MASTER_DATA  
MODIFY (ZIP_CODE CHAR(10) );
-- rollback DELETE FROM CUSTOMER_MASTER_DATA;
-- rollback ALTER TABLE CUSTOMER_MASTER_DATA MODIFY (ZIP_CODE NUMBER(5) );
-- rollback INSERT INTO CUSTOMER_MASTER_DATA (
-- rollback CUSTOMER_ID, FIRST_NAME, LAST_NAME, HOME_ADDRESS_LINE1, HOME_ADDRESS_LINE2, 
-- rollback CITY, ZIP_CODE, COUNTRY, HOME_PHONE_NUMBER, MOBILE_NUMBER)
-- rollback SELECT CUSTOMER_ID, FIRST_NAME, LAST_NAME, HOME_ADDRESS_LINE1, HOME_ADDRESS_LINE2, 
-- rollback CITY, ZIP_CODE, COUNTRY, HOME_PHONE_NUMBER, MOBILE_NUMBER
-- rollback FROM CUSTOMER_MASTER_DATA_BACKUP 
-- rollback WHERE POSTAL_CODE IS NULL;

-- liquibase formatted sql
-- changeset csidevops:20220819-007
INSERT INTO CUSTOMER_MASTER_DATA (
CUSTOMER_ID, FIRST_NAME, LAST_NAME, HOME_ADDRESS_LINE1, HOME_ADDRESS_LINE2, 
CITY, ZIP_CODE, COUNTRY, HOME_PHONE_NUMBER, MOBILE_NUMBER)
SELECT CUSTOMER_ID, FIRST_NAME, LAST_NAME, HOME_ADDRESS_LINE1, HOME_ADDRESS_LINE2, 
       CITY, 
       CASE WHEN POSTAL_CODE IS NOT NULL THEN POSTAL_CODE
            ELSE CAST (ZIP_CODE AS CHAR(10))
       END,
       COUNTRY, HOME_PHONE_NUMBER, MOBILE_NUMBER
FROM CUSTOMER_MASTER_DATA_BACKUP 
-- rollback DELETE FROM CUSTOMER_MASTER_DATA WHERE ZIP_CODE IN (
-- rollback SELECT POSTAL_CODE FROM CUSTOMER_MASTER_DATA_BACKUP 
-- rollback WHERE POSTAL_CODE IS NOT NULL);
