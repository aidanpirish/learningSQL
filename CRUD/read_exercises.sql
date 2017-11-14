
/* select cat_id */
SELECT cat_id FROM cats;

/* select name and breed */
SELECT name, breed FROM cats;

/* select name and age where breed is Tabby */
SELECT name, age FROM cats WHERE breed="Tabby";

/* select cat_id and age where they're equal */
SELECT cat_id, age FROM cats WHERE cat_id = age;
