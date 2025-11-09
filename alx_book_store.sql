#!/usr/bin/env python3
"""
Script Name: MySQLServer.py
Description:
    This script connects to a MySQL server and creates a database
    named 'alx_book_store' if it does not already exist.
"""

import mysql.connector

def create_database():
    connection = None
    try:
        # Connect to MySQL Server (update user and password)
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='your_password'  # 🔸 Replace with your MySQL root password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:
        print(f"Error while connecting to MySQL: {err}")

    finally:
        if connection and connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection closed.")

if __name__ == "__main__":
    create_database()
