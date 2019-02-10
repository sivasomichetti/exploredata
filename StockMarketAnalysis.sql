-- This sql file is created for doing a Stock Market Analysis to generate the signal with the help of moving averages. 
-- Stocks considered for this Analysis are Eicher Motors, Hero Motocorp, Bajaj Auto, TVS Motors, Infosys and TCS

-- Create a new Schema named 'Assignment'
CREATE SCHEMA `Assignment` ;

use Assignment;
SET SQL_SAFE_UPDATES = 0;

-- Ignore warnings while importing the data into tables
SET sql_mode="";

-- ##############################################################################################################################################
-- Create Table for all 6 Stocks named Eicher Motors, Hero, Bajaj Auto, TVS Motors, Infosys and TCS
-- ##############################################################################################################################################

-- Create table for Bajaj Auto 
CREATE TABLE `Bajaj Auto` (
  `Date` text,
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` int(11) DEFAULT NULL,
  `% Deli. Qty to Traded Qty` double DEFAULT NULL,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- Import Bajaj Auto.csv file to `Bajaj Auto` table
LOAD DATA INFILE '/Users/sivakumar/Bajaj Auto.csv' 
INTO TABLE `Bajaj Auto` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@var1,`Open Price`, `High Price`, `Low Price`, `Close Price`, `WAP`,`No.of Shares`,`No. of Trades`, `Total TurnOver (Rs.)`, @var2, @var3,`Spread High-Low`, `Spread Close-Open`)
set Date = STR_TO_DATE(@var1, '%d-%M-%Y'),
`Deliverable Quantity` = nullif(@var2, ''),
`% Deli. Qty to Traded Qty` = nullif(@var3,'');

-- Create table for Eicher Motors 
CREATE TABLE `Eicher Motors` (
  `Date` text,
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` int(11) DEFAULT NULL,
  `% Deli. Qty to Traded Qty` double DEFAULT NULL,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Import Bajaj Auto.csv file to `Eicher Motors` table
LOAD DATA INFILE '/Users/sivakumar/Eicher Motors.csv' 
INTO TABLE `Eicher Motors` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@var1,`Open Price`, `High Price`, `Low Price`, `Close Price`, `WAP`,`No.of Shares`,`No. of Trades`, `Total TurnOver (Rs.)`, @var2, @var3,`Spread High-Low`, `Spread Close-Open`)
set Date = STR_TO_DATE(@var1, '%d-%M-%Y'),
`Deliverable Quantity` = nullif(@var2, ''),
`% Deli. Qty to Traded Qty` = nullif(@var3,'');

-- Create table for Hero Motocorp 
CREATE TABLE `Hero Motocorp` (
  `Date` text,
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` int(11) DEFAULT NULL,
  `% Deli. Qty to Traded Qty` double DEFAULT NULL,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Import Hero Motocorp.csv file to `Hero Motocorp` table
LOAD DATA INFILE '/Users/sivakumar/Hero Motocorp.csv' 
INTO TABLE `Hero Motocorp` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@var1,`Open Price`, `High Price`, `Low Price`, `Close Price`, `WAP`,`No.of Shares`,`No. of Trades`, `Total TurnOver (Rs.)`, @var2, @var3,`Spread High-Low`, `Spread Close-Open`)
set Date = STR_TO_DATE(@var1, '%d-%M-%Y'),
`Deliverable Quantity` = nullif(@var2, ''),
`% Deli. Qty to Traded Qty` = nullif(@var3,'');

-- Create table for Infosys 
CREATE TABLE `Infosys` (
  `Date` text,
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` int(11) DEFAULT NULL,
  `% Deli. Qty to Traded Qty` double DEFAULT NULL,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Import Hero Infosys.csv file to `Infosys` table
LOAD DATA INFILE '/Users/sivakumar/Infosys.csv' 
INTO TABLE `Infosys` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@var1,`Open Price`, `High Price`, `Low Price`, `Close Price`, `WAP`,`No.of Shares`,`No. of Trades`, `Total TurnOver (Rs.)`, @var2, @var3,`Spread High-Low`, `Spread Close-Open`)
set Date = STR_TO_DATE(@var1, '%d-%M-%Y'),
`Deliverable Quantity` = nullif(@var2, ''),
`% Deli. Qty to Traded Qty` = nullif(@var3,'');

