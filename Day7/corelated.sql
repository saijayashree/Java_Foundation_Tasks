-- 1. Find products whose price is less than the average price of products in the same category
select *
from products p
where price < (
    select avg(price)
    from products
    where category = p.category
);

-- 2. Find products whose price is equal to the average price of products in the same category
select *
from products p
where price = (
    select avg(price)
    from products
    where category = p.category
);

-- 3. Find products having the maximum quantity within their brand
select *
from products p
where quantity = (
    select max(quantity)
    from products
    where brand = p.brand
);

-- 4. Find products whose price is greater than at least one product in their category
select *
from products p
where price > any (
    select price
    from products
    where category = p.category
      and productid <> p.productid
);

-- 5. Find products whose price is greater than every other product in their category
select *
from products p
where price > all (
    select price
    from products
    where category = p.category
      and productid <> p.productid
);