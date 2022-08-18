-- liquibase formatted sql
-- changeset csidevops:20220818-003
ALTER TABLE CUSTOMER_MASTER_DATA 
ADD (POSTAL_CODE CHAR(10) );
-- rollback ALTER TABLE CUSTOMER_MASTER_DATA DROP COLUMN POSTAL_CODE;

-- liquibase formatted sql
-- changeset csidevops:20220818-004 rollbackSplitStatements:false
INSERT INTO CUSTOMER_MASTER_DATA VALUES(DB_SEQUENCE.nextval, 'James', 'Anderson', '101 Grove Street', 'APT # 2', 'London', NULL, 'UK', 1234567890, 0123456789, 'NW1 4NP');
INSERT INTO CUSTOMER_MASTER_DATA VALUES(DB_SEQUENCE.nextval, 'John', 'Krasinski', '101 Grove Street', 'APT # 2', 'Chennai', NULL, 'INDIA', 1234567890, 0123456789, '603103');
-- rollback BEGIN 
-- rollback    EXECUTE IMMEDIATE 'DROP TABLE CUSTOMER_MASTER_DATA_BACKUP'; 
-- rollback EXCEPTION 
-- rollback     WHEN OTHERS THEN 
-- rollback        IF SQLCODE != -942 THEN 
-- rollback          RAISE; 
-- rollback        END IF; 
-- rollback END;
-- rollback CREATE TABLE CUSTOMER_MASTER_DATA_BACKUP AS SELECT * FROM CUSTOMER_MASTER_DATA;
-- rollback DELETE FROM CUSTOMER_MASTER_DATA WHERE POSTAL_CODE IS NOT NULL;
