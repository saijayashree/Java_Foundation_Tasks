DELIMITER //
 
CREATE PROCEDURE loops()
BEGIN
 
  declare i int default 1;
 
 
repeat
 
select i ;
set i=i+1;
until i<5
END repeat;

 
END //
 
DELIMITER ;
 
call loops();