DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  first_name varchar(255) default NULL,
  last_name varchar(255) default NULL,
  email varchar(255) default NULL,
  phone varchar(100) default NULL
);

INSERT INTO users (first_name,last_name,email,phone)
VALUES
  ('Lysandra','Waller','mauris.blandit.enim@aol.net','1-535-242-7412'),
  ('Lara','Grimes','enim.etiam@hotmail.net','1-583-546-1275'),
  ('Castor','Mack','at.libero@hotmail.couk','1-424-354-7227'),
  ('Vernon','Davidson','sem.ut.cursus@protonmail.org','1-462-293-1747'),
  ('Mikayla','Figueroa','torquent.per@outlook.org','(612) 216-8152'),
  ('Maggy','Gilbert','a.odio.semper@aol.org','(411) 232-0274'),
  ('Otto','Ayers','arcu.sed@outlook.edu','(793) 265-3313'),
  ('Sebastian','Simmons','augue.eu@hotmail.com','(423) 432-7655'),
  ('Regan','Golden','eget@aol.com','1-527-787-8563'),
  ('Lucas','Stokes','consectetuer.mauris@yahoo.com','1-786-618-4372');
INSERT INTO users (first_name,last_name,email,phone)
VALUES
  ('Julie','Landry','dapibus.ligula@yahoo.com','1-274-803-9195'),
  ('India','Mays','sollicitudin@google.ca','1-350-160-0862'),
  ('Thor','Wood','vitae.sodales.nisi@google.ca','1-341-788-2598'),
  ('Lila','Hardin','ipsum.sodales@outlook.net','(751) 937-9368'),
  ('MacKensie','Pope','ut.dolor.dapibus@protonmail.org','1-466-858-1693'),
  ('Myra','Horn','ante@outlook.org','(548) 361-1310'),
  ('Travis','Dale','dignissim.magna@yahoo.ca','(350) 479-2497'),
  ('Azalia','Osborne','auctor.non@outlook.couk','(168) 298-6879'),
  ('Dawn','Maynard','pharetra.felis.eget@icloud.couk','(763) 650-0613'),
  ('Shannon','Ramsey','id.blandit@protonmail.ca','1-918-515-4861');
INSERT INTO users (first_name,last_name,email,phone)
VALUES
  ('Isabelle','Beck','libero.donec.consectetuer@outlook.ca','(758) 196-6895'),
  ('Marah','Floyd','nisl@protonmail.edu','(319) 631-5777'),
  ('Lunea','Wiggins','sodales@protonmail.couk','(609) 682-3235'),
  ('Cassidy','Santiago','in@outlook.net','1-712-189-6821'),
  ('Paki','Britt','tempor.est@aol.couk','1-843-510-9534'),
  ('Orlando','Dennis','donec.non.justo@aol.net','1-671-314-4845'),
  ('Preston','Rowe','convallis@hotmail.couk','(564) 555-3144'),
  ('Jaquelyn','Fuentes','sapien.cursus@aol.org','(334) 818-8611'),
  ('Roth','Herring','quisque.nonummy.ipsum@outlook.ca','1-358-820-7418'),
  ('Vielka','Peterson','in.hendrerit.consectetuer@outlook.com','1-117-620-2429');
INSERT INTO users (first_name,last_name,email,phone)
VALUES
  ('Lester','Gentry','sed.congue@google.couk','1-567-358-4613'),
  ('Judith','Coffey','scelerisque.neque.sed@yahoo.couk','(601) 686-6186'),
  ('Nathaniel','Baird','odio.phasellus@protonmail.org','(628) 471-5740'),
  ('Geraldine','Eaton','ipsum.dolor.sit@outlook.net','(530) 454-8983'),
  ('Keaton','Williamson','natoque@yahoo.edu','(230) 573-7141'),
  ('Naomi','Wheeler','lobortis@google.net','(728) 465-3422'),
  ('Giselle','Flynn','augue.malesuada@aol.org','1-927-544-8857'),
  ('Cathleen','Reid','vel.quam@protonmail.org','(587) 870-7432'),
  ('Ainsley','Rogers','mattis@google.com','1-784-740-5402'),
  ('Allen','Gregory','amet.dapibus@aol.edu','1-288-319-7061');
INSERT INTO users (first_name,last_name,email,phone)
VALUES
  ('Henry','Mcclure','urna@yahoo.ca','(707) 345-2122'),
  ('Caldwell','Ortega','commodo.ipsum.suspendisse@outlook.edu','1-858-532-1854'),
  ('Garth','Poole','elit.sed.consequat@yahoo.couk','1-814-294-9426'),
  ('Regan','Miranda','ligula.eu.enim@icloud.org','(456) 559-1517'),
  ('Ayanna','Lambert','curabitur.dictum.phasellus@hotmail.org','1-255-410-8124'),
  ('Ulla','Cantrell','id@google.edu','1-162-865-4419'),
  ('Cade','Mason','varius.et@aol.org','(901) 251-7569'),
  ('Amity','Gross','nunc@aol.ca','(851) 689-5490'),
  ('Bernard','Dawson','eros.turpis@google.edu','(641) 977-3345'),
  ('Xanthus','Wynn','erat.volutpat@icloud.org','(798) 871-9956');
