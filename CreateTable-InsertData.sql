					
									-- Tạo bảng "BangDau"
create table BangDau(
	ID int primary key,
    tenbang varchar(40)
);

	
									-- Tạo bảng "QuocGia"
create table QuocGia(
	ID varchar(40) primary key,
    tenquocgia varchar(40),
    diem int,
    bangdau_ID int,
    foreign key (bangdau_ID) references BangDau(ID)
);


									-- Tạo bảng "CauThu"
create table CauThu(
	ID varchar(40) primary key,
    quocgia_ID varchar(40),
    ten varchar(40),
    namsinh int,
    chieucao int,
    vitri varchar(40),
    soao int,
    foreign key (quocgia_ID) references QuocGia(ID)
);


									-- Tạo bảng "TranDau"
create table TranDau(
	ID int auto_increment primary key,
    ngaythidau date,
    team1_ID varchar(40),
    team2_ID varchar(40),
    team1_banthang int,
    team2_banthang int,
    team1_thevang int,
    team2_thevang int,
    team1_thedo int,
    team2_thedo int,
    foreign key (team1_ID) references QuocGia(ID),
	foreign key (team2_ID) references QuocGia(ID)
);


								-- Tạo bảng "KetQuaChiTiet"
create table KetQuaChiTiet(
	ID int auto_increment primary key,
    cauthu_ID varchar(40),
    trandau_ID int,
    banthang int,
    thevang int,
    thedo int,
    thoigian int,
    foreign key (cauthu_ID) references CauThu(ID),
    foreign key (trandau_ID) references TranDau(ID)
);




insert into BangDau values (1,'A') , (2,'B') ;


insert into QuocGia values ('MYA','Myanmar','10','1'),
('CAM','Campuchia','7','1'),
('PHI','Philipines','7','1'),
('MAS','Malaysia','4','1'),
('TLS','Timor-Leste','0','1'),
('VIE','Viet Nam','13','2'),
('INA','Indonesia','12','2'),
('THA','Thai Lan','10','2'),
('SIN','Singapore','4','2'),
('LAO','Lao','4','2'),
('BRU','Brunei','0','2');



