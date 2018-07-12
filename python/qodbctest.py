iimport pyodbc 

cn = pyodbc.connect('DSN=QuickBooks Data 2016;')

cursor = cn.cursor()

cursor.execute("SELECT * FROM Customer")

for row in cursor.fetchall():

        print (row)

cursor.close()

cn.close() 

