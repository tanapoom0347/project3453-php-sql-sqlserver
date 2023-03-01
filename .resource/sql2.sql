select top (200000) * into t_d_part1 from t_d2 order by จังหวัด, อำเภอ, ตำบล, หมู่บ้าน, ชื่อ
go

With cte as (
   select top (200000) * from t_d2 order by จังหวัด, อำเภอ, ตำบล, หมู่บ้าน, ชื่อ
)
delete from cte

select DISTINCT top 814374 * into t_demo_dist from t_demo order by จังหวัด, อำเภอ, ตำบล, หมู่บ้าน, ชื่อ

UPDATE t1
SET id = 4, menu= 'tea', price = 65
WHERE id = 3 AND menu = 'green tea' AND price = 60;

select * from t_demo_dist_test where รหัสประเภทปัญหา1 = 1 order by จังหวัด, อำเภอ, ตำบล, หมู่บ้าน, ชื่อ

SELECT COUNT(รหัสประเภทปัญหา1)
FROM t_demo_dist_test
WHERE รหัสประเภทปัญหา1 = 1;

select t_demo_dist.คำนำหน้า, t_demo_dist.ชื่อ, t_demo_dist.นามสกุล, t_demo_dist.เลขประจำตัวประชาชน, t_demo_dist.pcode, t_demo_dist.จังหวัด, t_demo_dist.acode, t_demo_dist.อำเภอ, t_demo_dist.tcode, t_demo_dist.ตำบล,
t_demo_dist.mcode, t_demo_dist.หมู่บ้าน, t_demo_dist.cnt, b01_dist.รหัสประเภทปัญหา as รหัสประเภทปัญหา1, b01_dist.ประเภทปัญหา as ประเภทปัญหา1

from t_demo_dist left join b01_dist on (t_demo_dist.ชื่อ = b01_dist.ชื่อ) and (t_demo_dist.นามสกุล = b01_dist.นามสกุล) and (t_demo_dist.เลขประจำตัวประชาชน = b01_dist.เลขประจำตัวประชาชน) and (t_demo_dist.mcode = b01_dist.mcode)

select t_d08.คำนำหน้า, t_d08.ชื่อ, t_d08.นามสกุล, t_d08.เลขประจำตัวประชาชน, t_d08.pcode, t_d08.จังหวัด, t_d08.acode, t_d08.อำเภอ, t_d08.tcode, t_d08.ตำบล, t_d08.mcode, t_d08.หมู่บ้าน, t_d08.cnt, t_d08.รหัสประเภทปัญหา1, t_d08.ประเภทปัญหา1, t_d08.รหัสประเภทปัญหา2, t_d08.ประเภทปัญหา2, t_d08.รหัสประเภทปัญหา3, t_d08.ประเภทปัญหา3, t_d08.รหัสประเภทปัญหา4, t_d08.ประเภทปัญหา4, t_d08.รหัสประเภทปัญหา21, t_d08.ประเภทปัญหา21, t_d08.รหัสประเภทปัญหา22, t_d08.ประเภทปัญหา22, t_d08.รหัสประเภทปัญหา23, t_d08.ประเภทปัญหา23, t_d08.รหัสประเภทปัญหา24, t_d08.ประเภทปัญหา24, b25_dist.รหัสประเภทปัญหา as รหัสประเภทปัญหา25, b25_dist.ประเภทปัญหา as ประเภทปัญหา25

from t_d08 left join b25_dist on (t_d08.ชื่อ = b25_dist.ชื่อ) and (t_d08.นามสกุล = b25_dist.นามสกุล) and (t_d08.เลขประจำตัวประชาชน = b25_dist.เลขประจำตัวประชาชน) and (t_d08.mcode = b25_dist.mcode)

((CASE WHEN c1 IS NOT NULL THEN 1 ELSE 0 END)
  + (CASE WHEN c2 IS NOT NULL THEN 1 ELSE 0 END)
  + (CASE WHEN c3 IS NOT NULL THEN 1 ELSE 0 END)
  + (CASE WHEN c4 IS NOT NULL THEN 1 ELSE 0 END)
  + (CASE WHEN c21 IS NOT NULL THEN 1 ELSE 0 END)
  + (CASE WHEN c22 IS NOT NULL THEN 1 ELSE 0 END)
  + (CASE WHEN c23 IS NOT NULL THEN 1 ELSE 0 END)
  + (CASE WHEN c24 IS NOT NULL THEN 1 ELSE 0 END)
  + (CASE WHEN c25 IS NOT NULL THEN 1 ELSE 0 END)) AS sum_of_nulls