insert into CauThu values('VIE30','VIE','Nguyen Van Toan',1999,185,'GK',30);
insert into CauThu values('VIE1','VIE','Bui Tien Dung',1997,181,'GK',1);
insert into CauThu values('VIE4','VIE','Ho Tan Tai',1997,180,'DF',4);
insert into CauThu values('VIE18','VIE','Nguyen Thanh Trung',1997,180,'DF',18);
insert into CauThu values('VIE3','VIE','Huynh Tan Sinh',1998,182,'DF',3);
insert into CauThu values('VIE2','VIE','Do Thanh Thinh',1998,170,'DF',2);
insert into CauThu values('VIE21','VIE','Nguyen Duc Chien',1998,180,'DF',21);
insert into CauThu values('VIE5','VIE','Doan Van Hau',1999,185,'DF',5);
insert into CauThu values('VIE19','VIE','Nguyen Quang Hai',1997,169,'MF',19);
insert into CauThu values('VIE7','VIE','Trieu Viet Hung',1997,171,'MF',7);
insert into CauThu values('VIE11','VIE','Tran Thanh Son',1997,173,'MF',11);
insert into CauThu values('VIE14','VIE','Nguyen Hoang Duc',1998,183,'MF',14);
insert into CauThu values('VIE6','VIE','Bui Tien Dung',1998,177,'MF',6);
insert into CauThu values('VIE20','VIE','Nguyen Trong Hung',1997,175,'MF',20);
insert into CauThu values('VIE12','VIE','Truong Van Thai Quy',1997,171,'MF',12);
insert into CauThu values('VIE8','VIE','Nguyen Trong Hoang',1989,172,'MF',8);
insert into CauThu values('VIE16','VIE','Do Hung Dung',1993,170,'MF',16);
insert into CauThu values('VIE22','VIE','Nguyen Tien Linh',1997,183,'FW',22);
insert into CauThu values('VIE9','VIE','Ha Duc Chinh',1997,172,'FW',9);
insert into CauThu values('BRU1','BRU','Anak Nyaring',1998,175,'GK',1);
insert into CauThu values('BRU3','BRU','Syakir Basri',1997,176,'DF',3);
insert into CauThu values('BRU2','BRU','Alimuddin Jamaludin',1997,180,'DF',2);
insert into CauThu values('BRU4','BRU','Safwan Jaini',2000,183,'DF',4);
insert into CauThu values('BRU5','BRU','Hafiz Suhardi',2001,176,'DF',5);
insert into CauThu values('BRU8','BRU','Ikhmal Damit',1993,178,'MF',8);
insert into CauThu values('BRU10','BRU','Nazirrudin Ismail',1998,169,'MF',10);
insert into CauThu values('BRU17','BRU','Amin Sisa',1998,171,'MF',17);
insert into CauThu values('BRU7','BRU','Asyraffahmi Norsamri',2000,189,'MF',7);
insert into CauThu values('BRU20','BRU','Adi Said',1990,176,'FW',20);
insert into CauThu values('BRU9','BRU','Faiq Bolkiah',1998,178,'FW',9);
insert into CauThu values('INA1','INA','Arga Nadeo',1997,181,'GK',1);
insert into CauThu values('INA2','INA','Andy Setyo',1997,180,'DF',2);
insert into CauThu values('INA3','INA','Adi Bagas',1997,176,'DF',3);
insert into CauThu values('INA11','INA','Firza Andika',1999,167,'DF',11);
insert into CauThu values('INA14','INA','Asnawi Bahar',1999,170,'DF',14);
insert into CauThu values('INA7','INA','Zulfiandi',1995,179,'MF',7);
insert into CauThu values('INA22','INA','Ramdani Saddil',1999,170,'MF',22);
insert into CauThu values('INA20','INA','Osvaldo Haay',1998,175,'FW',20);
insert into CauThu values('INA6','INA','Evan Dimas',1995,168,'MF',6);
insert into CauThu values('INA10','INA','Egy Vikri',2000,165,'FW',10);
insert into CauThu values('INA9','INA','Muhammad Rafli',1998,190,'FW',9);
insert into CauThu values('THA20','THA','Muangnam',1997,181,'GK',20);
insert into CauThu values('THA3','THA','Auksornsri',1997,183,'DF',3);
insert into CauThu values('THA4','THA','Saengdao',1997,183,'DF',4);
insert into CauThu values('THA14','THA','Akkratum',1998,179,'DF',14);
insert into CauThu values('THA15','THA','Promsupa',1997,175,'DF',15);
insert into CauThu values('THA7','THA','Imura',1997,179,'MF',7);
insert into CauThu values('THA11','THA','Anon',1997,170,'MF',11);
insert into CauThu values('THA18','THA','Kritsada',1998,175,'MF',18);
insert into CauThu values('THA10','THA','Supachok',1998,169,'FW',10);
insert into CauThu values('THA9','THA','Supachai',1998,183,'FW',9);
insert into CauThu values('THA17','THA','Suphanat',2002,173,'FW',17);
insert into CauThu values('SIN18','SIN','Rohaizad',1997,178,'GK',18);
insert into CauThu values('SIN16','SIN','Irfan Fandi',1997,189,'DF',16);
insert into CauThu values('SIN13','SIN','Najeeb',1999,180,'DF',13);
insert into CauThu values('SIN14','SIN','Salamat',2000,183,'DF',14);
insert into CauThu values('SIN12','SIN','Sazali',1998,176,'DF',12);
insert into CauThu values('SIN6','SIN','Mahler',2000,184,'MF',6);
insert into CauThu values('SIN3','SIN','Stewart',2000,180,'DF',3);
insert into CauThu values('SIN7','SIN','Suzliman',1998,174,'DF',7);
insert into CauThu values('SIN10','SIN','Ramli',1990,178,'FW',10);
insert into CauThu values('SIN11','SIN','Pashia',1998,172,'FW',11);
insert into CauThu values('SIN9','SIN','Ikhsan Fandi',1999,183,'FW',9);
insert into CauThu values('LAO1','LAO','Xaysavath',1999,178,'GK',1);
insert into CauThu values('LAO2','LAO','Phetsivilay',1998,176,'DF',2);
insert into CauThu values('LAO3','LAO','Vanna',1998,179,'DF',3);
insert into CauThu values('LAO4','LAO','Aphixay Thanakhanty',1998,182,'DF',4);
insert into CauThu values('LAO6','LAO','Keophouvong',2000,167,'MF',6);
insert into CauThu values('LAO10','LAO','Phomvongsa Kittisak',2001,174,'MF',10);
insert into CauThu values('LAO7','LAO','Bounphithak',1998,176,'DF',7);
insert into CauThu values('LAO8','LAO','Sengvanny Somlith',1999,183,'MF',8);
insert into CauThu values('LAO9','LAO','Soukaphone',1992,173,'FW',9);
insert into CauThu values('LAO17','LAO','Somxay Keohanam',1998,175,'FW',17);
insert into CauThu values('LAO19','LAO','Bounkong Bounphachan',2003,172,'FW',19);
insert into CauThu values('MYA18','MYA','Sat Naing',1997,187,'GK',18);
insert into CauThu values('MYA2','MYA','Moe Kyaw',1997,183,'DF',2);
insert into CauThu values('MYA3','MYA','Min Thu',1998,173,'DF',3);
insert into CauThu values('MYA4','MYA','Soe Moe Kyaw',1999,186,'DF',4);
insert into CauThu values('MYA5','MYA','Yint Aung',1998,177,'DF',5);
insert into CauThu values('MYA6','MYA','Bo Bo',1996,169,'MF',6);
insert into CauThu values('MYA7','MYA','Moe Aung',1999,176,'MF',7);
insert into CauThu values('MYA8','MYA','Kaung Khant',2000,170,'MF',8);
insert into CauThu values('MYA12','MYA','Wunna Soe',2000,176,'DF',12);
insert into CauThu values('MYA13','MYA','Kaung Mann',1998,179,'FW',13);
insert into CauThu values('MYA20','MYA','Moe Naing',1998,176,'MF',20);
insert into CauThu values('CAM1','CAM','Keo Soksela',1997,179,'GK',1);
insert into CauThu values('CAM3','CAM','Sath Rosib',1997,166,'DF',3);
insert into CauThu values('CAM13','CAM','Ouk Sovann',1998,174,'DF',13);
insert into CauThu values('CAM11','CAM','Kan Pisal',2000,172,'MF',11);
insert into CauThu values('CAM14','CAM','Tes Sambath',2000,173,'MF',14);
insert into CauThu values('CAM23','CAM','In Sodavid',1998,168,'MF',23);
insert into CauThu values('CAM17','CAM','Sieng Chanthea',2002,172,'FW',17);
insert into CauThu values('CAM5','CAM','Seut Baraing',1999,160,'DF',5);
insert into CauThu values('CAM9','CAM','Reung Bunhieng',2003,162,'FW',9);
insert into CauThu values('CAM10','CAM','Sin Spophanat',2004,173,'FW',10);
insert into CauThu values('CAM8','CAM','Keo Sokpheng',1998,175,'MF',8);
insert into CauThu values('PHI1','PHI','Pinthus',1998,187,'GK',1);
insert into CauThu values('PHI2','PHI','Suerti',1999,182,'DF',2);
insert into CauThu values('PHI4','PHI','Aguinaldo',1995,181,'DF',4);
insert into CauThu values('PHI15','PHI','Baas',2000,185,'DF',15);
insert into CauThu values('PHI3','PHI','Diano',1997,176,'DF',3);
insert into CauThu values('PHI9','PHI','Gayoso',1997,178,'FW',9);
insert into CauThu values('PHI6','PHI','Rontini',1999,169,'MF',6);
insert into CauThu values('PHI7','PHI','De Bruycker',1997,180,'MF',7);
insert into CauThu values('PHI8','PHI','Stephan Schrock',1986,178,'MF',8);
insert into CauThu values('PHI14','PHI','Gallantes',2001,172,'MF',14);
insert into CauThu values('PHI10','PHI','Uzoka',1998,175,'FW',10);
insert into CauThu values('MAS1','MAS','Nadzli',1998,166,'GK',1);
insert into CauThu values('MAS17','MAS','Zakaria',1995,183,'DF',17);
insert into CauThu values('MAS2','MAS','Nor Azlin',1996,180,'DF',2);
insert into CauThu values('MAS3','MAS','Tan',1997,183,'DF',3);
insert into CauThu values('MAS20','MAS','Safari',1998,175,'DF',20);
insert into CauThu values('MAS14','MAS','Abba',1997,185,'MF',14);
insert into CauThu values('MAS16','MAS','Amier',1997,174,'MF',16);
insert into CauThu values('MAS13','MAS','Dinesh',1998,171,'DF',13);
insert into CauThu values('MAS10','MAS','Syahiran',1998,175,'FW',10);
insert into CauThu values('MAS19','MAS','Rashid',1999,169,'FW',19);
insert into CauThu values('MAS9','MAS','Fayyadh',2000,186,'FW',9);
insert into CauThu values('TLS1','TLS','Pereira',1997,186,'GK',1);
insert into CauThu values('TLS22','TLS','Viegas',1999,179,'DF',22);
insert into CauThu values('TLS2','TLS','Da Costa',1998,178,'DF',2);
insert into CauThu values('TLS3','TLS','Mendonca',1999,175,'DF',3);
insert into CauThu values('TLS4','TLS','De Oliveira',2000,181,'DF',4);
insert into CauThu values('TLS6','TLS','Jesus Reis',2001,171,'MF',6);
insert into CauThu values('TLS8','TLS','De Almeida',1994,174,'MF',8);
insert into CauThu values('TLS11','TLS','Ima Kefi',2002,180,'MF',11);
insert into CauThu values('TLS9','TLS','Savio',2001,181,'FW',9);
insert into CauThu values('TLS10','TLS','Da Cruz Martins',1997,176,'FW',10);
insert into CauThu values('TLS7','TLS','Mesquita',1998,175,'FW',7);


