📌 Definition of Normalization**

**Normalization** in a database is the process of **organizing data** to:

1. **Eliminate redundancy** (duplicate data)
2. **Avoid anomalies** (inconsistencies in insert, update, delete)
3. **Ensure data integrity**

It involves dividing a database into **multiple related tables** and defining relationships between them.

> In short: Normalization makes your database **efficient, consistent, and easy to maintain**.

---

## **🧩 Example (Real-Time Scenario)**

**Scenario:** Online Food Delivery System

Suppose you have a single table storing **orders, customers, and restaurant info** like this:

| OrderID | CustomerName | CustomerAddress | RestaurantName | RestaurantLocation | FoodItem | Price |
| ------- | ------------ | --------------- | -------------- | ------------------ | -------- | ----- |
| 101     | Rakesh       | Hyderabad       | Domino’s       | Hyderabad          | Pizza    | 500   |
| 102     | Rakesh       | Hyderabad       | KFC            | Hyderabad          | Burger   | 250   |
| 103     | Priya        | Bengaluru       | Domino’s       | Bengaluru          | Pizza    | 450   |

**Problems here:**

* **Redundancy:** Customer and restaurant info is repeated multiple times.
* **Update Anomaly:** If Domino’s changes location, you have to update multiple rows.
* **Insertion/Deletion Anomaly:** Adding a new restaurant without an order may be difficult.

---

### **Normalized Version (Split into Tables)**

**1️⃣ Customer Table**

| CustomerID | CustomerName | CustomerAddress |
| ---------- | ------------ | --------------- |
| 1          | Rakesh       | Hyderabad       |
| 2          | Priya        | Bengaluru       |

**2️⃣ Restaurant Table**

| RestaurantID | RestaurantName | RestaurantLocation |
| ------------ | -------------- | ------------------ |
| 1            | Domino’s       | Hyderabad          |
| 2            | KFC            | Hyderabad          |
| 3            | Domino’s       | Bengaluru          |

**3️⃣ Order Table**

| OrderID | CustomerID | RestaurantID | FoodItem | Price |
| ------- | ---------- | ------------ | -------- | ----- |
| 101     | 1          | 1            | Pizza    | 500   |
| 102     | 1          | 2            | Burger   | 250   |
| 103     | 2          | 3            | Pizza    | 450   |

✅ **Benefits:**

* No redundant data
* Easy to update customer or restaurant info
* Insertion, deletion, and update anomalies removed

---

💡 **In short:**

* Normalization = Split tables to reduce duplication & improve integrity
* Real-time example = **Online food delivery app** storing customers, restaurants, and orders efficiently


