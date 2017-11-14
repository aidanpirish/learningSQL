
-- Change Jackson's name to Jack
UPDATE cats SET name="Jack"
WHERE name="Jackson";

-- Change Ringo's breed to Shorthair
UPDATE cats SET breed="Shorthair"
WHERE name="Ringo";

-- Update both Maine Coons to age 12
UPDATE cats SET age=12
WHERE breed="Maine Coon";
