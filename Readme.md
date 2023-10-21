# SQL - Structured Query Language

## Data Types :
- **INT :** numeric value only
- **TEXT :** string and numeric value
- **VARCHAR(0) :** both numeric and string with limited characters
   
## Constraint :

- **NOT NULL :** should not be empty
- **UNIQUE :** should not repeat
- **DEFAULT :** gives column a default value
- CHECK
- **PRIMARY KEY :** combination of not null and unique
- FOREIGN KEY
- INDEX

## Operator :

- **Arithmetic Operators :** 
   - Addition (+)
   - Subtraction (-)
   - Multiplication (*)
   - Division (/)
   - Modulus (%)
   
- **Comparison Operators :**
   - Equal (=)
   - Not Equal (!= or <>)
   - Greater Than (>)
   - Greater Than Equals to (>=)
   - Greater Than or not Equals to (!>)
   - Less Than (<)
   - Less Than Equals to (<=)
   - Less Than or not Equals to (!<)

- **Logical Operators :**

   - **ALL :** It compares a value to all values in another value set.

   - **AND :** The AND operator in SQL would show the record from the database table if all the conditions separated by the AND operator evaluated to True.

   - **OR :** The OR operator in SQL shows the record from the table if any of the conditions separated by the OR operator evaluates to True.

   - **BETWEEN :** The BETWEEN operator in SQL shows the record within the range mentioned in the SQL query.

   - **IN :** The IN operator in SQL allows database users to specify two or more values in a WHERE clause. This logical operator minimizes the requirement of multiple OR conditions.

   - **NOT :** It reverses the meaning of any logical operator.

   - **ANY :** The ANY operator in SQL shows the records when any of the values returned by the sub-query meet the condition.

   - **EXISTS :** It is used to search for the presence of a row in a specified table.
   
   - **LIKE :** The LIKE operator in SQL shows those records from the table which match with the given pattern specified in the sub-query. The percentage (%) sign is a wildcard which is used in conjunction with this logical operator.

## SQL Commands :

![SQL Command Chart](https://static.javatpoint.com/dbms/images/dbms-sql-command.png)

1. ### DDL - Data Defination Language :
   - DDL changes the structure of the table like creating a table, deleting a table, altering a table, etc.

   - All the command of DDL are auto-committed that means it permanently save all the changes in the database.

   - **DDL Commands :**
      - CREATE
      - ALTER
      - DROP
      - TRUNCATE

   1. **CREATE :** It is used to create a new table or database.
      
      ```SQL
      CREATE DATABASE database_name;

      CREATE TABLE table_name(
      id INT PRIMARY KEY
      );
      ```

      - `column_name data_type constraint`
      - while creating new table atleast add one column
      - column_name and datatype is required to create a new column
      - by default if not mentioned, column is given null constraint

   2. **ALTER :** It is used to add, modify or delete existing attribute in a table.

      - Add column :
      
         ```SQL
         ALTER TABLE table_name
         ADD class VARCHAR(2);
         ```

      - Modify column:
         
         ```SQL
         ALTER TABLE table_name
         MODIFY class VARCHAR(2) NOT NULL;
         ```

         - when you modify a column you re-assign the datatype and constraint of the column, so if you want one of them to be as it is, make sure to rewrite.

      - Delete column:

         ```SQL
         ALTER TABLE table_name
         DROP class;
         ```

   3. **DROP :** It is used to delete both the structure and record stored in the table.

      ```SQL
      DROP DATABASE database_name;

      DROP TABLE table_name;
      ```
   
   4. **TRUNCATE :** It is used to delete all the rows or data from the table.

      ```SQL
      TRUNCATE TABLE table_name;
      ```

2. ### DML - Data Manipulation Language :

   - DML commands are used to modify the database. It is responsible for all form of changes in the database.

   - The command of DML is not auto-committed that means it can't permanently save all the changes in the database. They can be rollback.

   - **DML Commands :**
      - INSERT
      - UPDATE
      - DELETE

   1. **INSERT :** It is used to insert data into the row of a table.

      ```SQL
      -- without order
      INSERT INTO student VALUES 
      (1, "Tirth", "Gujarat", 9618642687, 10);

      -- with order
      INSERT INTO student (id, address, class, name) VALUES 
      (9, "Gujarat", "X", "Tirth");
      ```

      - Without order you have to write the exact amount of column with exact placement of the column

      - With order you can ommit columns and also set a different placement of the data.

      - Note: That with order you only change the way it takes the data and the table itself.

   2. **UPDATE :** This command is used to update or modify the value of a column in the table.

      ```SQL
      UPDATE student
      SET name="Vaibhav"
      WHERE id=4;

      UPDATE student
      SET phone=9874135843
      WHERE id=9;
      ```
      - `WHERE` is a used for adding condition statement

      - You can update the value as long as the row exist.
      
      - In the second example row with id 9 exist but phone value is null, but still you can update the value.

   3. **DELETE :** It is used to remove one or more row from a table.

      ```SQL
      DELETE FROM student
      WHERE id=6;
      ```

3. ### DQL - Data Query Language :

   - DQL is used to fetch the data from the database.

   - **DQL commands :** SELECT

   - **SELECT :** It is used to select the attribute based on the condition described by WHERE clause.

      ```SQL
      SELECT expressions FROM TABLES    
      WHERE conditions;

      SELECT name FROM student
      WHERE address="Odhav";
      ```

      - Give alias name to column

      ```SQL
      SELECT marks/100*100 AS Percentage FROM student;
      ```

## Aggretate Functions :

- SQL aggregation function is used to perform the calculations on multiple rows of a single column of a table. It returns a single value.

- Types of Aggretate Function :
   - Count
   - Sum
   - Avg
   - Max
   - Min

1. **Count :** It is used to Count the number of rows in a database table.

   ```SQL
   SELECT COUNT(*) FROM student;

   SELECT COUNT(*) AS Marks
   FROM student
   WHERE marks=90;
   ```

2. **Sum :** Sum function is used to calculate the sum of all selected columns. It works on numeric fields only.

   ```SQL
   SELECT SUM(marks) FROM student;
   ```

3. **Avg :** The AVG function is used to calculate the average value of the numeric type. AVG function returns the average of all non-Null values.

   ```SQL
   SELECT AVG(marks) FROM student;
   ```

4. **Max :** It is used to find the maximum value of a certain column.

   ```SQL
   SELECT MAX(marks) FROM student;
   ```

5. **Min :** It is used to find the minimum value of a certain column.

   ```SQL
   SELECT MIN(marks) FROM student;
   ```