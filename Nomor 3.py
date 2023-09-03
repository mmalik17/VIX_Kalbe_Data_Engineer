#Melakukan import mysql connector
import mysql.connector

#Melakukan percobaan koneksi
conn = mysql.connector.connect(
    user = 'root', password = 'password', host = '127.0.0.1', database='mydb'
    )

#Membuat object cursor sebagai penanda
cursor = conn.cursor()

#Deklarasi SQL Query untuk memasukkan record ke database karyawan
Insert_sql = (
   "INSERT INTO KARYAWAN(FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)"
   "VALUES (%s,%s,%s,%s,%s)"
)
values = ('Zainal','Abidin',24,'M',4000)

try:
   # Eksekusi SQL command
   cursor.execute(Insert_sql, values)

   # Melakukan perubahan (commit) pada DB
   conn.commit()

except:
   # Roll back apabila ada issue
   conn.rollback()

# Menutup Koneksi
conn.close()
