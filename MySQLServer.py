import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "Salzroyal94",
    database = "alx_book_store"
)

print(mydb.get_server_info(), "Database alx_book_store created successfully!")