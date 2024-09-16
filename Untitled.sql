-- Which company produces the most laptops in this dataset?
SELECT Company, COUNT(*) AS laptop_count
FROM new.`laptop_price - dataset`
GROUP BY Company
ORDER BY laptop_count DESC
LIMIT 5;

-- What are the top 5 most common screen resolutions found in the dataset?
SELECT ScreenResolution, COUNT('ScreenResolution') as screen
FROM new.`laptop_price - dataset`
GROUP BY ScreenResolution
ORDER BY screen DESC;

-- What is the average screen size (in inches) across all laptops?
SELECT AVG(Inches) AS average_screen_size
FROM new.`laptop_price - dataset`;

-- Which CPU company (Intel, AMD, etc.) appears most frequently in the dataset?
SELECT CPU_Company,COUNT(*) AS CPU
FROM new.`laptop_price - dataset`
GROUP BY CPU_Company
ORDER BY CPU DESC
LIMIT 2;

-- What is the highest CPU frequency (in GHz) recorded in this dataset?
SELECT `CPU_Frequency (GHz)`, COUNT(`CPU_Frequency (GHz)`) AS FREQ
FROM new.`laptop_price - dataset`
GROUP BY `CPU_Frequency (GHz)`
ORDER BY `CPU_Frequency (GHz)` DESC
LIMIT 5;

-- How many different types of laptops are represented (e.g., Ultrabook, Notebook)?
SELECT 'Type Name',COUNT(*) as type
 FROM new.`laptop_price - dataset`
 Group by 'Type Name';
 
-- What is the most common RAM size (in GB) among the laptops?

SELECT `RAM (GB)`, COUNT(`RAM (GB)`) AS ram
FROM new.`laptop_price - dataset`
GROUP BY `RAM (GB)`
ORDER BY ram DESC
LIMIT 5;

-- Which laptop model has the highest price in the dataset?
SELECT MAX(`Price (Euro)`)
FROM new.`laptop_price - dataset`;

-- How many laptops in the dataset have SSDs for memory storage?
SELECT COUNT(*)
FROM new.`laptop_price - dataset`
WHERE `Memory` LIKE '%SSD%';

-- Which operating system is most frequently installed on the laptops?
SELECT OpSys,COUNT('OpSys') AS OPERATING
FROM new.`laptop_price - dataset`
GROUP BY OpSys
ORDER BY OPERATING DESC
LIMIT 5;

-- What is the lightest laptop by weight in the dataset?
SELECT MIN(`Weight (kg)`)
FROM new.`laptop_price - dataset`;

-- What is the most common GPU company (e.g., Intel, AMD, Nvidia) among the laptops?
SELECT GPU_Company,count(*) as gpu
from new.`laptop_price - dataset`
GROUP BY GPU_Company
ORDER BY gpu DESC
limit 3;

-- How does price vary with CPU frequency (GHz)?
SELECT 
    `CPU_Frequency (GHz)` AS cpu_frequency, 
    AVG(`Price (Euro)`) AS average_price
FROM 
    new.`laptop_price - dataset`
GROUP BY 
    `CPU_Frequency (GHz)`
ORDER BY 
    average_price;

-- Are laptops with higher RAM typically more expensive in this dataset?
SELECT `Price (Euro)`, MAX(`RAM (GB)`) AS RAM
FROM new.`laptop_price - dataset`
GROUP BY `Price (Euro)`
ORDER BY RAM;
  
-- What is the relationship between screen size and weight for the laptops?
SELECT 
    Inches, 
    AVG(`Weight (kg)`) AS weight
FROM 
    new.`laptop_price - dataset`
GROUP BY 
    Inches
ORDER BY 
    weight DESC;
    

-- How does the choice of operating system (e.g., Windows, macOS) affect the price?
SELECT 
    OpSys,
    AVG(`Price (Euro)`) AS price
FROM 
    new.`laptop_price - dataset`
GROUP BY 
    OpSys
ORDER BY 
    price DESC;


-- Are laptops with Retina displays generally more expensive than those without?

SELECT 
    ScreenResolution,
    AVG(`Price (Euro)`) AS price
FROM 
    new.`laptop_price - dataset`
WHERE 
    ScreenResolution LIKE '%Retina%'
GROUP BY 
    ScreenResolution
ORDER BY 
    price DESC;
    
-- What is the average price of laptops from the company Apple?
SELECT Company, AVG(`Price (Euro)`) AS price
FROM new.`laptop_price - dataset`
WHERE Company = 'Apple';

-- Which CPU type (e.g., Core i5, Core i7) appears most often, and how does it affect the price?
SELECT 
    CPU_Type,
    AVG(`Price (Euro)`) AS price
FROM 
    new.`laptop_price - dataset`
GROUP BY 
    CPU_Type
ORDER BY 
    price DESC;
