-- แสดง ชื่อแผนก ชื่อ-สกุลของพนักงาน และชื่อ-สกุลของผู้จัดการ ที่ ไม่ได้สังกัดแผนก Hardware และ Sales
SELECT D.dname,
E.fname AS "Employee name", E.lname AS "Employee name", M.fname AS "Manager fname", M.lname AS "Manager lname"
FROM employee E, employee M, department D
WHERE E.dno = D.dnumber and D.mgr_ssn = M.ssn and D.dname NOT
    IN ('Hardware', 'Sales');