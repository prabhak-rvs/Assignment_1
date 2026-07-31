SELECT SCHEMA_NAME
FROM information_schema.SCHEMATA
WHERE SCHEMA_NAME='CollegeDB';

-- Check if Department table exists
SELECT
CASE
WHEN EXISTS (
SELECT *
FROM information_schema.tables
WHERE table_name='Department'
)
THEN 'PASS'
ELSE 'FAIL'
END AS Table_Test;

-- Check DepartmentID
SELECT
CASE
WHEN EXISTS(
SELECT *
FROM information_schema.columns
WHERE table_name='Department'
AND column_name='DepartmentID'
)
THEN 'PASS'
ELSE 'FAIL'
END AS DepartmentID_Test;

-- Check DepartmentName
SELECT
CASE
WHEN EXISTS(
SELECT *
FROM information_schema.columns
WHERE table_name='Department'
AND column_name='DepartmentName'
)
THEN 'PASS'
ELSE 'FAIL'
END AS DepartmentName_Test;

-- Check HOD
SELECT
CASE
WHEN EXISTS(
SELECT *
FROM information_schema.columns
WHERE table_name='Department'
AND column_name='HOD'
)
THEN 'PASS'
ELSE 'FAIL'
END AS HOD_Test;

-- Check Primary Key
SELECT
CASE
WHEN EXISTS(
SELECT *
FROM information_schema.table_constraints
WHERE table_name='Department'
AND constraint_type='PRIMARY KEY'
)
THEN 'PASS'
ELSE 'FAIL'
END AS PrimaryKey_Test;