-- Create table for TCS 
CREATE TABLE `TCS` (
  `Date` text,
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` int(11) DEFAULT NULL,
  `% Deli. Qty to Traded Qty` double DEFAULT NULL,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Import Hero TCS.csv file to `TCS` table
LOAD DATA INFILE '/Users/sivakumar/TCS.csv' 
INTO TABLE `TCS` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@var1,`Open Price`, `High Price`, `Low Price`, `Close Price`, `WAP`,`No.of Shares`,`No. of Trades`, `Total TurnOver (Rs.)`, @var2, @var3,`Spread High-Low`, `Spread Close-Open`)
set Date = STR_TO_DATE(@var1, '%d-%M-%Y'),
`Deliverable Quantity` = nullif(@var2, ''),
`% Deli. Qty to Traded Qty` = nullif(@var3,'');

-- Create table for TVS Motors
CREATE TABLE `TVS Motors` (
  `Date` text,
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` int(11) DEFAULT NULL,
  `% Deli. Qty to Traded Qty` double DEFAULT NULL,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Import Hero TVS Motors.csv file to `TVS Motors` table
LOAD DATA INFILE '/Users/sivakumar/TVS Motors.csv' 
INTO TABLE `TVS Motors` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@var1,`Open Price`, `High Price`, `Low Price`, `Close Price`, `WAP`,`No.of Shares`,`No. of Trades`, `Total TurnOver (Rs.)`, @var2, @var3,`Spread High-Low`, `Spread Close-Open`)
set Date = STR_TO_DATE(@var1, '%d-%M-%Y'),
`Deliverable Quantity` = nullif(@var2, ''),
`% Deli. Qty to Traded Qty` = nullif(@var3,'');


-- ##############################################################################################################################################
-- Step1: Create a new table named 'bajaj1' containing the date, close price, 20 Day MA and 50 Day MA. (This has to be done for all 6 stocks)
-- ##############################################################################################################################################

create table bajaj1 as 
	select b1.Date,
			b1.`Close Price`,
            if(b1.row_number > 19, b1.`20 Day MA`,NULL) as '20 Day MA',
            if(b1.row_number > 49, b1.`50 Day MA`,NULL) as '50 Day MA'
            from 
				(select Date,
					row_number() over (order by Date asc) as 'row_number',
					`Close Price`,
					AVG(`Close Price`) over(order by Date rows 19 preceding) as '20 Day MA',
					AVG(`Close Price`) over(order by Date rows 49 preceding) as '50 Day MA'
					from Assignment.`Bajaj Auto`) as b1;
    
create table eicher1 as 
	select b1.Date,
			b1.`Close Price`,
            if(b1.row_number > 19, b1.`20 Day MA`,NULL) as '20 Day MA',
            if(b1.row_number > 49, b1.`50 Day MA`,NULL) as '50 Day MA'
            from 
				(select Date,
					row_number() over (order by Date asc) as 'row_number',
					`Close Price`,
					AVG(`Close Price`) over(order by Date rows 19 preceding) as '20 Day MA',
					AVG(`Close Price`) over(order by Date rows 49 preceding) as '50 Day MA'
					from Assignment.`Eicher Motors`) as b1;

create table hero1 as 
	select b1.Date,
			b1.`Close Price`,
            if(b1.row_number > 19, b1.`20 Day MA`,NULL) as '20 Day MA',
            if(b1.row_number > 49, b1.`50 Day MA`,NULL) as '50 Day MA'
            from 
				(select Date,
					row_number() over (order by Date asc) as 'row_number',
					`Close Price`,
					AVG(`Close Price`) over(order by Date rows 19 preceding) as '20 Day MA',
					AVG(`Close Price`) over(order by Date rows 49 preceding) as '50 Day MA'
					from Assignment.`Hero Motocorp`) as b1;


create table infosys1 as 
	select b1.Date,
			b1.`Close Price`,
            if(b1.row_number > 19, b1.`20 Day MA`,NULL) as '20 Day MA',
            if(b1.row_number > 49, b1.`50 Day MA`,NULL) as '50 Day MA'
            from 
				(select Date,
					row_number() over (order by Date asc) as 'row_number',
					`Close Price`,
					AVG(`Close Price`) over(order by Date rows 19 preceding) as '20 Day MA',
					AVG(`Close Price`) over(order by Date rows 49 preceding) as '50 Day MA'
					from Assignment.`Infosys`) as b1;

create table tcs1 as 
	select b1.Date,
			b1.`Close Price`,
            if(b1.row_number > 19, b1.`20 Day MA`,NULL) as '20 Day MA',
            if(b1.row_number > 49, b1.`50 Day MA`,NULL) as '50 Day MA'
            from 
				(select Date,
					row_number() over (order by Date asc) as 'row_number',
					`Close Price`,
					AVG(`Close Price`) over(order by Date rows 19 preceding) as '20 Day MA',
					AVG(`Close Price`) over(order by Date rows 49 preceding) as '50 Day MA'
					from Assignment.`TCS`) as b1;

create table tvs1 as 
	select b1.Date,
			b1.`Close Price`,
            if(b1.row_number > 19, b1.`20 Day MA`,NULL) as '20 Day MA',
            if(b1.row_number > 49, b1.`50 Day MA`,NULL) as '50 Day MA'
            from 
				(select Date,
					row_number() over (order by Date asc) as 'row_number',
					`Close Price`,
					AVG(`Close Price`) over(order by Date rows 19 preceding) as '20 Day MA',
					AVG(`Close Price`) over(order by Date rows 49 preceding) as '50 Day MA'
					from Assignment.`TVS Motors`) as b1;


