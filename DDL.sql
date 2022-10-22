create table person(
id int NOT NULL AUTO_INCREMENT,
name varchar(50) not NULL,
primary key(id))

create table loan(
id INT NOT NULL AUTO_INCREMENT,
person_id INT not NULL,
Amount INT not NULL,
Interest FLOAT not NULL,
Paid_on DATE not NULL,
Guarantor_id INT,
Due_Date DATE,
Interest_Deducted_During_Payout BOOLEAN NOT NULL,
Status varchar(20),
Closed_On DATE,
Comments TEXT,
PRIMARY key(id),
FOREIGN key(person_id) REFERENCES person(id),
FOREIGN key(Guarantor_id) REFERENCES person(id))