insert into TranDau values ('1','2019-11-25','VIE','BRU',6,0,0,2,0,0);
insert into TranDau values ('2','2019-11-25','MAS','MYA',1,1,1,1,0,0),	
('3','2019-11-25','PHI','CAM',1,1,0,1,0,0),	
('4','2019-11-26','THA','INA',0,2,2,0,0,0),	
('5','2019-11-26','LAO','SIN',0,0,1,0,1,0),	
('6','2019-11-27','PHI','MYA',1,2,1,2,0,0),	
('7','2019-11-27','CAM','TLS',5,0,0,0,0,0),	
('8','2019-11-28','VIE','LAO',6,1,0,0,0,0),	
('9','2019-11-28','THA','BRU',7,0,0,2,0,0),	
('10','2019-11-28','INA','SIN',2,0,0,1,0,0),	
('11','2019-11-29','TLS','MYA',1,3,1,1,0,0),	
('12','2019-11-29','PHI','MAS',1,0,3,0,0,0),	
('13','2019-12-01','THA','SIN',3,0,1,2,0,0),	
('14','2019-12-01','LAO','BRU',3,0,0,0,0,0),	
('15','2019-12-01','VIE','INA',2,1,1,0,0,0),	
('16','2019-12-02','MYA','CAM',2,1,1,4,0,0),	
('17','2019-12-02','MAS','TLS',4,0,2,2,0,0),	
('18','2019-12-03','THA','LAO',2,0,0,0,0,0),	
('19','2019-12-03','SIN','VIE',0,1,2,0,0,0),	
('20','2019-12-03','INA','BRU',8,0,0,1,0,0),	
('21','2019-12-04','CAM','MAS',3,1,1,3,0,1),	
('22','2019-12-04','PHI','TLS',6,1,0,0,0,0),	
('23','2019-12-05','VIE','THA',2,2,0,0,0,0),	
('24','2019-12-05','INA','LAO',4,0,2,2,0,0),	
('25','2019-12-05','BRU','SIN',0,7,1,1,0,0),	
('26','2019-12-07','MYA','INA',2,2,2,0,0,0),	
('27','2019-12-07','VIE','CAM',4,0,1,0,0,0),	
('28','2019-12-10','MYA','CAM',2,2,0,0,0,0),	
('29','2019-12-10','INA','VIE',0,3,1,1,0,0);	


