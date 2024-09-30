-- แสดง รหัสพนักงาน ชื่อ-สกุล ที่อยู่ วันเกิด ของพนักงานที่เกิดก่อนปี 1965 และเงินเดือนไม่ถึง 40,000
select ssn, fname, lname, address, bdate
from employee
where bdate < '1965-01-01' and salary < 40000;