-- Schema: CREATE TABLE "twofer" ("input" TEXT, "response" TEXIT);
-- Task: update the twofer table and set the response based on the input.
--CREATE TABLE twofer ("input" TEXT, "response" TEXT)

UPDATE twofer
SET response = case
when length(Input) <1 then 'One for you, one for me.' 
when length(Input) >1 then 'One for ' || input || ', one for me.' 
end

--CASE
 --   when length(Input) > 1 then response= "One for "|| INPUT ||", one for me."
 --   when length(input) < 1 then response= "One for you, one for me."
--end;