-- Create table
CREATE TABLE IF NOT EXISTS estonian_holidays (
id int(11) NOT NULL AUTO_INCREMENT,
type varchar(256) NOT NULL,
date date NOT NULL,
name varchar(256) NOT NULL,
PRIMARY KEY (id)
);

-- Populate table:
INSERT INTO estonian_holidays (type, date, name) VALUES
	-- PUBLIC
		-- 2018
('public', '2018-01-01', 'Uusaasta'),
('public', '2018-02-24', 'Iseseisvuspäev, Eesti Vabariigi aastapäev'),
('public', '2018-03-30', 'Suur reede'),
('public', '2018-04-01', 'Ülestõusmispühade 1. püha'),
('public', '2018-05-01', 'Kevadpüha'),
('public', '2018-05-20', 'Nelipühade 1. püha'),
('public', '2018-06-23', 'Võidupüha'),
('public', '2018-06-24', 'Jaanipäev'),
('public', '2018-08-20', 'Taasiseseisvumispäev'),
('public', '2018-12-24', 'Jõululaupäev'),
('public', '2018-12-25', 'Esimene jõulupüha'),
('public', '2018-12-26', 'Teine jõulupüha'),
		-- 2019
('public', '2019-01-01', 'Uusaasta'),
('public', '2019-02-24', 'Iseseisvuspäev, Eesti Vabariigi aastapäev'),
('public', '2019-04-19', 'Suur reede'),
('public', '2019-04-21', 'Ülestõusmispühade 1. püha'),
('public', '2019-05-01', 'Kevadpüha'),
('public', '2019-06-09', 'Nelipühade 1. püha'),
('public', '2019-06-23', 'Võidupüha'),
('public', '2019-06-24', 'Jaanipäev'),
('public', '2019-08-20', 'Taasiseseisvumispäev'),
('public', '2019-12-24', 'Jõululaupäev'),
('public', '2019-12-25', 'Esimene jõulupüha'),
('public', '2019-12-26', 'Teine jõulupüha'),
	-- NATIONAL
		-- JANUARY
('national', '2018-01-01', 'Näärid'),
('national', '2018-01-06', 'Kolmekuningapäev'),
('national', '2018-01-07', 'Nuudipäev ehk kanutipäev'),
('national', '2018-01-13', 'Nuudipäev ehk kanutipäev'),
('national', '2018-01-14', 'Taliharjapäev'),
('national', '2018-01-17', 'Tõnisepäev'),
('national', '2018-01-25', 'Paavlipäev'),
		-- FEBRUARY
('national', '2018-02-02', 'Küünlapäev ehk pudrupäev'),
('national', '2018-02-09', 'Luuvalupäev'),
('national', '2018-02-22', 'Peetripäev'),
('national', '2018-02-24', 'Talvine madisepäev'),
		-- MARCH
('national', '2018-03-01', 'Jevdokiapäev'),
('national', '2018-03-09', 'Sorokasveet ehk Tsirgupäev'),
('national', '2018-03-12', 'Korjusepäev'),
('national', '2018-03-17', 'Alekseipäev'),
('national', '2018-03-17', 'Patrikupäev'),
('national', '2018-03-17', 'Käädripäev ehk Ussiliikumise päev püha Gertrudi mälestusvpäev'),
('national', '2018-03-21', 'Pendipäev'),
('national', '2018-03-25', 'Maarjapäev ehk paastumaarjapäev, ka marjapunapäev'),
		-- APRIL
('national', '2018-04-01', 'Aprillipäev ehk naljapäev'),
('national', '2018-04-01', 'Karjalaskepäev'),
('national', '2018-04-14', 'Künnipäev'),
('national', '2018-04-23', 'Jüripäev'),
('national', '2018-04-25', 'Markusepäev'),
		-- MAY
('national', '2018-05-01', 'Volbripäev'),
('national', '2018-05-09', 'Kevadine nigulapäev'),
('national', '2018-05-18', 'Eerikupäev'),
('national', '2018-05-25', 'Urbanipäev'),
		-- JUNE
('national', '2018-06-15', 'Viidipäev'),
('national', '2018-06-24', 'Jaanipäev'),
('national', '2018-06-27', 'Seitsmemagajapäev'),
('national', '2018-06-29', 'Suvine peetripäev'),
		-- JULY
('national', '2018-07-02', 'Heinamaarjapäev'),
('national', '2018-07-10', 'Seitsmevennapäev'),
('national', '2018-07-22', 'Madlipäev'),
('national', '2018-07-25', 'Jaagupipäev'),
('national', '2018-07-26', 'Annepäev'),
('national', '2018-07-29', 'Olevipäev'),
		-- AUGUST
('national', '2018-08-01', 'Makaveipäev'),
('national', '2018-08-10', 'Lauritsapäev'),
('national', '2018-08-15', 'Rukkimaarjapäev'),
('national', '2018-08-18', 'Rollapäev'),
('national', '2018-08-19', 'Paasapäev'),
('national', '2018-08-24', 'Pärtlipäev'),
('national', '2018-08-29', 'Ivanoskoroona'),
		-- SEPTEMBER
('national', '2018-09-08', 'Ussimaarjapäev'),
('national', '2018-09-21', 'Sügisene madisepäev'),
('national', '2018-09-29', 'Mihklipäev'),
		-- OCTOBER
('national', '2018-10-14', 'Kolletamispäev'),
('national', '2018-10-26', 'Midruskipäev'),
('national', '2018-10-28', 'Simunapäev'),
('national', '2018-10-31', 'Midruskipäev'),
		-- NOVEMBER
('national', '2018-11-02', 'Hingedepäev'),
('national', '2018-11-10', 'Mardipäev'),
('national', '2018-11-25', 'Kadripäev'),
('national', '2018-11-30', 'Andresepäev'),
		-- DECEMBER
('national', '2018-12-06', 'Nigulapäev'),
('national', '2018-12-13', 'Luutsipäev'),
('national', '2018-12-21', 'Toomapäev'),
('national', '2018-12-24', 'Jõulud'),
('national', '2018-12-26', 'Tabanipäev ehk tehvanusepäev ehk tehvanipäev'),
('national', '2018-12-28', 'Süütalastepäev'),
('national', '2018-12-31', 'Näärid');