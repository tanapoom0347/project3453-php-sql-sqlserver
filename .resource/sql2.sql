select top (200000) * into t_d_part1 from t_d2 order by จังหวัด, อำเภอ, ตำบล, หมู่บ้าน, ชื่อ
go

With cte as (
   select top (200000) * from t_d2 order by จังหวัด, อำเภอ, ตำบล, หมู่บ้าน, ชื่อ
)
delete from cte

select DISTINCT top 814374 * into t_demo_dist from t_demo order by จังหวัด, อำเภอ, ตำบล, หมู่บ้าน, ชื่อ