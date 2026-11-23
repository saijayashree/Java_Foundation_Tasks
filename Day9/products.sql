

use companydb;

create table products(
    product_id int primary key,
    product_name varchar(50),
    category varchar(30),
    quantity int,
    price decimal(10,2)
);

insert into products values
(101,'laptop','electronics',5,50000),
(102,'mouse','electronics',15,500),
(103,'keyboard','electronics',35,1200),
(104,'chair','furniture',8,3000),
(105,'table','furniture',25,5000);

delimiter //

create procedure update_stock()
begin

    declare v_id int;
    declare v_name varchar(50);
    declare v_qty int;
    declare v_newqty int;
    declare finished int default 0;

    declare p_cursor cursor for
    select product_id, product_name, quantity
    from products;

    declare continue handler for not found
    set finished = 1;

    open p_cursor;

    read_loop: loop

        fetch p_cursor
        into v_id, v_name, v_qty;

        if finished = 1 then
            leave read_loop;
        end if;

        if v_qty < 10 then
            set v_newqty = v_qty + 20;

        elseif v_qty between 10 and 30 then
            set v_newqty = v_qty + 10;

        else
            set v_newqty = v_qty;
        end if;

        update products
        set quantity = v_newqty
        where product_id = v_id;

        select v_name as product_name,
               v_qty as old_quantity,
               v_newqty as updated_quantity;

    end loop;

    close p_cursor;

end //

delimiter ;

call update_stock();

select * from products;
