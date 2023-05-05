-- Display entire table
select * from ['Burden of disease by cause]
order by Country, Year;

select * from ['CVD death rate Vs GDP per Capita']
select * from ['CVD deaths by risk factors']
select * from ['CVD disease death rates']
select * from ['CVD disease deaths by age']

-- Clean ['CVD death rate Vs GDP per Capita'] table
select * from ['CVD death rate Vs GDP per Capita']

-- view rows where Year is less than 1990
select * from ['CVD death rate Vs GDP per Capita']
where Year<1990
-- All blank

-- Delete rows from ['CVD death rate Vs GDP per Capita'] where Year is less than 1990

-- Create view to try this
create view GDP as
select * from ['CVD death rate Vs GDP per Capita']

delete from GDP
where year<1990

-- Delete unknown country (1 row)
delete from GDP
where Country ='Abkhazia'

-- Remove Continent Column
alter table ['CVD death rate Vs GDP per Capita']
drop column Continent



-- Clean ['CVD disease death rates'] table
-- Add column to calculate the percentage death rate (Column/100000) *100
alter table ['CVD disease death rates']
add Percentage_death float;
-- Check to see if column was added
Select * from ['CVD disease death rates']

-- Update the column to calculate % death rate
update ['CVD disease death rates']
set Percentage_death= (([Deaths by 100k]/100000) *100)
-- Exploratory Data Analysis

-- What is the global distribution of cardiovascular deaths by age in the dataset 1990-2019?
select * from ['CVD disease deaths by age']

select sum([Age: Under 5]) as Under_5,
sum([Age: 5-14 years])as btw_5To14,
sum([Age: 15-49 years])as btw_15To49,
sum([Age: 50-69 years])as btw_50To69,
sum([Age: 70+ years])as Above_70
from ['CVD disease deaths by age']


-- What is the global distribution of cardiovascular deaths by country demography in the dataset 1990-2019?
select Country,sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years]) as Sum_of_deaths
from ['CVD disease deaths by age']
group by Country
order by Sum_of_deaths desc


-- What is the prevalence of cardiovascular disease deaths across the years in the dataset?
select Year,
case
when Year =1990 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =1991 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =1992 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =1993 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =1994 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =1995 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =1996 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =1997 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =1998 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =1999 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2000 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2001 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2002 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2003 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2004 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2005 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2006 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2007 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2008 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2009 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2010 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2011 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2012 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2013 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2014 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2015 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2016 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2017 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2018 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
when Year =2019 then sum([Age: Under 5]+[Age: 5-14 years]+[Age: 15-49 years]+[Age: 50-69 years]+[Age: 70+ years])
end as Yearly_global_CVD_deaths
from ['CVD disease deaths by age']
group by year
order by year


-- What are the relationships between various risk factors such as blood pressure, cholesterol, smoking status, and cardiovascular disease? Number of deaths according to the risk factors across the years
select Year,
sum([Diet high in processed meat])as Diet_high_in_processed_meat,
sum([Diet high in sugar-sweetened beverages]) as Diet_high_in_sugar_sweetened_beverages,
sum([Diet low in fiber]) as Diet_low_in_fiber,
sum([Diet low in polyunsaturated fatty acids]) as Diet_low_in_polyunsaturated_fatty_acids,
sum([Diet low in legumes]) as Diet_low_in_legumes,
sum([Diet low in vegetables]) as Diet_low_in_vegetables,
sum([Lead exposure]) as Lead_exposure,
sum([Secondhand smoke]) as Secondhand_smoke,
sum([Diet high in sodium]) as Diet_high_in_sodium,
sum([Diet high in trans fatty acids]) as Diet_high_in_trans_fatty_acids,
sum([Diet low in fruits]) as Diet_low_in_fruits,
sum([Diet low in nuts and seeds]) as Diet_low_in_nuts_and_seeds,
sum([Diet low in seafood omega-3 fatty acids]) as Diet_low_in_seafood_omega_3_fatty_acids,
sum([Diet low in whole grains]) as Diet_low_in_whole_grains,
sum([Particulate matter pollution]) as Particulate_matter_pollution,
sum([Smoking]) as Smoking
from ['CVD deaths by risk factors']
group by year
order by year