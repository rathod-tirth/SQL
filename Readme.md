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