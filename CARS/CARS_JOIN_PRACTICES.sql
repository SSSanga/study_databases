-- 자동차 회사명, 자동차이름, 연식


SELECT factorys.COMPANY,car_infors.CAR_NAME,car_infors.YEAR
FROM factorys
	INNER JOIN car_infors
    ON car_infors.COMPANY_ID = factorys.COMPANY_ID;
    
SELECT * FROM factorys;
    

