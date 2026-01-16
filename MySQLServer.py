import mysql.connector
from mysql.connector import Error

def create_database():
    connection = None
    try:
        # Establish connection to the MySQL server
        # Adjust 'user' and 'password' to match your local MySQL credentials
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='Gamaliel@2030'
        )

        if connection.is_connected():
            cursor = connection.cursor()
            
            # Use CREATE DATABASE IF NOT EXISTS to avoid errors if it exists
            # We avoid SELECT/SHOW per your instructions
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            
            print("Database 'alx_book_store' created successfully!")

    except Error as e:
        # Handle connection and execution errors
        print(f"Error: {e}")

    finally:
        # Ensure the connection is closed
        if connection and connection.is_connected():
            cursor.close()
            connection.close()
            # print("MySQL connection is closed")

if __name__ == "__main__":
    create_database()