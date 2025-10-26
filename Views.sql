## 💡 **What is a View?**

* A **View** is a **virtual table** in SQL.
* It **does not store data physically**, but **displays data from one or more tables**.
---

## 🧩 **Key Points**

1. **Virtual table** – no physical storage.
2. **Simplifies complex queries** – you can write a complex query once, save it as a view, and use it easily later.
3. **Security** – you can give users access to views instead of giving access to full tables.
4. **Always up-to-date** – any change in the underlying table reflects in the view.

---

## 🔹 **Basic Syntax**

```sql
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

**To see data from the view:**

```sql
SELECT * FROM view_name;
```

---

## 🧠 **Simple Example**

## 🔹 **Real-Time Example**

* In a **school management system**, the teacher wants a **list of students in Class 10**.
* Instead of writing a query every time, you create a view `Class10Students`.
* Now the teacher can just do:

```sql
SELECT * FROM Class10Students;
```

* This is easy, fast, and safe.
-------------------------------------------------
### Table: Students

| StudentID | Name   | Class | Marks |
| --------- | ------ | ----- | ----- |
| 1         | Ramesh | 10    | 85    |
| 2         | Sita   | 10    | 90    |
| 3         | Ravi   | 9     | 78    |

**Goal:** View only class 10 students.

```sql
CREATE VIEW Class10Students AS
SELECT StudentID, Name, Marks
FROM Students
WHERE Class = 10;
```

**Query the view:**

```sql
SELECT * FROM Class10Students;
```

**Output:**

| StudentID | Name   | Marks |
| --------- | ------ | ----- |
| 1         | Ramesh | 85    |
| 2         | Sita   | 90    |

---

## 🔹 **Advantages of Views**

| Advantage          | Explanation                                                    |
| ------------------ | -------------------------------------------------------------- |
| Simplifies queries | Avoid writing the same complex query repeatedly                |
| Security           | Users can access only the data in the view, not the full table |
| Up-to-date         | Changes in base tables automatically appear in the view        |
| Readability        | Makes reports and dashboards easier to work with               |

---




