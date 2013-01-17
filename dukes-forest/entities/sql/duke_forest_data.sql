INSERT INTO forest.category (NAME,TAGS) VALUES ('Plants','Seeds, trees, flowers ...');
INSERT INTO forest.category (NAME,TAGS) VALUES ('Food','Foods, healthy items ...');
INSERT INTO forest.category (NAME,TAGS) VALUES ('Services','Fence installation, gardening ...');
INSERT INTO forest.category (NAME,TAGS) VALUES ('Tools','Tools for gardeners and landscapers');

INSERT INTO forest.person (FIRSTNAME,LASTNAME,EMAIL,ADDRESS,CITY,PASSWORD,DTYPE) VALUES ('Robert','Exampler','robert@example.com','Example street','San Francisco','81dc9bdb52d04dc20036dbd8313ed055','Customer');
INSERT INTO forest.person (FIRSTNAME,LASTNAME,EMAIL,ADDRESS,CITY,PASSWORD,DTYPE) VALUES ('Admin','Admin','admin@example.com','Example street','Belmont','81dc9bdb52d04dc20036dbd8313ed055','Administrator');
INSERT INTO forest.person (FIRSTNAME,LASTNAME,EMAIL,ADDRESS,CITY,PASSWORD,DTYPE) VALUES ('Jack','Frost','jack@example.com','Example Blvd','San Francisco','81dc9bdb52d04dc20036dbd8313ed055','Customer');
INSERT INTO forest.person (FIRSTNAME,LASTNAME,EMAIL,ADDRESS,CITY,PASSWORD,DTYPE) VALUES ('Payment','User','paymentUser@dukesforest.com','-','-','58175e1df62779046a3a4e2483575937','Customer');

INSERT INTO forest.groups (NAME, DESCRIPTION) VALUES ('USERS', 'Users of the store');
INSERT INTO forest.groups (NAME, DESCRIPTION) VALUES ('ADMINS', 'Administrators of the store');

INSERT INTO forest.person_groups (GROUPS_ID,EMAIL) VALUES (1,'robert@example.com');
INSERT INTO forest.person_groups (GROUPS_ID,EMAIL) VALUES (2,'admin@example.com');
INSERT INTO forest.person_groups (GROUPS_ID,EMAIL) VALUES (1,'jack@example.com');
INSERT INTO forest.person_groups (GROUPS_ID,EMAIL) VALUES (1,'paymentUser@dukesforest.com');

INSERT INTO forest.order_status (ID,STATUS) VALUES (1,'Pending processing');
INSERT INTO forest.order_status (ID,STATUS) VALUES (2,'Validating payment'); 
INSERT INTO forest.order_status (ID,STATUS) VALUES (3,'Ready to ship');
INSERT INTO forest.order_status (ID,STATUS) VALUES (4,'Order shipped');
INSERT INTO forest.order_status (ID,STATUS) VALUES (5,'Order cancelled');
INSERT INTO forest.order_status (ID,STATUS) VALUES (6,'Order cancelled');
