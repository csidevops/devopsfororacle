create or replace package body test_custmastdatadbcount as
count1 number; 
  procedure row_count is
  begin
    ut.expect( custmastdatadbcount( count1) ).to_be_greater_or_equal(0);
  end;
end;