-- ##############################################################################################################################################
-- Step2: Create a master table containing the date and close price of all the six stocks. (Column header for the price is the name of the stock)
-- ##############################################################################################################################################

CREATE TABLE StockMaster as (
SELECT
bj.Date,
bj.`Close Price` as 'Bajaj',
tc.`Close Price` as 'TCS',
tv.`Close Price` as 'TVS',
inf.`Close Price` as 'Infosys',
ei.`Close Price` as 'Eicher',
hm.`Close Price` as 'Hero'
from `Bajaj Auto` bj
inner join `TCS` tc
on bj.Date = tc.Date
left join `TVS Motors` tv
on bj.Date = tv.Date
left join `Infosys` inf
on bj.Date = inf.Date
left join `Eicher Motors` ei
on bj.Date = ei.Date
left join `Hero Motocorp` hm
on bj.Date = hm.Date);

-- #############################################################################################################################################################
-- Step3: Use the table created in Part(1) to generate buy and sell signal. Store this in another table named 'bajaj2'. Perform this operation for all stocks.
-- #############################################################################################################################################################

create table bajaj2 as 
		select Date,
				`Close Price`,
				CASE 
					WHEN (`20 Day MA` > `50 Day MA`) and lag(`20 Day MA`,1) over (order by Date asc)<lag(`50 Day MA`,1) over (order by Date asc)  THEN 'Buy'
					WHEN (`20 Day MA` < `50 Day MA`) and lag(`20 Day MA`,1) over (order by Date asc)>lag(`50 Day MA`,1) over (order by Date asc) THEN 'Sell'
				ELSE 'Hold'
				END as 'Signal'
			from bajaj1;


create table eicher2 as 
		select Date,
				`Close Price`,
				CASE 
					WHEN (`20 Day MA` > `50 Day MA`) and lag(`20 Day MA`,1) over (order by Date asc)<lag(`50 Day MA`,1) over (order by Date asc)  THEN 'Buy'
					WHEN (`20 Day MA` < `50 Day MA`) and lag(`20 Day MA`,1) over (order by Date asc)>lag(`50 Day MA`,1) over (order by Date asc) THEN 'Sell'
				ELSE 'Hold'
				END as 'Signal'
			from eicher1;

create table hero2 as 
		select Date,
				`Close Price`,
				CASE 
					WHEN (`20 Day MA` > `50 Day MA`) and lag(`20 Day MA`,1) over (order by Date asc)<lag(`50 Day MA`,1) over (order by Date asc)  THEN 'Buy'
					WHEN (`20 Day MA` < `50 Day MA`) and lag(`20 Day MA`,1) over (order by Date asc)>lag(`50 Day MA`,1) over (order by Date asc) THEN 'Sell'
				ELSE 'Hold'
				END as 'Signal'
			from hero1;

create table infosys2 as 
		select Date,
				`Close Price`,
				CASE 
					WHEN (`20 Day MA` > `50 Day MA`) and lag(`20 Day MA`,1) over (order by Date asc)<lag(`50 Day MA`,1) over (order by Date asc)  THEN 'Buy'
					WHEN (`20 Day MA` < `50 Day MA`) and lag(`20 Day MA`,1) over (order by Date asc)>lag(`50 Day MA`,1) over (order by Date asc) THEN 'Sell'
				ELSE 'Hold'
				END as 'Signal'
			from infosys1;


create table tcs2 as 
		select Date,
				`Close Price`,
				CASE 
					WHEN (`20 Day MA` > `50 Day MA`) and lag(`20 Day MA`,1) over (order by Date asc)<lag(`50 Day MA`,1) over (order by Date asc)  THEN 'Buy'
					WHEN (`20 Day MA` < `50 Day MA`) and lag(`20 Day MA`,1) over (order by Date asc)>lag(`50 Day MA`,1) over (order by Date asc) THEN 'Sell'
				ELSE 'Hold'
				END as 'Signal'
			from tcs1;



create table tvs2 as 
		select Date,
				`Close Price`,
				CASE 
					WHEN (`20 Day MA` > `50 Day MA`) and lag(`20 Day MA`,1) over (order by Date asc)<lag(`50 Day MA`,1) over (order by Date asc)  THEN 'Buy'
					WHEN (`20 Day MA` < `50 Day MA`) and lag(`20 Day MA`,1) over (order by Date asc)>lag(`50 Day MA`,1) over (order by Date asc) THEN 'Sell'
				ELSE 'Hold'
				END as 'Signal'
			from tvs1;



-- #############################################################################################################################################################
-- Step4: Create a User defined function, that takes the date as input and returns the signal for that particular day (Buy/Sell/Hold) for the Bajaj stock
-- #############################################################################################################################################################

DELIMITER $$

create function StockSignal (inDate date)
	returns varchar(5)
    deterministic
begin
	declare stocksignal varchar(5);
	if(inDate is NOT NULL) then
		set stocksignal = (select `Signal` from bajaj2 where Date = inDate);
	end if;
	return stocksignal;
end
$$
DELIMITER ;

select Stocksignal('2016-08-31');
