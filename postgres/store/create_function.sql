CREATE OR REPLACE FUNCTION is_greater(numeric, numeric) RETURNS boolean
AS $$
  SELECT $1 > $2;
$$ LANGUAGE sql;
