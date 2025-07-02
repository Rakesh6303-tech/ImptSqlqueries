-- Single Row Functions
   -- is used to return result for every input/ record.
-- Types of SRF
 -- MSDWCC

 1) MathFunction : have Basically Mod(),Round(),ceil(), floor(), truncate()
  -- mod() : used to get the remainder value after performing division.
     select mod(125,3) from dual; -- O/p 2
  -- Round() : used to round up the values at the specified position
     select round(1234.678,2) from dual;  -- O/P  1234.68
  -- truncate() : used to remove values at particular specified position
     select truncate(1234.678,2) from dual; -- O/P 1234.67
 --  ceil() : return the integer value that is greater or equal to for the specified value
     select ceil(12.01) from dual;  --   O/P  13
 -- floor() : return the integer value that is less than equal to for the specified value
    select floor(12.32) from dual;  --   O/P  12

 2) WindowFunction : allows to solve query problems in new easier ways and with better performance
   -- rank() : It'll assign the rank to values in the specified column. But if the same value is present, the rank will be skipped
       select salary, rank() over(order by salary desc) from employee  -- Syntax 
   -- dense_rank() : Assigns a Rank to every row within its partionbased on the Order By Clause.It'll assign the same rank to the rows with equal values are present
       select salary, dense_rank() over(order by salary desc) from employee  -- syntax
   -- row_number() : is used to  assigns a sequientail number to each row in the result set. The first number begins with one.
       select salary, row_number() over(order by salary desc) from employee  -- syntax

-3) Comparison Functions
      -- isnull() : this funct() takes only one argument /parameter if the argument is null it will return 1, otherwise return 0
         select isnull(null);  -- O/P : 1
         select isnull(1);     -- O/P : 0
      -- coalesce() : takes TWo Arguments, if first argument is null, 
                 --It'll replace with second argument value and It'll display that, if the first argument is not null it'll display first argument only.
         select coalesce(null,1);  -- O/P  1
         select coalesce(2,3);     -- O/P  2

 4) Control Flow Functions
       -- case() : is a control flow function  structure that allows You to add if-else logic to a query
         select salary, case when e_fname = "rakesh" then salary*10/100
              when e_fname ="pradeed" then salary*15/100
              else salary*20/100 
              end
        from employee;  -- above query checking multiple conditions and for each conditoon, we are fetching seperate data.
       -- if() : one of the mysql control flow  function that returns a value based on a conditon
          select if(5=5, 'true', 'false');   -- O/P  true
      -- ifnull() :  accepts two arguments and returns first argument if it in not null. Otherwise, the ifnull function returns second argument.
          select ifnull(null, 0);   -- O/P  0
      -- nullif() :  accepts 2 argumnets. the nullif function returns if the first argument is equal to the second argument, otherwise it returns the first argument.
        select nullif(5,5);   -- O/P   NULL

 5)  String Functions
       -- Types : upper(), lower(), concat() , length() , substr() , instr() , replace(), ltrim(), rtrim() 

 6)  Date Functions 
       -- Types : curdate() , now(), day(), month(), year(), datediff(), date_add(), last_day() , timestampdiff() , extract()
       
