DELIMITER //
create function callBill(units int)
returns int 
deterministic
begin
declare billAmount int;
if units <= 100 then
set billAmount = 0;
elseif units  <=200 then
set billAmount = (units - 100) * 2;
elseif units  <= 300 then
set billAmount = (100 * 2) + ((units - 200) * 3);
else
set billAmount = (100 * 2) + (100 * 3) + ((units - 300) * 4);
end if;
return billAmount;
end //
DELIMITER ;
select callBill(300) AS BillAmount;