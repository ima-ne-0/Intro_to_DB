-- task_4.sql
-- Script to print the full description of the table 'books' without using DESCRIBE or EXPLAIN

SELECT 
    COLUMN_NAME AS 'Column',
    COLUMN_TYPE AS 'Type',
    IS_NULLABLE AS 'Nullable',
    COLUMN_DEFAULT AS 'Default',
    COLUMN_KEY AS 'Key',
    EXTRA AS 'Extra'
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_SCHEMA = DATABASE()  -- Current database passed as argument
    AND TABLE_NAME = 'books'
ORDER BY 
    ORDINAL_POSITION;
