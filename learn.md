SUM

SQL Notes:
 select (NULL*(11 - 10)/100) AS diff_impressions;
 
 NULL != NULL False
 NULL == NULL False
 Any operation with null will return NULL always.
 
 SUM(CASE WHEN diff_clicks >= 30 AND diff_clicks < 40 THEN 1 ELSE 0 END)            AS "diff_clicks(50-100)"
 
 ABS
 NULLIF
 SUM
 event_date > current_date - interval '30' day
 event_date >= TO_DATE('2023-06-20', 'YYYY-MM-DD')
 
 PRIMARY KEY(userid, sid, event_date, s_kwcid)
 USING btree (userid, event_date, s_kwcid);
 NOW()

 SELECT dateadd(day,1 * (row_number() over(order by seq4())),to_date('2021-11-10','YYYY-MM-DD')) - 1 as start_date
 REPLACE
 date
 to_char
 NVL(cmpgn.portfolio_group_id,-1)
 GREATEST
 ,NULL as device
 ,0 AS videoquartile100_rate
 LISTAGG(distinct dim.currency,',') within  group (order by currency) as currencies
  WHERE 1 = 1
 COALESCE
 ROUND
 CEIL
 FULL JOIN search_conversions conversions USING ()