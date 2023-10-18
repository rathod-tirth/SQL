## SQL - Structured Query Language

### Types of Data Types :
- **int :** numeric value only
- **text :** string value only
- **varchar(0) :** both numeric and string with limitation characters
   
### Types of constraint :-

- **NOT NULL :** should not be empty
- **UNIQUE :** should not repeat
- DEFAULT
- CHECK
- **PRIMARY KEY :** combination of not null and unique
- FOREIGN KEY
- INDEX

### Types of SQL Commands :

![SQL Command Chart](https://static.javatpoint.com/dbms/images/dbms-sql-command.png)

1. **DDL - Data Defination Language :**
   - DDL changes the structure of the table like creating a table, deleting a table, altering a table, etc.

   - All the command of DDL are auto-committed that means it permanently save all the changes in the database.

   - **DDL Commands :**
      - create
      - alter
      - drop
      - truncate

   1. **Create :** It is used to create a new table or database.
      
      ```SQL
      CREATE database database_name;

      CREATE TABLE student(
      id INT PRIMARY KEY
      );
      ```

      - `column_name data_type constraint`
      - while creating new table atleast add one column
      - column_name and datatype is required to create a new column
      - by default if not mentioned, column is given null constraint

   2. **Alter :** It is used to add, modify or delete existing attribute in a table.

      - Add column :
      
         ```SQL
         ALTER TABLE table_name
         ADD class VARCHAR(2);
         ```
         
         `ADD column_name datatype constraint`

      - Modify column:
         
         ```SQL
         ALTER TABLE table_name
         MODIFY class VARCHAR(2) not null;
         ```

         `MODIFY column_name datatype constraint`
         - when you modify a column you re-assign the datatype and constraint of the column, so if you want one of them to be as it is, make sure to rewrite.

      - Delete column:

         ```SQL
         ALTER TABLE table_name
         -- DROP column_name;
         DROP class;
         ```