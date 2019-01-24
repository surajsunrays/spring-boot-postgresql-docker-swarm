CREATE TABLE person (
	id BIGINT NOT NULL,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	PRIMARY KEY (id)
);

insert into person (id, first_name, last_name) values (101,'Rujia', 'Li');

CREATE TABLE hotel (
	id BIGINT NOT NULL,
	name varchar(255) NOT NULL,
	address varchar(255) NOT NULL,
	zip varchar(255) NOT NULL,
	version BIGINT NOT NULL,
	PRIMARY KEY (id)
);


insert into hotel(id, name, address, zip, version) values (10, 'Test Hotel 1', 'Test Street 1', '000001', 1);
insert into hotel(id, name, address, zip, version) values (11, 'Test Hotel 2', 'Test Street 2', '000002', 1);
insert into hotel(id, name, address, zip, version) values (12, 'Test Hotel 3', 'Test Street 3', '000003', 1);
insert into hotel(id, name, address, zip, version) values (13, 'Test Hotel 4', 'Test Street 4', '000004', 1);
