create table if not exists employee (
	id serial primary key,
	name VARCHAR (60) unique not null,
	department VARCHAR (60) unique not null,
	chief_id INTEGER references employee(id)
);