INSERT INTO users (first_name,last_name,email,phone)
VALUES
  ('Sonya','Hampton','rutrum.lorem.ac@google.edu','(737) 572-2822'),
  ('Davis','Holland','magna.nam@aol.ca','(617) 347-5747'),
  ('Raymond','Vasquez','nulla.vulputate@hotmail.ca','1-236-954-2661'),
  ('Kermit','Velez','eros@google.edu','1-472-529-1526'),
  ('Raymond','Ewing','cursus.in@protonmail.ca','1-665-743-1191'),
  ('Sylvester','Mcpherson','nulla.vulputate@google.edu','(486) 881-2237'),
  ('Emi','Walter','odio.sagittis@icloud.net','(216) 435-7244'),
  ('Ariana','Franco','sed@outlook.net','(878) 136-8398'),
  ('Jerry','Owens','sociis.natoque@icloud.couk','1-274-380-7660'),
  ('Inga','Prince','sed.auctor@protonmail.ca','1-429-165-4881');
INSERT INTO users (first_name,last_name,email,phone)
VALUES
  ('Gloria','Clayton','neque.sed.dictum@aol.ca','1-856-412-0033'),
  ('Cleo','Mccray','at@outlook.ca','1-317-418-2768'),
  ('Jenna','Rodriquez','quam@icloud.net','(702) 305-5957'),
  ('Isaac','King','elementum@google.ca','1-465-648-1377'),
  ('Carson','Mejia','eu@icloud.edu','1-443-286-4593'),
  ('Caleb','Mccoy','tellus.eu.augue@protonmail.edu','(582) 568-6866'),
  ('Ivory','Vasquez','in.lorem.donec@yahoo.com','1-547-515-2217'),
  ('Kareem','Macias','et.magnis@aol.org','1-250-232-1156'),
  ('Gil','Rosales','et.ultrices@outlook.org','(358) 476-4816'),
  ('Vivian','Wynn','ut.sem@outlook.couk','1-316-362-0423');
INSERT INTO users (first_name,last_name,email,phone)
VALUES
  ('Gary','Orr','sit.amet@outlook.ca','1-687-763-5050'),
  ('Joy','Atkins','a@protonmail.couk','1-862-734-0811'),
  ('Jacob','Leblanc','fermentum.metus@outlook.edu','(258) 188-2910'),
  ('Maisie','Ashley','et.arcu.imperdiet@outlook.couk','(261) 184-2501'),
  ('Harrison','Rojas','ultrices.a@aol.couk','(597) 660-7063'),
  ('Damon','Harper','massa@aol.edu','(228) 839-6708'),
  ('Jada','Bird','in.cursus@google.couk','1-738-558-0754'),
  ('Ira','Blevins','gravida@protonmail.net','1-470-264-2383'),
  ('Keegan','Abbott','dolor.nulla@protonmail.com','(236) 445-1183'),
  ('Chloe','Stout','integer@hotmail.edu','1-388-917-2934');
INSERT INTO users (first_name,last_name,email,phone)
VALUES
  ('Lev','Bruce','fames.ac@outlook.org','1-704-281-4175'),
  ('Eagan','Reyes','eu@yahoo.com','1-504-584-6659'),
  ('Carson','Ramirez','dictum@google.ca','1-132-768-1610'),
  ('Shad','Webster','felis.orci.adipiscing@protonmail.couk','(892) 711-2707'),
  ('Jorden','Mosley','sit.amet.dapibus@google.org','1-331-608-7285'),
  ('Stacey','Ford','natoque.penatibus@icloud.org','(230) 176-1648'),
  ('Kibo','Hartman','sed.tortor.integer@icloud.couk','1-863-359-8090'),
  ('Christopher','Allison','tellus.faucibus.leo@outlook.net','(510) 445-3472'),
  ('Paul','Delaney','ut.tincidunt@hotmail.couk','1-224-482-6744'),
  ('Kimberly','Downs','imperdiet.non@hotmail.org','(844) 876-9335');
INSERT INTO users (first_name,last_name,email,phone)
VALUES
  ('Aladdin','Haynes','eros@google.couk','1-687-142-5858'),
  ('Colorado','Morton','fusce@protonmail.org','(644) 963-2392'),
  ('Vladimir','Charles','id.erat.etiam@outlook.com','1-513-816-6267'),
  ('Imelda','Butler','eu.odio.tristique@protonmail.ca','(374) 423-0275'),
  ('Hedley','Gray','lectus.pede.et@yahoo.ca','(797) 758-3613'),
  ('Austin','Coffey','nisi.a@google.edu','1-274-131-2215'),
  ('Acton','Jackson','sed.tortor@icloud.edu','1-256-337-5482'),
  ('Winifred','Knight','cursus@yahoo.com','(614) 377-3785'),
  ('Lana','Cooley','sed.dictum@icloud.ca','(633) 466-0729'),
  ('Macon','Manning','ornare.facilisis@yahoo.ca','(337) 115-4207');
