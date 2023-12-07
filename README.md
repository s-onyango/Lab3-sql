# Lab3-sql

This repository is for the submission of Lab 3 for COMP 251Course.

INSERT INTO client (clientID, client_name, client_address, client_age)
VALUES
(1, 'James Clark', '1001 Plymouth Ave', 38),
(2, 'Leah Nicole', '2401 Chicago Ave. #212', 36),
(3, 'Silas Alexander', '5012 Humboldt Lane', 22),
(4, 'Noah Charles', '501 College Ave.', 25),
(5, 'Chris Isaac', '228 e,149th st.', 37),
(6, 'Noah Charles', '501 College Ave', 25),
(7, 'Brittner Owens', '321 Thursday Ave.', 42),
(8, 'Kurt Douglas', '123 Mt. Glenwood', 58),
(9, 'Areta Farries', '789 Touy Ave.', 62),
(10, 'Jessica Daniel', '698 Featherstone', 47),
(11, 'Gary Moore', '698 Featherstone', 48),
(12, 'ELnora Daniel', '698 Featherstone', 61),
(13, 'Daniel Moore', '698 Featherstone', 22),
(14, 'Cheryl Pearson', '228 e, 149th st.', 67);



SELECT * FROM policy WHERE policy_Type = 'Home';

INSERT INTO policy (policyID, policy_Type, policy_Term, policy_Limits)
VALUES
(1, 'Home', 'yearly', 100000),
(2, 'Home', 'yearly', 250000),
(3, 'Home', 'yearly', 500000),
(4, 'Home', 'yearly', 1000000),
(5, 'Home', '6-month', 100000),
(6, 'Home', '6-month', 250000),
(7, 'Home', '6-month', 500000),
(8, 'Home', '6-month', 1000000),

INSERT INTO policy (policyID, policy_Type, policy_Term, policy_Limits)
VALUES
(9, 'Car', 'yearly', 60000),
(10, 'Car', 'yearly', 120000);

SELECT count(policyID) FROM policy;

SELECT * FROM client;
SELECT 'Chris Isaac' AS 'Chris Pearson';

SELECT * FROM policy WHERE policy_Term = 'yearly'; 

SELECT * FROM policy WHERE policy_Type = 'Home' AND policy_Limits <= 250000;

SELECT client_name, client_address, client_age FROM client order by client_age DESC;

SELECT avg (client_age) FROM client;

SELECT client_name, client_age FROM client WHERE client_age BETWEEN 22 and 40;

SELECT client_name, client_address FROM client WHERE client_address = '698 Featherstone' ORDER BY client_age ASC;

SELECT client_name, client_address, client_age FROM client WHERE client_age >= 35 AND client_address LIKE '%8%';

SELECT count(policyID) AS 'Count of Policies', policy_Type AS 'Policy Type' FROM policy group by policy_Type;

SELECT MIN(client_age) AS 'Youngest Client', MAX(client_age) AS 'Oldest Client' FROM client;

INSERT INTO policylist (CLIENT_clientID, POLICY_policyID)
VALUES
(1, 8),
(3, 8),
(2, 1),
(2, 4),
(5, 4),
(8, 5),
(11, 7),
(13, 1),
(14, 6);

SELECT client.clientID, client.client_name, client.client_address, client.client_age, policylist.CLIENT_clientID, policylist.POLICY_policyID FROM client INNER JOIN policylist ON client.clientID = policylist.CLIENT_clientID WHERE client.clientID IN (1, 2, 3, 5, 8, 11, 13, 14);

SELECT client.clientID, client.client_name, client.client_address, client.client_age, policylist.CLIENT_clientID, policylist.POLICY_policyID FROM client INNER JOIN policylist ON client.clientID = policylist.CLIENT_clientID WHERE client.clientID = 2;


I tried to take a stab at the extra credit but I couldn't figure out how to join multiple tables together.
