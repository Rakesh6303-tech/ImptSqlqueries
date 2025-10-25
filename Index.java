Def : Index is a Techinc or Mechanism , Which is used to fetch data quick and fast
Types : 1)  Cluster index : To any column if we apply primary key then automatically it will become clustered Index
        2) Non Cluster Index : To Any normal columns, if we explicitly create an index we call it a NCI.
-----------------------------------------------------------------------------------------------------------------------------------------------------
  //However, note:
//Indexes make SELECT faster.
//But they can make INSERT, UPDATE, and DELETE a bit slower — because the index also has to be updated when data changes.
Real Time Example :
🏦 Example Scenario: Banking System
    You have a table Customers like this:
CustomerID	Name	City	Phone
1	Rakesh	Hyderabad	9876543210
2	Suresh	Bangalore	9876501234
3	Priya	Chennai	9876512345
...	...	...	...  
Now, suppose this table has 10 lakh (1 million) customers.
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
* When you run this query:
  SELECT * FROM Customers WHERE Phone = '9876501234';
Without an index, SQL has to scan every row — that’s called a full table scan.
This takes more time.
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
**If you create an index on the Phone column:
CREATE INDEX idx_phone ON Customers(Phone);
Now, when you search by phone number, SQL uses the index to instantly find that record — like looking up a page number in a book index.
✅ Result: Query runs much faster.
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
🧠 Simple Analogy
Think of it like a book 📘
Without an index → You flip through every page to find a name.
With an index → You check the index at the end and jump straight to the page.
That’s exactly how an SQL Index works 🙌
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
