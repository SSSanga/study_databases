
SELECT user.USER,results.*
FROM user
 INNER JOIN results
 ON user.USER_ID=results.USER_ID; -- AS t_USER
 
SELECT t_USER.*, survey.SURVEY
FROM survey
	INNER JOIN (SELECT user.USER,results.*
				FROM user
					INNER JOIN results
						ON user.USER_ID=results.USER_ID) AS t_USER
		ON survey.SURVEY_ID=t_USER.SURVEY_ID; -- AS t_SURVEY

SELECT t_SURVEY.USER,t_SURVEY.SURVEY, answer.ANSWER
FROM answer
	INNER JOIN (SELECT t_USER.*, survey.SURVEY
FROM survey
	INNER JOIN (SELECT user.USER,results.*
				FROM user
					INNER JOIN results
						ON user.USER_ID=results.USER_ID) AS t_USER
							ON survey.SURVEY_ID=t_USER.SURVEY_ID)  AS t_SURVEY
		ON answer.ANSWER_ID = t_SURVEY.ANSWER_ID
        ORDER BY t_SURVEY.USER ASC;
        
        

 

