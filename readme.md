https  
https://www.youtube.com/watch?v=AKZU3SBZhfo  
--------------------------  
RewriteEngine On  
RewriteCond %{HTTPS} off  
RewriteRule ^(.*)$ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]  
--------------------------  
หากต้องการ Run param1 กับ b02,b03,b04,...,b25  
ให้ไปแก้ table2 ในไฟล์ sql.aspx ในโฟเดอร์ .resource  
////// สำคัญมาก //////  
อย่าลืมแก้ num_row2 ทุกครั้ง*  แก้ให้ตรงกับ table นั้น  
b01 210254  
b02 357584  
b03 213591  
b04 418594  
b21 208669  
b22 211747  
b23 213302  
b24 241380  
b25 243241  
******แก้ $c16,18,20,...,30 = 2-25 และ $17,19,21,...,31 = ให้ตรงกับ>>'หัวข้อ'<<นั้นๆ ******  
b01 ไม่มีบ้านอยู่  
b02 บ้านชำรุด/ทรุดโทรม  
b03 ไม่มีส้วม  
b04 มีส้วมแต่ไม่ถูกสุขลักษณะ  
b21 ผู้ป่วยโรคเรื้อรังไม่ได้รับการดูแล ช่วยเหลือ  
b22 มีผู้ป่วยติดเตียงไม่ได้รับการดูแล ช่วยเหลือ  
b23 มีผู้พิการไม่ได้รับการดูแล ช่วยเหลือ  
b24 มีผู้สูงอายุไม่ได้รับการดูแล ช่วยเหลือ  
b25 ไม่สามาถไปรับบริการที่โรงพยาบาลได้  
  
ถ้าทำ b01-b25 เสร็จหมดแล้ว ให้Runไฟล์ run2.aspx ต่อ  
เสร็จ  

**วิธีการแก้ Sigle Quote ' คือให้ไปให้ parameter = [$var1[],$var2[],$var3[]] ใน query($conn,$sql$parameter)!
