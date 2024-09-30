 -- แสดงรหัสพนักงาน ชื่อพนักงาน โดยไม่มีหัวน้างาน

SELECT ssn, fname, lname
FROM employee
WHERE super_ssn IS NULL;