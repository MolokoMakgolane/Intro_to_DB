import mysql.connector

try:
  
# Database connection details 
mydb = mysql.connector.connect(
    host ="122.0.0.1",
    userv="root",
    password ="seventy77seven",
    database ="alx_book_store"
)

if mydb.is_connected():
  print('ALX_BOOK_STORE WORKS SUCCESSFULLY!')
else 
  cursor mydb.cursor()
  cursor.execute('CREATE DATABASE IF NOT EXISTS alx_book_store')
except mysql.connector.Error as err:
  print('Something went wrong:{}'.format(err))


