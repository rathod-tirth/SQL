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

4. ### DCL - Data Control Language :

   - DCL commands are used to grant and take back authority from any database user.

   - **DCL commands :**

      - GRANT
      - REVOKE

   1. **GRANT :**  It is used to give user access privileges to a database.

      ```SQL
      GRANT INSERT, UPDATE ON student TO user_1;
      ```

   2. **REVOKE :** It is used to take back permissions from the user.

      ```SQL
      REVOKE INSERT ON student TO user_1;
      ```

5. ### TCL - Transaction Control Language :

   - TCL commands can only use with DML commands like INSERT, DELETE and UPDATE only.

   - These operations are automatically committed in the database that's why they cannot be used while creating tables or dropping them.

   - **TCL commands :**

      - COMMIT
      - ROLLBACK
      - SAVEPOINT

   1. **COMMIT :** Commit command is used to save all the transactions to the database.

   2. **ROLLBACK :** Rollback command is used to undo transactions that have not already been saved to the database.

   3. **SAVEPOINT :** It is used to roll the transaction back to a certain point without rolling back the entire transaction.

## Aggretate Functions :

- SQL aggregation function is used to perform the calculations on multiple rows of a single column of a table. It returns a single value.

- Types of Aggretate Function :

1. **COUNT :** It is used to Count the number of rows in a database table.

   ```SQL
   SELECT COUNT(*) FROM student;

   SELECT COUNT(*) AS Marks
   FROM student
   WHERE marks=90;
   ```

2. **SUM :** Sum function is used to calculate the sum of all selected columns. It works on numeric fields only.

   ```SQL
   SELECT SUM(marks) FROM student;
   ```

3. **AVG :** The AVG function is used to calculate the average value of the numeric type. AVG function returns the average of all non-Null values.

   ```SQL
   SELECT AVG(marks) FROM student;
   ```

4. **MAX :** It is used to find the maximum value of a certain column.

   ```SQL
   SELECT MAX(marks) FROM student;
   ```

5. **MIN :** It is used to find the minimum value of a certain column.

   ```SQL
   SELECT MIN(marks) FROM student;
   ```

## Scalar Functions :

- Scalar functions are used to perform operation on string.

- Types of scalar functions :

1. **UCASE :** This function will change the case of the string to upper case characters.

   ```SQL
   SELECT UCASE(name) AS upper_case
   FROM student;
   ```

2. **LCASE :** This function will change the case of the string to lower case characters.

   ```SQL
   SELECT LCASE(name) AS lower_case
   FROM student;
   ```

3. **MID :** This function is used to extract substrings from the table's column.

   ```SQL
   SELECT MID(name,1,3) AS mid_case
   FROM student;  
   ```

4. **LENGTH :** This function returns the length of the string in the column.

   ```SQL
   SELECT LENGTH(name) AS length
   FROM student;
   ```

5. **ROUND :** This function is used to round a numeric column to the number of decimals specified.

   ```SQL
   SELECT ROUND(marks)
   FROM student;
   ```

6. **NOW :** This function returns the current system' date and time.

   ```SQL
   SELECT NOW()
   FROM student;
   ```

## Joins :

- Join statement is used to combine rows from two or more tables based on a common field between them

- Types of Joins :

1. **INNER JOIN :** It selects records that have matching values in both tables.

   ```SQL
   SELECT s.id,m.roll,s.name,s.class,m.total 
   FROM student AS s 
   INNER JOIN marksheet AS m 
   ON s.id=m.roll;
   ```

2. **LEFT JOIN  :** It returns all the values from left table and the matching values from the right table.

   ```SQL
   SELECT s.id,m.roll,s.name,s.class,m.total 
   FROM student AS s 
   LEFT JOIN marksheet AS m 
   ON s.id=m.roll;
   ```

3. **RIGHT JOIN :** It returns all the values from right table and the matching values from the left table.

   ```SQL
   SELECT s.id,m.roll,s.name,s.class,m.total 
   FROM student AS s 
   RIGHT JOIN marksheet AS m 
   ON s.id=m.roll;
   ```

