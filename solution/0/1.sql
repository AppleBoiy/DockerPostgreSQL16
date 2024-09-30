-- แสดง ชื่อ-สกุล ของพนักงาน ที่ได้เงินเดือนน้อยกว่าหรือเท่ากับ 35,000
SELECT fname, lname
FROM employee
WHERE salary <= 35000;