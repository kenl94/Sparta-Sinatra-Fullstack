DROP TABLE IF EXISTS money;

create table money (
	id SERIAL PRIMARY KEY,
	money_amount VARCHAR(50),
	currency VARCHAR(50),
	currency_code VARCHAR(50)
);
insert into money (money_amount, currency, currency_code) values ('1.74', 'Euro', 'EUR');
insert into money (money_amount, currency, currency_code) values ('35.43', 'Dollar', 'AUD');
insert into money (money_amount, currency, currency_code) values ('67.04', 'Yuan Renminbi', 'CNY');
insert into money (money_amount, currency, currency_code) values ('23.50', 'Birr', 'ETB');
insert into money (money_amount, currency, currency_code) values ('39.61', 'Peso', 'PHP');
insert into money (money_amount, currency, currency_code) values ('39.21', 'Peso', 'PHP');
insert into money (money_amount, currency, currency_code) values ('10.59', 'Shekel', 'ILS');
insert into money (money_amount, currency, currency_code) values ('8.13', 'Rupiah', 'IDR');
insert into money (money_amount, currency, currency_code) values ('77.03', 'Euro', 'EUR');
insert into money (money_amount, currency, currency_code) values ('14.08', 'Euro', 'EUR');
