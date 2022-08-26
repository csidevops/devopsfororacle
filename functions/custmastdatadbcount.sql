create or replace function custmastdatadbcount( count1 integer ) return integer
is
table_count number;
begin
    select count(*) into table_count from customer_master_data;
    return table_count;
end;