insert into KetQuaChiTiet values('1','VIE9',1,1,0,0,10);			
insert into KetQuaChiTiet values('2','VIE9',1,1,0,0,23);			
insert into KetQuaChiTiet values('3','VIE9',1,1,0,0,48);			
insert into KetQuaChiTiet values('4','VIE9',1,1,0,0,66);			
insert into KetQuaChiTiet values('5','VIE7',1,1,0,0,59);			
insert into KetQuaChiTiet values('6','VIE20',1,1,0,0,83);			
insert into KetQuaChiTiet values('7','BRU17',1,0,1,0,61);			
insert into KetQuaChiTiet values('8','BRU4',1,0,1,0,68);			
insert into KetQuaChiTiet values('9','MYA12',2,1,0,0,13);			
insert into KetQuaChiTiet values('10','MAS16',2,1,0,0,24);			
insert into KetQuaChiTiet values('11','MAS14',2,0,1,0,50);			
insert into KetQuaChiTiet values('12','MYA13',2,0,1,0,30);			
insert into KetQuaChiTiet values('13','PHI3',3,0,1,0,43);			
insert into KetQuaChiTiet values('14','PHI9',3,1,0,0,90);			
insert into KetQuaChiTiet values('15','CAM23',3,1,0,0,41);			
insert into KetQuaChiTiet values('16','CAM17',3,0,1,0,52);			
insert into KetQuaChiTiet values('17','INA10',4,1,0,0,4);			
insert into KetQuaChiTiet values('18','INA20',4,1,0,0,57);			
insert into KetQuaChiTiet values('19','THA14',4,0,1,0,53);			
insert into KetQuaChiTiet values('20','THA15',4,0,1,0,12);			
insert into KetQuaChiTiet values('21','LAO4',5,0,1,0,67);			
insert into KetQuaChiTiet values('22','LAO4',5,0,0,1,78);			
insert into KetQuaChiTiet values('23','MYA13',6,1,0,0,17);			
insert into KetQuaChiTiet values('24','MYA20',6,1,0,0,79);			
insert into KetQuaChiTiet values('25','PHI8',6,1,0,0,45);			
insert into KetQuaChiTiet values('26','CAM13',7,1,0,0,8);			
insert into KetQuaChiTiet values('27','CAM14',7,1,0,0,70);			
insert into KetQuaChiTiet values('28','CAM14',7,1,0,0,90);			
insert into KetQuaChiTiet values('29','CAM23',7,1,0,0,78);			
insert into KetQuaChiTiet values('30','CAM11',7,1,0,0,82);			
insert into KetQuaChiTiet values('31','VIE22',8,1,0,0,3);			
insert into KetQuaChiTiet values('32','VIE22',8,1,0,0,17);			
insert into KetQuaChiTiet values('33','VIE22',8,1,0,0,57);			
insert into KetQuaChiTiet values('34','VIE16',8,1,0,0,54);
insert into KetQuaChiTiet values('161','LAO2',8,1,0,0,63);
insert into KetQuaChiTiet values('35','VIE8',8,1,0,0,83);			
insert into KetQuaChiTiet values('36','VIE19',8,1,0,0,90);			
insert into KetQuaChiTiet values('37','THA9',9,1,0,0,43);			
insert into KetQuaChiTiet values('38','THA18',9,1,0,0,44);			
insert into KetQuaChiTiet values('39','THA11',9,1,0,0,53);			
insert into KetQuaChiTiet values('40','THA14',9,1,0,0,87);			
insert into KetQuaChiTiet values('41','THA15',9,1,0,0,72);			
insert into KetQuaChiTiet values('42','THA7',9,1,0,0,74);			
insert into KetQuaChiTiet values('43','THA11',9,1,0,0,89);			
insert into KetQuaChiTiet values('44','BRU4',9,0,1,0,8);			
insert into KetQuaChiTiet values('45','BRU5',9,0,1,0,75);			
insert into KetQuaChiTiet values('46','INA20',10,1,0,0,64);			
insert into KetQuaChiTiet values('47','INA14',10,1,0,0,74);			
insert into KetQuaChiTiet values('48','SIN12',10,0,1,0,50);			
insert into KetQuaChiTiet values('49','MYA12',11,1,0,0,10);			
insert into KetQuaChiTiet values('50','MYA13',11,1,0,0,36);			
insert into KetQuaChiTiet values('51','MYA20',11,1,0,0,54);			
insert into KetQuaChiTiet values('52','TLS7',11,1,0,0,40);			
insert into KetQuaChiTiet values('53','TLS3',11,0,1,0,76);			
insert into KetQuaChiTiet values('54','MYA12',11,0,1,0,30);			
insert into KetQuaChiTiet values('55','PHI6',12,1,0,0,74);			
insert into KetQuaChiTiet values('56','PHI7',12,0,1,0,34);			
insert into KetQuaChiTiet values('57','PHI8',12,0,1,0,56);			
insert into KetQuaChiTiet values('58','PHI14',12,0,1,0,72);			
insert into KetQuaChiTiet values('59','THA7',13,1,0,0,8);			
insert into KetQuaChiTiet values('60','THA11',13,1,0,0,19);			
insert into KetQuaChiTiet values('61','THA18',13,1,0,0,36);			
insert into KetQuaChiTiet values('62','THA10',13,0,1,0,23);			
insert into KetQuaChiTiet values('63','SIN13',13,0,1,0,45);			
insert into KetQuaChiTiet values('64','SIN14',13,0,1,0,76);			
insert into KetQuaChiTiet values('65','LAO8',14,1,0,0,18);			
insert into KetQuaChiTiet values('66','LAO9',14,1,0,0,52);			
insert into KetQuaChiTiet values('67','LAO9',14,1,0,0,67);			
insert into KetQuaChiTiet values('68','VIE18',15,1,0,0,64);			
insert into KetQuaChiTiet values('69','VIE14',15,1,0,0,90);			
insert into KetQuaChiTiet values('70','INA20',15,1,0,0,23);			
insert into KetQuaChiTiet values('71','VIE18',15,0,1,0,56);			
insert into KetQuaChiTiet values('72','MYA6',16,1,0,0,27);			
insert into KetQuaChiTiet values('73','MYA7',16,1,0,0,86);			
insert into KetQuaChiTiet values('74','CAM11',16,1,0,0,21);			
insert into KetQuaChiTiet values('75','CAM14',16,0,1,0,36);			
insert into KetQuaChiTiet values('76','CAM23',16,0,1,0,76);			
insert into KetQuaChiTiet values('77','CAM17',16,0,1,0,89);			
insert into KetQuaChiTiet values('78','CAM5',16,0,1,0,56);			
insert into KetQuaChiTiet values('79','MYA6',16,0,1,0,31);			
insert into KetQuaChiTiet values('80','TLS22',17,0,1,0,34);			
insert into KetQuaChiTiet values('81','TLS2',17,0,1,0,67);			
insert into KetQuaChiTiet values('82','MAS2',17,0,1,0,45);			
insert into KetQuaChiTiet values('83','MAS3',17,0,1,0,89);			
insert into KetQuaChiTiet values('84','MAS20',17,1,0,0,6);			
insert into KetQuaChiTiet values('85','MAS14',17,1,0,0,34);			
insert into KetQuaChiTiet values('86','MAS16',17,1,0,0,43);			
insert into KetQuaChiTiet values('87','MAS14',17,1,0,0,81);			
insert into KetQuaChiTiet values('88','THA17',18,1,0,0,88);			
insert into KetQuaChiTiet values('89','THA17',18,1,0,0,90);			
insert into KetQuaChiTiet values('90','VIE9',19,1,0,0,85);			
insert into KetQuaChiTiet values('91','SIN14',19,0,1,0,90);			
insert into KetQuaChiTiet values('92','SIN12',19,0,1,0,27);			
insert into KetQuaChiTiet values('93','INA20',20,1,0,0,11);			
insert into KetQuaChiTiet values('94','INA20',20,1,0,0,45);			
insert into KetQuaChiTiet values('95','INA20',20,1,0,0,72);			
insert into KetQuaChiTiet values('96','INA10',20,1,0,0,40);			
insert into KetQuaChiTiet values('97','INA10',20,1,0,0,80);			
insert into KetQuaChiTiet values('98','INA22',20,1,0,0,50);			
insert into KetQuaChiTiet values('99','INA22',20,1,0,0,68);			
insert into KetQuaChiTiet values('100','INA2',20,1,0,0,77);			
insert into KetQuaChiTiet values('101','BRU8',20,0,1,0,67);			
insert into KetQuaChiTiet values('102','CAM23',21,1,0,0,56);			
insert into KetQuaChiTiet values('103','CAM17',21,1,0,0,57);			
insert into KetQuaChiTiet values('104','CAM5',21,1,0,0,68);			
insert into KetQuaChiTiet values('105','MAS3',21,1,0,0,88);			
insert into KetQuaChiTiet values('106','CAM3',21,0,1,0,56);			
insert into KetQuaChiTiet values('107','MAS3',21,0,1,0,26);			
insert into KetQuaChiTiet values('108','MAS20',21,0,1,0,37);			
insert into KetQuaChiTiet values('109','MAS17',21,0,0,1,90);			
insert into KetQuaChiTiet values('110','MAS14',21,0,1,0,78);			
insert into KetQuaChiTiet values('111','PHI9',22,1,0,0,4);			
insert into KetQuaChiTiet values('112','PHI6',22,1,0,0,42);			
insert into KetQuaChiTiet values('113','PHI7',22,1,0,0,85);			
insert into KetQuaChiTiet values('114','PHI8',22,1,0,0,89);			
insert into KetQuaChiTiet values('115','PHI6',22,1,0,0,54);			
insert into KetQuaChiTiet values('116','PHI6',22,1,0,0,75);			
insert into KetQuaChiTiet values('117','TLS7',22,1,0,0,90);			
insert into KetQuaChiTiet values('118','VIE22',23,1,0,0,15);			
insert into KetQuaChiTiet values('119','VIE22',23,1,0,0,72);			
insert into KetQuaChiTiet values('120','THA9',23,1,0,0,5);			
insert into KetQuaChiTiet values('121','THA17',23,1,0,0,10);			
insert into KetQuaChiTiet values('122','INA22',24,1,0,0,5);			
insert into KetQuaChiTiet values('123','INA20',24,1,0,0,47);			
insert into KetQuaChiTiet values('124','INA20',24,1,0,0,90);			
insert into KetQuaChiTiet values('125','INA3',24,1,0,0,57);			
insert into KetQuaChiTiet values('126','INA14',24,0,1,0,12);			
insert into KetQuaChiTiet values('127','INA7',24,0,1,0,44);			
insert into KetQuaChiTiet values('128','LAO7',24,0,1,0,57);			
insert into KetQuaChiTiet values('129','LAO8',24,0,1,0,86);			
insert into KetQuaChiTiet values('130','SIN13',25,0,1,0,14);			
insert into KetQuaChiTiet values('131','SIN14',25,1,0,0,4);			
insert into KetQuaChiTiet values('132','SIN12',25,1,0,0,72);			
insert into KetQuaChiTiet values('133','SIN6',25,1,0,0,68);			
insert into KetQuaChiTiet values('134','SIN3',25,1,0,0,84);			
insert into KetQuaChiTiet values('135','SIN6',25,1,0,0,88);			
insert into KetQuaChiTiet values('136','SIN6',25,1,0,0,89);			
insert into KetQuaChiTiet values('137','SIN3',25,1,0,0,87);			
insert into KetQuaChiTiet values('138','BRU5',25,0,1,0,67);			
insert into KetQuaChiTiet values('139','INA6',26,1,0,0,57);			
insert into KetQuaChiTiet values('140','INA6',26,1,0,0,113);			
insert into KetQuaChiTiet values('141','INA10',26,1,0,0,72);			
insert into KetQuaChiTiet values('142','INA20',26,1,0,0,102);			
insert into KetQuaChiTiet values('143','MYA6',26,1,0,0,79);			
insert into KetQuaChiTiet values('144','MYA7',26,1,0,0,80);			
insert into KetQuaChiTiet values('145','MYA4',26,0,1,0,67);			
insert into KetQuaChiTiet values('146','MYA5',26,0,1,0,79);			
insert into KetQuaChiTiet values('147','VIE9',27,1,0,0,20);			
insert into KetQuaChiTiet values('148','VIE9',27,1,0,0,25);			
insert into KetQuaChiTiet values('149','VIE9',27,1,0,0,45);			
insert into KetQuaChiTiet values('150','VIE9',27,1,0,0,69);			
insert into KetQuaChiTiet values('151','VIE9',27,0,1,0,87);			
insert into KetQuaChiTiet values('152','MYA5',28,1,0,0,9);			
insert into KetQuaChiTiet values('153','MYA6',28,1,0,0,35);			
insert into KetQuaChiTiet values('154','CAM13',28,1,0,0,1);			
insert into KetQuaChiTiet values('155','CAM11',28,1,0,0,71);			
insert into KetQuaChiTiet values('156','VIE5',29,1,0,0,39);			
insert into KetQuaChiTiet values('157','VIE5',29,1,0,0,73);			
insert into KetQuaChiTiet values('158','VIE16',29,1,0,0,59);			
insert into KetQuaChiTiet values('159','INA2',29,0,1,0,90);			
insert into KetQuaChiTiet values('160','VIE5',29,0,1,0,26);		