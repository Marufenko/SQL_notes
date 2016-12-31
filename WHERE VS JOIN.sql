WITH DOCUMENTS AS (
  SELECT 1 AS DOC_ID, 'DOC1' AS DOC_NAME FROM DUAL
  UNION
  SELECT 2 AS DOC_ID, 'DOC2' AS DOC_NAME FROM DUAL
  UNION
  SELECT 3 AS DOC_ID, 'DOC3' AS DOC_NAME FROM DUAL
  UNION
  SELECT 4 AS DOC_ID, 'DOC4' AS DOC_NAME FROM DUAL
  UNION
  SELECT 5 AS DOC_ID, 'DOC5' AS DOC_NAME FROM DUAL
),

HOS_DOWNLOADED AS (
  SELECT 1 AS DOWNLOAD_ID, 1 AS DOC_ID, 'SANDEEP' AS MEMBER_NAME FROM DUAL
  UNION
  SELECT 2 AS DOWNLOAD_ID, 1 AS DOC_ID, 'SIMI' AS MEMBER_NAME FROM DUAL
  UNION
  SELECT 3 AS DOWNLOAD_ID, 2 AS DOC_ID, 'SANDEEP' AS MEMBER_NAME FROM DUAL
  UNION
  SELECT 4 AS DOWNLOAD_ID, 2 AS DOC_ID, 'REYA' AS MEMBER_NAME FROM DUAL
  UNION
  SELECT 5 AS DOWNLOAD_ID, 3 AS DOC_ID, 'SIMI' AS MEMBER_NAME FROM DUAL
)

SELECT DOC.DOC_NAME, HASD.DOWNLOAD_ID
  FROM DOCUMENT DOC
  LEFT JOIN HWS_DOWNLOADED HASD ON DOC.DOC_ID = HASD.DOC_ID AND MEMBER_NAME = 'SANDEEP';

SELECT DOC.DOC_NAME, HASD.DOWNLOAD_ED
  FROM DOCUMENT DOC
  LEFT JOIN HAS_DOWNLOADED HASD ON DOC.DOC_ID = HASD.DOC_ID
 WHERE MEMBER_NAME = 'SANDEEP';
  