4. **FULL JOIN :** It is the result of a combination of both left and right outer join.

   ```SQL
   SELECT s.id,m.roll,s.name,s.class,m.total 
   FROM student AS s 
   LEFT JOIN marksheet AS m 
   ON s.id=m.roll;
   UNION
   SELECT s.id,m.roll,s.name,s.class,m.total 
   FROM student AS s 
   RIGHT JOIN marksheet AS m 
   ON s.id=m.roll;
   ```

## Procedure :

- A procedure (often called a stored procedure) is a collection of pre-compiled SQL statements stored inside the database.

- A procedure always contains a name, parameter lists, and SQL statements.

- We can invoke the procedures by using triggers, other procedures and applications such as Java, Python, PHP, etc.

- **Calling a Stored Procedure :** We can use the CALL statement to call a stored procedure.

   ```SQL
   CALL s_marks( parameters )  
   ```

- **Types of SQL parameters :**

1. **No parameter :**

   ```SQL
   DELIMITER $$
   CREATE PROCEDURE s_marks()
   BEGIN
   
   SELECT name, marks, class FROM student;
   SELECT math, sci, total FROM marksheet;

   END $$
   DELIMITER ;

   CALL s_marks();
   ```

2. **IN parameter :** It is the default mode. It takes a parameter as input, such as an attribute. When we define it, the calling program has to pass an argument to the stored procedure. This parameter's value is always protected.

   ```SQL
   DELIMITER $$
   CREATE PROCEDURE s_marks(IN id INT)
   BEGIN
   
   SELECT * FROM student AS s
   WHERE s.id = id;
   
   END $$
   DELIMITER ;

   CALL s_marks(1);
   ```   

3. **OUT parameter :** It is used to pass a parameter as output. Its value can be changed inside the stored procedure, and the changed (new) value is passed back to the calling program. It is noted that a procedure cannot access the OUT parameter's initial value when it starts.

   ```SQL
   DELIMITER $$
   CREATE PROCEDURE s_marks(OUT total INT)
   BEGIN
   
   SELECT marks INTO total FROM student
   WHERE id=1;
   
   END $$
   DELIMITER ;

   CALL s_marks(@T);

   select @T;
   ```  

4. **INOUT parameter :** It is a combination of IN and OUT parameters. It means the calling program can pass the argument, and the procedure can modify the INOUT parameter, and then passes the new value back to the calling program.

   ```SQL
   DELIMITER $$
   CREATE PROCEDURE s_marks3(INOUT var INT)
   BEGIN

   SELECT marks INTO var FROM student
   WHERE id=var;

   END $$
   DELIMITER ;

   SET @V=1;

   CALL s_marks3(@V);

   SELECT @V;
   ```

- **Show Procedure :** This statement displays all stored procedure names, including their characteristics.

   ```SQL
   SHOW PROCEDURE STATUS 
   WHERE db="school";
   ```

- **Drop Procedure :** This statement delete the existing procedure.

   ```SQL
   DROP PROCEDURE s_marks;
   ```

## Cursor :

- An explicit cursor holds multiple records but processes a single row at a time. It uses the pointer, which moves to another row after reading one row.

- Life Cycle of Cursor :

1. **Declare Cursor**

2. **Open Cursor**

3. **Fetch Cursor**

4. **Close Cursor**

```SQL

DELIMITER $$
CREATE PROCEDURE s_class()
BEGIN

DECLARE c_name TEXT;
DECLARE c_marks INT;
DECLARE is_done INT DEFAULT 0;
DECLARE c_marks CURSOR FOR SELECT name,marks FROM student;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET is_done=1;

OPEN c_marks;

get_data:LOOP

FETCH c_marks INTO c_name, c_marks;
SELECT c_name,c_marks;
IF is_done=1
   THEN leave get_data;
END IF;

END LOOP get_data;

CLOSE c_marks;
END $$
DELIMITER ;

CALL s_class;
```

## Trigger :

- It is a special type of stored procedure that is invoked automatically in response to an event.

- `(BEFOR | AFTER) (INSERT | UPDATE | DELETE) ON table_name`

```SQL
CREATE TRIGGER sum
BEFORE INSERT
ON marksheet
FOR EACH ROW

BEGIN
   SET NEW.total = NEW.marks1 + NEW.marks2;
END  
```