import pyodbc 
#https://github.com/mkleehammer/pyodbc/wiki/Getting-started

# Specifying the ODBC driver, server name, database, etc. directly
#cnxn = pyodbc.connect('DRIVER={SQL Server};SERVER=localhost;DATABASE=testdb;UID=me;PWD=pass')

# Using a DSN, but providing a password as well
#cnxn = pyodbc.connect('DSN=test;PWD=password')



cnxn = pyodbc.connect(
    r'DSN=DataCenter;'
    r'UID=sa;'
    r'PWD=***;'
    r'APP=Daily Incremental Backup;'
    )
	
# Create a cursor from the connection	
cursor = cnxn.cursor()

#cursor.execute("SELECT top 10 TxnID ,LinkedTxnSeqNo,LinkedTxnTxnID ,LinkedTxnTxnType ,LinkedTxnTxnDate ,LinkedTxnRefNumber ,LinkedTxnLinkType  ,LinkedTxnAmount   FROM SalesOrderLinkedTxn nosync")
file = open('F:/dbmigration/rackon/SalesOrderLinkedTxn.txt','w') 
#Sample select query
cursor.execute("SELECT TOP 10 *  FROM Invoice") 
#row = cursor.fetchall() 
#while row: 
#    print row[0] 
#    row = cursor.fetchone()
	
	

for row in cursor.fetchall():
	print(row)
	file.write(str(row)+"\n")

cursor.close()
file.close()
cnxn.close() 

