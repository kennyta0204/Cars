DROP TABLE IF EXISTS car_models;
CREATE TABLE IF NOT EXISTS car_models (
    id SERIAL PRIMARY KEY, 
    name_id INTEGER NOT NULL,
    edition VARCHAR(30) NOT NULL, 
    min_year INTEGER NOT NULL,
    max_year INTEGER,
    hp INTEGER,
    torque INTEGER,
    body VARCHAR(20),
    door INTEGER,
    cylinder INTEGER,
    displacement FLOAT4,
    aspiration VARCHAR(15),
    transmission VARCHAR(5),
    drive VARCHAR(5)
    );
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('1','base',1994,2000,140,124,'coupe',2,4,1.8,'na','both','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('1','gsr',1994,2000,170,128,'coupe',2,4,1.8,'na','man','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('1','type r',1999,2000,195,130,'coupe',2,4,1.8,'na','man','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('2','base',2002,2006,160,141,'coupe',2,4,2.0,'na','both','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('2','type s',2002,2004,200,141,'coupe',2,4,2.0,'na','man','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('2','type s',2005,2006,210,143,'coupe',2,4,2.0,'na','man','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('3','base',2004,2008,200,164,'sedan',4,4,2.4,'na','both','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('4','base',2004,2008,270,233,'sedan',4,4,3.2,'na','both','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('4','type s',2007,2008,286,256,'sedan',4,4,3.5,'na','both','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('5','base',1992,1996,270,210,'coupe',2,6,3.0,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('5','base',1997,2005,290,224,'coupe',2,6,3.2,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('6','base',2014,2018,237,258,'coupe',2,4,1.7,'turbo','auto','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('6','spyder',2014,2020,237,258,'convertible',2,4,1.7,'turbo','auto','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('9','b7',2004,2008,200,207,'sedan',4,4,2.0,'turbo','both','awd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('11','b7',2005,2008,339,302,'sedan',4,8,4.2,'na','both','awd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('13','b7',2006,2008,414,317,'sedan',4,8,4.2,'na','man','awd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('18','325i e30',1985,1991,168,164,'coupe',4,6,2.5,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('18','m3 e30',1986,1990,195,170,'coupe',4,4,2.3,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('18','m3 e36',1995,1999,240,224,'coupe',2,6,3.2,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('18','m3 e46',2000,2006,333,262,'coupe',2,6,3.2,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('18','m3 e90',2008,2013,414,300,'sedan',4,8,4.0,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('18','m3 e92',2008,2013,414,300,'coupe',2,8,4.0,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('22','m roadster',1997,2000,240,225,'convertible',2,6,3.2,'na','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('22','m coupe',1997,2000,240,225,'coupe',2,6,3.2,'na','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('23','m roadster',2006,2008,338,269,'convertible',2,6,3.2,'na','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('23','m coupe',2006,2008,338,269,'coupe',2,6,3.2,'na','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('23','3.0si coupe',2006,2008,261,232,'coupe',2,6,3.0,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('24','c6 zo6',2005,2013,430,424,'coupe',2,8,6.2,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('29','s197 gt',2005,2009,300,320,'coupe',2,8,4.6,'na','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('29','s550 gt',2014,9999,460,420,'coupe',2,8,5.0,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('29','s550 ecoboost',2014,9999,310,350,'coupe',2,4,2.3,'turbo','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('30','rs',2016,2018,350,350,'hatch',4,4,2.3,'turbo','man','awd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('31','eg si',1992,1993,125,98,'hatch',2,4,1.6,'na','man','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('31','ek si',1995,2000,160,104,'hatch',2,4,1.6,'na','man','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('31','fc si',2016,2022,205,192,'coupe',2,4,1.5,'turbo','man','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('31','fk type r',2016,2022,306,295,'hatch',4,4,2.0,'turbo','man','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('33','ap1',2000,2003,237,153,'convertible',2,4,2.0,'na','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('33','ap2',2004,2008,237,162,'convertible',2,4,2.2,'na','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('34','2.0 coupe',2013,2015,271,275,'coupe',2,4,2.0,'turbo','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('34','3.8 coupe',2013,2015,348,295,'coupe',2,6,3.8,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('36','coupe',2002,2007,298,260,'coupe',2,6,3.5,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('36','sedan',2002,2006,298,260,'sedan',4,6,3.5,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('37','coupe',2007,2015,328,270,'coupe',2,6,3.7,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('37','sedan',2006,2015,328,270,'sedan',4,6,3.7,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('40','2.0 T',2018,9999,252,260,'sedan',4,4,2.0,'turbo','auto','awd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('40','3.3 T',2018,9999,368,376,'sedan',4,6,3.3,'turbo','auto','awd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('41','is300',1999,2005,217,218,'sedan',4,6,3.0,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('41','is300 hatch',1999,2005,217,218,'hatch',4,6,3.0,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('41','is f',2007,2014,416,371,'sedan',4,8,5.0,'na','auto','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('44','base',2005,2008,190,133,'convertible',2,4,1.8,'na','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('45','s 240',2005,2008,240,170,'coupe',2,4,1.8,'na','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('46','na6',1990,1993,113,99,'convertible',2,4,1.6,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('46','na8',1994,1997,129,112,'convertible',2,4,1.8,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('46','nb',1999,2005,138,119,'convertible',2,4,1.8,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('46','nb mazdaspeed',2004,2005,178,166,'convertible',2,4,1.8,'turbo','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('46','nc',2006,2013,158,138,'convertible',2,4,2.0,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('46','nd 1.5',2015,2019,129,111,'convertible',2,4,1.5,'na','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('46','nd 2.0',2019,9999,181,151,'convertible',2,4,2.0,'na','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('47','fb',1978,1980,138,133,'coupe',2,0,1.3,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('47','fc',1985,1992,146,134,'coupe',2,0,1.3,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('47','fc turbo ii',1987,1990,182,183,'coupe',2,0,1.3,'turbo','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('47','fd',1993,1995,255,217,'coupe',2,0,1.3,'turbo','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('48','base',2003,2011,232,159,'sedan',4,0,1.3,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('49','mazdaspeed 3',2010,2013,263,280,'hatch',4,4,2.3,'turbo','man','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('50','c250 w204',2007,2013,201,229,'sedan',4,4,1.8,'turbo','auto','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('50','c63 w204',2007,2013,451,443,'sedan',4,8,6.2,'supercharged','auto','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('52','slk230',1996,2004,194,207,'convertible',2,4,2.0,'supercharged','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('54','evolution 8',2003,2005,261,261,'sedan',4,4,2.0,'turbo','man','awd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('54','evolution 10',2009,2015,291,300,'sedan',4,4,2.0,'turbo','man','awd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('55','vr4',1994,1997,320,307,'coupe',2,6,3.0,'turbo','man','4wd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('57','s13',1989,1994,140,152,'coupe',2,4,2.4,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('57','s14',1994,1998,155,160,'coupe',2,4,2.4,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('58','z32 twin turbo',1990,1996,300,283,'coupe',2,7,3.0,'turbo','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('61','base',1969,1973,151,146,'coupe',2,6,2.4,'na','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('59','base',2003,2008,287,274,'coupe',2,6,3.5,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('59','nizmo',2007,2008,306,268,'coupe',2,6,3.5,'na','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('60','base',2009,2013,332,270,'coupe',2,6,3.7,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('60','nismo',2009,2013,350,276,'coupe',2,6,3.7,'na','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('62','r35 base',2008,2021,485,434,'coupe',2,6,3.8,'turbo','auto','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('66','base',2013,2016,200,151,'coupe',2,4,2.0,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('70','1st gen',2013,2019,200,151,'coupe',2,4,2.0,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('70','2nd gen',2021,9999,232,184,'coupe',2,4,2.4,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('69','2.5rs (gm6)',1999,2001,165,166,'coupe',2,4,2.5,'na','both','awd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('69','wrx (blobeye)',2003,2005,221,221,'sedan',4,4,2.0,'turbo','man','awd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('69','wrx sti (blobeye)',2003,2005,265,253,'sedan',4,4,2.5,'turbo','man','awd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('69','wrx va',2014,2021,268,258,'sedan',4,4,2.0,'turbo','both','awd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('69','wrx sti va',2014,2021,305,290,'sedan',4,4,2.5,'turbo','both','awd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('73','gt86',2017,2019,200,151,'coupe',2,4,2.0,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('73','gr86',2021,9999,232,184,'coupe',2,4,2.4,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('75','a80 base (4th gen)',1993,1998,220,209,'coupe',2,6,3.0,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('75','a80 turbo (4th gen)',1993,1998,320,315,'coupe',2,6,3.0,'turbo','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('75','2.0 (5th gen)',2020,9999,255,295,'coupe',2,6,2.0,'turbo','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('75','3.0 (5th gen)',2019,9999,382,369,'coupe',2,6,3.0,'turbo','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('77','aw11',1984,1989,112,105,'coupe',2,4,1.6,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('77','aw11 supercharged',1988,1989,145,137,'coupe',2,4,1.6,'supercharged','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('77','sw20',1990,1994,130,108,'coupe',2,4,2.2,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('77','sw20 turbo',1990,1994,200,200,'coupe',2,4,2.0,'turbo','man','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('77','spyder',2000,2005,138,126,'convertible',2,4,1.8,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('76','gts',1999,2006,140,125,'coupe',2,4,1.8,'na','both','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('74','sr5',1984,1987,87,85,'hatch',2,4,1.6,'na','both','rwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('72','base',2017,9999,271,310,'sedan',4,0,0.0,'electric','auto','awd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('72','performance',2017,9999,455,487,'sedan',4,0,0.0,'electric','auto','awd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('78','r32 mk4',2004,2004,238,236,'hatch',2,6,3.2,'na','man','4wd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('78','gti mk5',2006,2007,197,206,'hatch',4,4,2.0,'turbo','man','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('78','gti mk6',2008,2011,207,207,'hatch',2,4,2.0,'turbo','both','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('78','r mk6',2009,2011,256,243,'hatch',2,4,2.0,'turbo','man','4wd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('78','gti mk7',2015,2021,227,258,'hatch',2,4,2.0,'turbo','both','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('78','r mk7',2015,2021,296,280,'hatch',4,4,2.0,'turbo','both','4wd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('78','gti mk8',2022,9999,241,273,'hatch',4,4,2.0,'turbo','both','fwd');
INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
        VALUES ('78','r mk8',2022,9999,315,310,'hatch',4,4,2.0,'turbo','both','awd');