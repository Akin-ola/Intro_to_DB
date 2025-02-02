import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "Salzroyal94"
)

mycursor = mydb.cursor()
mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
result = mycursor.fetchone()
print(result)
