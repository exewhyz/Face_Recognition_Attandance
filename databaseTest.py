import mysql.connector
import os
import dotenv

# Load environment variables from.env file
dotenv.load_dotenv()

DB_USERNAME = os.getenv("DB_USERNAME")
DB_PASSWORD = os.getenv("DB_PASSWORD")
DB_HOSTNAME = os.getenv("DB_HOSTNAME")
DB_NAME = os.getenv("DB_NAME")
DB_PORT = os.getenv("DB_PORT")

conn = mysql.connector.connect(username=DB_USERNAME, password=DB_PASSWORD,host=DB_HOSTNAME,database=DB_NAME,port=DB_PORT)
cursor = conn.cursor()

cursor.execute("show databases")

data = cursor.fetchall()

print(data)

conn.close()
