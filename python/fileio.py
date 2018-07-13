

#write file
file = open('F:/dbmigration/rackon/SalesOrderLinkedTxn.txt','a') 
file.write('Hello World\n') 
file.write('This is our new text file\n') 
file.write('and this is another line.\n') 
file.write('Why? Because we can.\n') 
 
file.close() 

#read file
file1 = open('F:/dbmigration/rackon/SalesOrderLinkedTxn.txt','r') 
for line in file1: 
	print (line, end='')
file1.close()


file = open('F:/dbmigration/rackon/SalesOrderLinkedTxn.txt','r') 
newfile = open('F:/dbmigration/rackon/SalesOrderLinkedTxn.txt','w') 
for line in file:
	print (line, end='')
	newfile.write (line)

