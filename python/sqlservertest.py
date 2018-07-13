import pyodbc 

cnxn = pyodbc.connect(
    r'DSN=DataCenter;'
    r'UID=sa;'
    r'PWD=***;'
    r'APP=Daily Incremental Backup;'
    )
	
	
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

