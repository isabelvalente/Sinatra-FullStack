DROP TABLE IF EXISTS countries;

CREATE TABLE countries (

  id SERIAL PRIMARY KEY,
	country VARCHAR(50),
	city VARCHAR(50),
	time_zone VARCHAR(50)

);


INSERT INTO countries (country, city, time_zone) VALUES ('Yemen', 'Şuwayr', 'Asia/Aden');
INSERT INTO countries (country, city, time_zone) VALUES ('Czech Republic', 'Veverská Bítýška', 'Europe/Prague');
INSERT INTO countries (country, city, time_zone) VALUES ('Ukraine', 'Berezovo', 'Europe/Uzhgorod');
INSERT INTO countries (country, city, time_zone) VALUES ('South Africa', 'Vredefort', 'Africa/Johannesburg');
INSERT INTO countries (country, city, time_zone) VALUES ('China', 'Hadabei', 'Asia/Harbin');
INSERT INTO countries (country, city, time_zone) VALUES ('Brazil', 'São Jerônimo', 'America/Sao_Paulo');
INSERT INTO countries (country, city, time_zone) VALUES ('Czech Republic', 'Libouchec', 'Europe/Prague');
INSERT INTO countries (country, city, time_zone) VALUES ('Indonesia', 'Wiyayu Barat', 'Asia/Jakarta');
INSERT INTO countries (country, city, time_zone) VALUES ('Colombia', 'Giraldo', 'America/Bogota');
INSERT INTO countries (country, city, time_zone) VALUES ('Gambia', 'Sara Kunda', 'Africa/Banjul');
INSERT INTO countries (country, city, time_zone) VALUES ('China', 'Damiku', 'Asia/Kashgar');
INSERT INTO countries (country, city, time_zone) VALUES ('Indonesia', 'Klukeng', 'Asia/Makassar');
INSERT INTO countries (country, city, time_zone) VALUES ('Bangladesh', 'Dinājpur', 'Asia/Dhaka');
INSERT INTO countries (country, city, time_zone) VALUES ('Indonesia', 'Makale', 'Asia/Makassar');
INSERT INTO countries (country, city, time_zone) VALUES ('Sweden', 'Örebro', 'Europe/Stockholm');
INSERT INTO countries (country, city, time_zone) VALUES ('Belarus', 'Svislach', 'Europe/Minsk');
INSERT INTO countries (country, city, time_zone) VALUES ('Japan', 'Innoshima', 'Asia/Tokyo');
INSERT INTO countries (country, city, time_zone) VALUES ('Portugal', 'Balazar', 'Europe/Lisbon');
INSERT INTO countries (country, city, time_zone) VALUES ('China', 'Waina', 'Asia/Chongqing');
INSERT INTO countries (country, city, time_zone) VALUES ('Nigeria', 'Oyan', 'Africa/Lagos')



DROP TABLE IF EXISTS movies;

create table movies (

  id SERIAL PRIMARY KEY,
	Genre VARCHAR(50),
	Title VARCHAR(50)
);
INSERT INTO movies (Genre, Title) VALUES ('Comedy|Crime', '11 Harrowhouse');
INSERT INTO movies (Genre, Title) VALUES ('Comedy', 'Cockpit');
INSERT INTO movies (Genre, Title) VALUES ('Crime|Drama|Thriller', 'Veronica Guerin');
INSERT INTO movies (Genre, Title) VALUES ('Comedy', 'Revenge of the Nerds III: The Next Generation');
INSERT INTO movies (Genre, Title) VALUES ('Thriller', 'Laughing Woman, The (Frightened Woman, The) (Femina ridens)');
INSERT INTO movies (Genre, Title) VALUES ('Action|Comedy|Sci-Fi', 'Iceman');
INSERT INTO movies (Genre, Title) VALUES ('Comedy|Crime|Thriller', 'Perfect Crime, The (Crimen Ferpecto) (Ferpect Crime)');
INSERT INTO movies (Genre, Title) VALUES ('Comedy', 'Freshman, The');
INSERT INTO movies (Genre, Title) VALUES ('Drama|Romance|Thriller', 'Broken Embraces (Los abrazos rotos)');
INSERT INTO movies (Genre, Title) VALUES ('Horror', 'Silent Night');
INSERT INTO movies (Genre, Title) VALUES ('Comedy|Romance', 'Lucky Break (a.k.a. Paperback Romance)');
INSERT INTO movies (Genre, Title) VALUES ('Crime|Drama', 'They Gave Him A Gun');
INSERT INTO movies (Genre, Title) VALUES ('Action|Crime|Thriller', 'Angel of Death');
INSERT INTO movies (Genre, Title) VALUES ('Comedy|Drama|Romance', 'Lot Like Love, A');
INSERT INTO movies (Genre, Title) VALUES ('Action|Adventure|Horror|Mystery|Sci-Fi|Thriller', 'Cave, The');
INSERT INTO movies (Genre, Title) VALUES ('Fantasy|Mystery|Sci-Fi', 'I Inside, The');
INSERT INTO movies (Genre, Title) VALUES ('Comedy|Drama|Musical|Romance', 'The Last Five Years');
INSERT INTO movies (Genre, Title) VALUES ('Drama|Thriller', 'Wrong Is Right (a.k.a. The Man With the Deadly Lens)');
INSERT INTO movies (Genre, Title) VALUES ('Children|Musical', 'Teen Beach Movie');
INSERT INTO movies (Genre, Title) VALUES ('Drama', 'Sayonara');
