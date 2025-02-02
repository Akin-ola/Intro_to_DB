import mysql.connector

try:
    mydb = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "Salzroyal94"
    )
except mysql.connector.Error:
    print("Failed to connect to database.")


mycursor = mydb.cursor()
mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
result = mycursor.fetchone()
print("Database alx_book_store created successfully!")

mycursor.close()
mydb.close()
