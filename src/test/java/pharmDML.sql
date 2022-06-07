SELECT * FROM users;
SELECT * FROM cart;
SELECT * FROM pharmacy;
SELECT * FROM drug;
SELECT * FROM inventory;
SELECT * FROM drugTest;

CREATE sequence cart_seq;
CREATE sequence pharmacy_seq;
CREATE sequence drug_seq;
CREATE sequence cart_seq;

INSERT INTO users VALUES ('1', '0000', '백경성', '01012345678')

SELECT d.drugId, d.drugName, d.ingredient, d.dosage, d.company, p.pharmaId, p.name, p.address, p.phone 
FROM drug d, pharmacy p 
WHERE d.pharmaId=p.pharmaId AND d.pharmaId=1

INSERT INTO users VALUES('bks123','0000','백경성','01012345678')
INSERT INTO users VALUES('bsw123','0000','배승원','01012345678')
INSERT INTO users VALUES('ljh123','0000','이정호','01012345678')
INSERT INTO users VALUES('csa123','0000','조수아','01012345678')

DELETE FROM drugTest WHERE pharmaId='1'

INSERT INTO cart VALUES(1,'bks123','1')
INSERT INTO cart VALUES(2,'bks123','2')
INSERT INTO cart VALUES(3,'bks123','3')

SELECT d.drugId, d.drugName, d.ingredient, d.dosage, d.company
FROM drug d, users u, cart c
WHERE c.drugId=d.drugId AND c.id=u.id AND c.id='bks123'

INSERT INTO cart VALUES(3,'bks123','3')

INSERT INTO inventory VALUES(1,5,'1')
INSERT INTO inventory VALUES(2,5,'2')
INSERT INTO inventory VALUES(3,5,'3')

SELECT i.invenId, i.quantity, d.drugId, d.drugName, d.ingredient, d.dosage, d.company
FROM drug d, inventory i
WHERE i.drugId=d.drugId AND i.drugId='1'

UPDATE inventory SET quantity=quantity+5
WHERE drugId='1'

ALTER TABLE drug DROP ingredient;

INSERT INTO cart VALUES()