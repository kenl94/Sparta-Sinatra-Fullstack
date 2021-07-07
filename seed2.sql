DROP TABLE IF EXISTS shares;

create table shares (
	id SERIAL PRIMARY KEY,
	stock_market VARCHAR(50),
	market_cap VARCHAR(50),
	stock_name VARCHAR(50),
	stock_sybl VARCHAR(50)
);
insert into shares (stock_market, market_cap, stock_name, stock_sybl) values ('NYSE', '$1.5B', 'Walker & Dunlop, Inc.', 'WD');
insert into shares (stock_market, market_cap, stock_name, stock_sybl) values ('NASDAQ', '$28.74M', 'FSB Bancorp, Inc.', 'FSBC');
insert into shares (stock_market, market_cap, stock_name, stock_sybl) values ('NASDAQ', '$6.31M', 'Chanticleer Holdings, Inc.', 'HOTR');
insert into shares (stock_market, market_cap, stock_name, stock_sybl) values ('NYSE', '$123.34B', 'Sanofi', 'SNY');
insert into shares (stock_market, market_cap, stock_name, stock_sybl) values ('NYSE', '$41.27B', 'Marsh & McLennan Companies, Inc.', 'MMC');
insert into shares (stock_market, market_cap, stock_name, stock_sybl) values ('NYSE', '$9.61B', 'Advance Auto Parts Inc', 'AAP');
insert into shares (stock_market, market_cap, stock_name, stock_sybl) values ('NYSE', 'n/a', 'Zions Bancorporation', 'ZB^G');
insert into shares (stock_market, market_cap, stock_name, stock_sybl) values ('NASDAQ', '$289.76M', 'SLM Corporation', 'SLMBP');
insert into shares (stock_market, market_cap, stock_name, stock_sybl) values ('NYSE', '$389.62M', 'Heritage Insurance Holdings, Inc.', 'HRTG');
insert into shares (stock_market, market_cap, stock_name, stock_sybl) values ('NASDAQ', '$9.12B', 'Qorvo, Inc.', 'QRVO');
