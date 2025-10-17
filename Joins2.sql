### **Example Tables**

**Table: Customers**

| CustomerID | Name    | Country |
| ---------- | ------- | ------- |
| 1          | Alice   | USA     |
| 2          | Bob     | UK      |
| 3          | Charlie | USA     |

**Table: Orders**

| OrderID | CustomerID | Product |
| ------- | ---------- | ------- |
| 101     | 1          | Laptop  |
| 102     | 2          | Phone   |
| 103     | 1          | Mouse   |

---

## **1. INNER JOIN**

* Returns only **matching rows** in both tables.

```sql
SELECT Customers.Name, Orders.Product
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

**Result:**

| Name  | Product |
| ----- | ------- |
| Alice | Laptop  |
| Alice | Mouse   |
| Bob   | Phone   |

✅ Only customers who have orders appear.

---

## **2. LEFT JOIN (or LEFT OUTER JOIN)**

* Returns **all rows from the left table**, and matching rows from the right table. If no match, `NULL`.

```sql
SELECT Customers.Name, Orders.Product
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

**Result:**

| Name    | Product |
| ------- | ------- |
| Alice   | Laptop  |
| Alice   | Mouse   |
| Bob     | Phone   |
| Charlie | NULL    |

✅ Charlie has no orders, so we get `NULL`.

---

## **3. RIGHT JOIN (or RIGHT OUTER JOIN)**

* Returns **all rows from the right table**, and matching rows from the left table. If no match, `NULL`.

```sql
SELECT Customers.Name, Orders.Product
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

**Result:**

| Name  | Product |
| ----- | ------- |
| Alice | Laptop  |
| Alice | Mouse   |
| Bob   | Phone   |

✅ All orders are shown; customers must match if possible.

---

## **4. FULL OUTER JOIN**

* Returns **all rows from both tables**, with `NULL` if there’s no match.

```sql
SELECT Customers.Name, Orders.Product
FROM Customers
FULL OUTER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

**Result:**

| Name    | Product |
| ------- | ------- |
| Alice   | Laptop  |
| Alice   | Mouse   |
| Bob     | Phone   |
| Charlie | NULL    |

✅ Combines LEFT and RIGHT JOIN results.

*(Note: Some databases like MySQL don’t directly support FULL OUTER JOIN—you can use UNION of LEFT and RIGHT JOIN.)*

---

## **5. CROSS JOIN**

* Returns **all possible combinations** (Cartesian product) of both tables.

```sql
SELECT Customers.Name, Orders.Product
FROM Customers
CROSS JOIN Orders;
```

**Result:** 12 rows (3 customers × 4 orders)

| Name  | Product |
| ----- | ------- |
| Alice | Laptop  |
| Alice | Phone   |
| Alice | Mouse   |
| Bob   | Laptop  |
| ...   | ...     |

✅ Usually used when you want every combination.

---

💡 **Tip to Remember:**

* **INNER JOIN:** only matches
* **LEFT JOIN:** all from left + matches
* **RIGHT JOIN:** all from right + matches
* **FULL OUTER JOIN:** everything + matches
* **CROSS JOIN:** all possible pairs

---

If you want, I can also make a **small diagram with arrows** showing LEFT, RIGHT, INNER, FULL joins visually—it makes it super easy to remember for interviews.

Do you want me to make that diagram?
