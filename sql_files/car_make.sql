DROP TABLE IF EXISTS car_make;

CREATE TABLE IF NOT EXISTS car_make (
	id SMALLSERIAL PRIMARY KEY,
	make VARCHAR(50) NOT NULL,
	country VARCHAR(50) NOT NULL);

INSERT INTO car_make (
	make, country)
	VALUES ('ACURA', 'JP');

INSERT INTO car_make (
	make, country)
	VALUES ('ALFA ROMEO', 'EU');

INSERT INTO car_make (
	make, country)
	VALUES ('ASTON MARTIN', 'EU');

INSERT INTO car_make (
	make, country)
	VALUES ('AUDI', 'EU');
 
INSERT INTO car_make (
	make, country)
	VALUES ('BMW', 'EU');

INSERT INTO car_make (
	make, country)
	VALUES ('CHEVROLET', 'US');

INSERT INTO car_make (
	make, country)
	VALUES ('DODGE', 'US');

INSERT INTO car_make (
	make, country)
	VALUES ('FIAT', 'EU');

INSERT INTO car_make (
	make, country)
	VALUES ('FORD', 'US');

INSERT INTO car_make (
	make, country)
	VALUES ('HONDA', 'JP');

INSERT INTO car_make (
	make, country)
	VALUES ('HYUNDAI', 'KR');

INSERT INTO car_make (
	make, country)
	VALUES ('INFINITI', 'JP');

INSERT INTO car_make (
	make, country)
	VALUES ('JAGUAR', 'EU');

INSERT INTO car_make (
	make, country)
	VALUES ('KIA', 'KR');

INSERT INTO car_make (
	make, country)
	VALUES ('LEXUS', 'JP');

INSERT INTO car_make (
	make, country)
	VALUES ('LOTUS', 'EU');

INSERT INTO car_make (
	make, country)
	VALUES ('MAZDA', 'JP');

INSERT INTO car_make (
	make, country)
	VALUES ('MERCEDES', 'EU');

INSERT INTO car_make (
	make, country)
	VALUES ('MINI', 'EU');

INSERT INTO car_make (
	make, country)
	VALUES ('MITSUBISHI', 'JP');

INSERT INTO car_make (
	make, country)
	VALUES ('NISSAN', 'JP');

INSERT INTO car_make (
	make, country)
	VALUES ('PORSCHE', 'EU');

INSERT INTO car_make (
	make, country)
	VALUES ('SCION', 'JP');

INSERT INTO car_make (
	make, country)
	VALUES ('SUBARU', 'JP');

INSERT INTO car_make (
	make, country)
	VALUES ('TESLA', 'US');

INSERT INTO car_make (
	make, country)
	VALUES ('TOYOTA', 'JP');

INSERT INTO car_make (
	make, country)
	VALUES ('VOLKSWAGEN', 'EU');

INSERT INTO car_make (
	make, country)
	VALUES ('VOLVO', 'EU');






