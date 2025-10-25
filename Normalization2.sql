
## **What is Normalization?**

Normalization is the process of **organizing a database** to:

1. **Reduce redundancy** (duplicate data).
2. **Avoid anomalies** (problems when inserting, updating, or deleting data).
3. **Make data easy to maintain**.

It was introduced by **E.F. Codd**.

---

## **Normal Forms (NF)**

Normalization is done in **stages called normal forms**. Each normal form has rules.

---

### **1. First Normal Form (1NF)**

* Each column must contain **atomic values** (no multiple values in one column).
* Each row must be unique.

**Example (Not 1NF):**

| StudentID | Name  | Subjects      |
| --------- | ----- | ------------- |
| 1         | Alice | Math, English |
| 2         | Bob   | Science       |

**Convert to 1NF:**

| StudentID | Name  | Subject |
| --------- | ----- | ------- |
| 1         | Alice | Math    |
| 1         | Alice | English |
| 2         | Bob   | Science |

✅ Now each cell has only **one value**.

---

### **2. Second Normal Form (2NF)**

* Must be in **1NF**.
* **No partial dependency**: all non-key columns must depend on the **whole primary key**.

**Example (Not 2NF):**

| StudentID | CourseID | StudentName | CourseName |
| --------- | -------- | ----------- | ---------- |
| 1         | 101      | Alice       | Math       |
| 2         | 102      | Bob         | Science    |

* `StudentName` depends only on `StudentID` (part of the key), not on the combination.

**Convert to 2NF (Split tables):**

**Students Table:**

| StudentID | StudentName |
| --------- | ----------- |
| 1         | Alice       |
| 2         | Bob         |

**Courses Table:**

| CourseID | CourseName |
| -------- | ---------- |
| 101      | Math       |
| 102      | Science    |

**Enrollments Table:**

| StudentID | CourseID |
| --------- | -------- |
| 1         | 101      |
| 2         | 102      |

✅ Eliminates partial dependency.

---

### **3. Third Normal Form (3NF)**

* Must be in **2NF**.
* **No transitive dependency**: non-key columns must depend **only on the primary key**.

**Example (Not 3NF):**

| StudentID | StudentName | DeptName | DeptHead |
| --------- | ----------- | -------- | -------- |
| 1         | Alice       | CS       | John     |
| 2         | Bob         | IT       | Mike     |

* `DeptHead` depends on `DeptName`, not `StudentID`.

**Convert to 3NF (Split tables):**

**Students Table:**

| StudentID | StudentName | DeptName |
| --------- | ----------- | -------- |
| 1         | Alice       | CS       |
| 2         | Bob         | IT       |

**Departments Table:**

| DeptName | DeptHead |
| -------- | -------- |
| CS       | John     |
| IT       | Mike     |

✅ Now every non-key column depends only on the primary key.

---

### **Summary Table of Normal Forms**

| Normal Form | Requirement                    |
| ----------- | ------------------------------ |
| 1NF         | Atomic values, unique rows     |
| 2NF         | 1NF + no partial dependency    |
| 3NF         | 2NF + no transitive dependency |

---

💡 **Tip:**

* **1NF → remove repeating groups**
* **2NF → remove partial dependency**
* **3NF → remove transitive dependency**
