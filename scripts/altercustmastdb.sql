-- liquibase formatted sql
-- changeset csidevops:20220819-004
ALTER TABLE CUSTOMER_MASTER_DATA 
ADD (POSTAL_CODE CHAR(10) );

-- rollback ALTER TABLE CUSTOMER_MASTER_DATA DROP COLUMN POSTAL_CODE;

-- liquibase formatted sql
-- changeset csidevops:20220819-005 
INSERT INTO CUSTOMER_MASTER_DATA VALUES(DB_SEQUENCE.nextval, 'James', 'Anderson', '17-20 Arlington St', 'St. James's, 'London', NULL, 'UK', 5612347890, 8901256734, 'NW1 4NP');
INSERT INTO CUSTOMER_MASTER_DATA VALUES(DB_SEQUENCE.nextval, 'John', 'Krasinski', '3E2 Jains Inseli Park', 'APT # 2', 'Chennai', NULL, 'INDIA', 5678912340, 3456012789, '603103');

-- rollback CREATE TABLE CUSTOMER_MASTER_DATA_BACKUP AS SELECT * FROM CUSTOMER_MASTER_DATA;
-- rollback DELETE FROM CUSTOMER_MASTER_DATA WHERE POSTAL_CODE IS NOT NULL;
