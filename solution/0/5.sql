-- แสดงชื่อแผนกที่ Joyce A English สังกัดรวมทั้ง ชื่อสกุลของหัวหน้าและหัวหน้าที่มีเงิน เดือนมากกว่า Joyce A English กี่เปอร์เซนต์
SELECT D.dname, S.fname AS "supervisor s.fname",S.lname AS "supervisor lname", ROUND((S.salary - E.salary)/S.salary*100, 2) AS "Diff Salary(%)"
FROM DEPARTMENT D, EMPLOYEE S, EMPLOYEE E
WHERE D.dnumber = E.dno AND E.super_ssn = S.ssn AND E.fname = 'Joyce' AND E.minit = 'A' AND E.lname = 'English';