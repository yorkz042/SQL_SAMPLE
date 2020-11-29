--練習題答案 

--網址 https://sqlzoo.net/wiki/SELECT_from_WORLD_Tutorial

-- 1. 顯示名稱，洲，人口 
SELECT name, continent, population FROM world ;

-- 2. 顯示人口大於 200000000以上的國家 
SELECT name FROM world
WHERE population >= 200000000 ;

-- 3. 計算人口大於 200000000以上，顯示國名與個人平均所得 
Select name, GDP/population 
  from world
 where population >= 200000000 ; 
 
-- 4. 找出南美洲 國家與人口(單位:百萬)
Select name , population/1000000
  from world 
 where continent = 'South America' 
 
-- 5. 顯示 'France','Germany','Italy'的國名跟人口
select name, population 
  from world 
 where name in ('France','Germany','Italy') 
 
-- 6. 顯示國名包含 United的國家  
Select name
  from world
 where name like '%United%' 
 
-- 7. 顯示面積大於 3000000 或是人口大於 250000000 的國名、人口、面積
Select name,population,area
  from world
 where area >= 3000000
   or population >= 250000000 
   
-- 8. 延續7. 但是不要顯示符合兩個條件的國家
Select name, population, area
  from world
 where (area >= 3000000 and population < 250000000)
    or (area < 3000000 and population >= 250000000)   
	
	
-- 9. 顯示南美洲國家的 名稱,人口,GDP (單位百萬，取到小數點第二位)	
SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000, 2)
FROM world
WHERE continent = 'South America'	


-- 10.
SELECT name, round(gdp/population/1000,0) * 1000
FROM world
WHERE gdp > 1000000000000

-- 11. 
SELECT name,capital
  FROM world
 WHERE  LENGTH(capital) = LENGTH(name)
   
   
-- 12. 
SELECT name, capital
FROM world
where name <> capital 
  and left(name,1) = left(capital,1)    
  
  
--13.
SELECT name
FROM world
where name not like '% %' 
  and name like '%a%' 
  and name like '%e%'
  and name like '%i%'
  and name like '%o%'
  and name like '%u%';  