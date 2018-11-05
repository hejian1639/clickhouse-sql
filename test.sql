DROP TABLE arrays_test

CREATE TABLE arrays_test (s String, arr Array(String)) ENGINE = Memory
 
INSERT INTO arrays_test VALUES ('Hello', ['1','2']), ('World', ['3','4','5']), ('Goodbye', [])
 
SELECT * FROM arrays_test WHERE has(arr,'1')=1
 
SELECT s, arr FROM arrays_test ARRAY JOIN arr
 
SELECT s, arr, a FROM arrays_test ARRAY JOIN arr AS a WHERE a=1
 
SELECT s, arr, a, num, mapped FROM arrays_test ARRAY JOIN arr AS a, arrayEnumerate(arr) AS num, arrayMap(x -> x + 1, arrayEnumerate(arr)) AS mapped


