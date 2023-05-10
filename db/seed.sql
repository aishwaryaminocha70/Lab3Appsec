-- Put products into table.
--
LOAD DATA INFILE '/products.csv' INTO TABLE LegacySite_product FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"' LINES TERMINATED BY '\r\n';
--
-- Put user into table.
--
LOAD DATA INFILE '/users.csv' INTO TABLE LegacySite_user FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"' LINES TERMINATED BY '\r\n';