DROP TABLE IF EXISTS money_data;

create table money_data (
	id SERIAL PRIMARY KEY,
	money_amount VARCHAR(50),
	currency VARCHAR(50),
	currency_code VARCHAR(50)
);
insert into money_data (money_amount, currency, currency_code) values ('60.75', 'Peso', 'PHP');
insert into money_data (money_amount, currency, currency_code) values ('79.24', 'Dinar', 'RSD');
insert into money_data (money_amount, currency, currency_code) values ('96.91', 'Rupiah', 'IDR');
insert into money_data (money_amount, currency, currency_code) values ('87.12', 'Ruble', 'RUB');
insert into money_data (money_amount, currency, currency_code) values ('57.37', 'Euro', 'EUR');
insert into money_data (money_amount, currency, currency_code) values ('37.15', 'Ruble', 'RUB');
insert into money_data (money_amount, currency, currency_code) values ('63.40', 'Rupiah', 'IDR');
insert into money_data (money_amount, currency, currency_code) values ('86.69', 'Yuan Renminbi', 'CNY');
insert into money_data (money_amount, currency, currency_code) values ('70.80', 'Peso', 'COP');
insert into money_data (money_amount, currency, currency_code) values ('82.09', 'Koruna', 'CZK');
