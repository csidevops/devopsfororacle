create or replace package test_custmastdatadbcount as

  --%suite(Count the number of rows in customer master data)

  --%test(Returns the count of rows from custmastdatadb)
  procedure row_count;

end;
