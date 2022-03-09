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

create table status_customer(
	id_status serial primary key,
	status varchar
);

create table customers(
	id_customers serial primary key,
	id_product int,
	id_status int,
	nama_customer varchar,
	no_hp varchar,
	constraint fk_product foreign key (id_product) references products(id_product),
	constraint fk_status foreign key (id_status) references status_customer (id_status)
);