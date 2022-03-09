create table account(
	id_account serial,
	email varchar,
	pass varchar,
	id_role int
);

create  table products(
	id_product serial primary key,
	nama_product varchar,
	harga integer
);