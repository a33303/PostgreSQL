DROP TABLE IF EXISTS car_models;

CREATE TABLE car_models (
	id SERIAL PRIMARY KEY,
	vendor VARCHAR(300) NOT NULL,
	model VARCHAR(300) NOT NULL,
	year INTEGER NOT NULL,
	modification VARCHAR(300) NOT NULL,
	lz INTEGER NOT NULL,
	pcd FLOAT NOT NULL,
	dia FLOAT NOT NULL,
	bolt VARCHAR(300) NOT NULL
);

INSERT INTO car_models (id, vendor, model, year, modification, lz, pcd, dia, bolt)
VALUES 
  (1, 'Acura', 'CL', 2003, '3.2 i', 5, 114.3, 67.1, 'Гайка: 12*1.5'),
  (2, 'Acura', 'CL', 2003, '3.2 i Type S', 5, 114.3, 67.1, 'Гайка: 12*1.5'),
  (3, 'Acura', 'CL', 2002, '3.2 i', 5, 114.3, 67.1, 'Гайка: 12*1.5'),
  (4, 'Acura', 'CL', 2002, '3.2 i Type S', 5, 114.3, 67.1, 'Гайка: 12*1.5'),
  (5, 'Acura', 'CL', 2001, '2.3 i', 4, 114.3, 67.1, 'Гайка: 12*1.5'),
  (6, 'Acura', 'CL', 2001, '3.0 i', 4, 114.3, 67.1, 'Гайка: 12*1.5'),
  (7, 'Acura', 'CL', 2001, '3.2 i', 5, 114.3, 67.1, 'Гайка: 12*1.5'),
  (8, 'Acura', 'CL', 2001, '3.2 i Type S', 5, 114.3, 67.1, 'Гайка: 12*1.5'),
  (9, 'Acura', 'CL', 2000, '2.3 i', 4, 114.3, 67.1, 'Гайка: 12*1.5'),
  (10, 'Acura', 'CL', 2000, '3.0 i', 4, 114.3, 67.1, 'Гайка: 12*1.5'),
  (11, 'Acura', 'CL', 1999, '2.3 i', 4, 114.3, 67.1, 'Гайка: 12*1.5'),
  (12, 'Acura', 'CL', 1999, '3.0 i', 4, 114.3, 67.1, 'Гайка: 12*1.5'),
  (13, 'Acura', 'CL', 1998, '2.3 i', 4, 114, 67.1, 'Гайка: 12*1.5'),
  (14, 'Acura', 'CL', 1998, '3.0 i', 4, 114.3, 67.1, 'Гайка: 12*1.5'),
  (15, 'Acura', 'EL', 2007, '1.6 i', 4, 100, 56.1, 'Гайка: 12*1.5'),
  (16, 'Acura', 'EL', 2006, '1.6 i', 4, 100, 56.1, 'Гайка: 12*1.5'),
  (17, 'Acura', 'EL', 2005, '1.6 i', 4, 100, 56.1, 'Гайка: 12*1.5'),
  (18, 'Acura', 'EL', 2004, '1.6 i', 4, 100, 56.1, 'Гайка: 12*1.5'),
  (19, 'Acura', 'EL', 2003, '1.6 i', 4, 100, 56.1, 'Гайка: 12*1.5'),
  (20, 'Acura', 'EL', 2002, '1.6 i', 4, 100, 56.1, 'Гайка: 12*1.5'),
  (21, 'Acura', 'EL', 2001, '1.6 i', 4, 100, 56.1, 'Гайка: 12*1.5'),
  (22, 'Acura', 'EL', 2000, '1.6 i', 4, 100, 56.1, 'Гайка: 12*1.5'),
  (23, 'Acura', 'EL', 1999, '1.6 i', 4, 100, 56.1, 'Гайка: 12*1.5'),
  (24, 'Acura', 'EL', 1998, '1.6 i', 4, 100, 56.1, 'Гайка: 12*1.5'),
  (25, 'Acura', 'EL', 1997, '1.6 i', 4, 100, 56.1, 'Гайка: 12*1.5'),
  (26, 'Acura', 'Integra', 2001, '1.8 Type R', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (27, 'Acura', 'Integra', 2001, '1.8i', 4, 100, 56.1, 'Гайка: 12*1.5'),
  (28, 'Acura', 'Integra', 2000, '1.8 Type R', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (29, 'Acura', 'Integra', 1999, '1.8 Type R', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (30, 'Acura', 'Integra', 1998, '1.8 Type R', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (31, 'Acura', 'MDX', 2011, '3.7i', 5, 120, 64.1, 'Гайка: 14*1.5'),
  (32, 'Acura', 'MDX', 2010, '3.7i', 5, 120, 64.1, 'Гайка: 14*1.5'),
  (33, 'Acura', 'MDX', 2009, '3.7i', 5, 120, 64.1, 'Гайка: 14*1.5'),
  (34, 'Acura', 'MDX', 2008, '3.7i', 5, 120, 64.1, 'Гайка: 14*1.5'),
  (35, 'Acura', 'MDX', 2007, '3.7i', 5, 120, 64.1, 'Гайка: 14*1.5'),
  (36, 'Acura', 'MDX', 2006, '3.5 i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (37, 'Acura', 'MDX', 2005, '3.5 i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (38, 'Acura', 'MDX', 2004, '3.5 i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (39, 'Acura', 'MDX', 2003, '3.5 i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (40, 'Acura', 'MDX', 2002, '3.5 i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (41, 'Acura', 'MDX', 2001, '3.5 i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (42, 'Acura', 'NSX', 2005, '3.0 V6', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (43, 'Acura', 'NSX', 2005, '3.0 V6 MT', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (44, 'Acura', 'NSX', 2005, '3.2i', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (45, 'Acura', 'NSX', 2005, '3.2i MT', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (46, 'Acura', 'NSX', 2004, '3.0 V6', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (47, 'Acura', 'NSX', 2004, '3.0 V6 MT', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (48, 'Acura', 'NSX', 2004, '3.2i', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (49, 'Acura', 'NSX', 2004, '3.2i MT', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (50, 'Acura', 'NSX', 2003, '3.0 V6', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (51, 'Acura', 'NSX', 2003, '3.0 V6 MT', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (52, 'Acura', 'NSX', 2003, '3.2i', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (53, 'Acura', 'NSX', 2003, '3.2i MT', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (54, 'Acura', 'NSX', 2002, '3.0 V6', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (55, 'Acura', 'NSX', 2002, '3.0 V6 MT', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (56, 'Acura', 'NSX', 2002, '3.2i', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (57, 'Acura', 'NSX', 2002, '3.2i MT', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (58, 'Acura', 'NSX', 2001, '3.0 V6', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (59, 'Acura', 'NSX', 2001, '3.0 V6 MT', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (60, 'Acura', 'RDX', 2011, '2.3', 5, 114.3, 67.1, 'Гайка: 12*1.5'),
  (61, 'Acura', 'RDX', 2010, '2.3', 5, 114.3, 67.1, 'Гайка: 12*1.5'),
  (62, 'Acura', 'RDX', 2009, '2.3', 5, 114.3, 67.1, 'Гайка: 12*1.5'),
  (63, 'Acura', 'RDX', 2008, '2.3', 5, 114.3, 67.1, 'Гайка: 12*1.5'),
  (64, 'Acura', 'RDX', 2007, '2.3', 5, 114.3, 67.1, 'Гайка: 12*1.5'),
  (65, 'Acura', 'RDX', 2006, '2.3', 5, 114.3, 67.1, 'Гайка: 12*1.5'),
  (66, 'Acura', 'RL', 2011, '3.5i V6', 5, 120, 70.1, 'Гайка: 12*1.5'),
  (67, 'Acura', 'RL', 2010, '3.5i V6', 5, 120, 70.1, 'Гайка: 12*1.5'),
  (68, 'Acura', 'RL', 2009, '3.5i V6', 5, 120, 70.1, 'Гайка: 12*1.5'),
  (69, 'Acura', 'RL', 2008, '3.5i V6', 5, 120, 70.1, 'Гайка: 12*1.5'),
  (70, 'Acura', 'RL', 2007, '3.5i V6', 5, 120, 70.1, 'Гайка: 12*1.5'),
  (71, 'Acura', 'RL', 2006, '3.5 i', 5, 120, 70.1, 'Гайка: 12*1.5'),
  (72, 'Acura', 'RL', 2005, '3.5 i', 5, 120, 70.1, 'Гайка: 12*1.5'),
  (73, 'Acura', 'RL', 2004, '3.5 i', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (74, 'Acura', 'RL', 2003, '3.5 i', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (75, 'Acura', 'RL', 2002, '3.5 i', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (76, 'Acura', 'RL', 2001, '3.5 i', 5, 114.3, 70.1, 'Гайка: 12*1.5'),
  (77, 'Acura', 'RSX', 2011, '2.0 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (78, 'Acura', 'RSX', 2010, '2.0 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (79, 'Acura', 'RSX', 2009, '2.0 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (80, 'Acura', 'RSX', 2008, '2.0 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (81, 'Acura', 'RSX', 2007, '2.0 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (82, 'Acura', 'RSX', 2006, '2.0 i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (83, 'Acura', 'RSX', 2006, '2.0 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (84, 'Acura', 'RSX', 2005, '2.0 i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (85, 'Acura', 'RSX', 2005, '2.0 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (86, 'Acura', 'RSX', 2004, '2.0 i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (87, 'Acura', 'RSX', 2004, '2.0 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (88, 'Acura', 'RSX', 2003, '2.0 i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (89, 'Acura', 'RSX', 2003, '2.0 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (90, 'Acura', 'RSX', 2002, '2.0 i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (91, 'Acura', 'RSX', 2002, '2.0 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (92, 'Acura', 'TL', 2011, '3.2', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (93, 'Acura', 'TL', 2011, '3.5 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (94, 'Acura', 'TL', 2011, '3.5 V6', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (95, 'Acura', 'TL', 2010, '3.2', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (96, 'Acura', 'TL', 2010, '3.5 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (97, 'Acura', 'TL', 2010, '3.5 V6', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (98, 'Acura', 'TL', 2009, '3.2', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (99, 'Acura', 'TL', 2009, '3.5 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (100, 'Acura', 'TL', 2009, '3.5 V6', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (101, 'Acura', 'TL', 2008, '3.2', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (102, 'Acura', 'TL', 2008, '3.5 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (103, 'Acura', 'TL', 2008, '3.5 V6', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (104, 'Acura', 'TL', 2007, '3.2', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (105, 'Acura', 'TL', 2007, '3.5 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (106, 'Acura', 'TL', 2007, '3.5 V6', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (107, 'Acura', 'TL', 2006, '3.2', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (108, 'Acura', 'TL', 2006, '3.2 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (109, 'Acura', 'TL', 2005, '3.2', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (110, 'Acura', 'TL', 2005, '3.2 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (111, 'Acura', 'TL', 2004, '3.2', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (112, 'Acura', 'TL', 2004, '3.2 Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (113, 'Acura', 'TL', 2003, '3.2i Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (114, 'Acura', 'TL', 2002, '3.2 i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (115, 'Acura', 'TL', 2002, '3.2i Type S', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (116, 'Acura', 'TL', 2001, '3.2 i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (117, 'Acura', 'TL', 2000, '3.2 i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (118, 'Acura', 'TL', 1999, '3.2 i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (119, 'Acura', 'TSX', 2011, '2.4i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (120, 'Acura', 'TSX', 2010, '2.4i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (121, 'Acura', 'TSX', 2009, '2.4i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (122, 'Acura', 'TSX', 2008, '2.4i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (123, 'Acura', 'TSX', 2007, '2.4i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (124, 'Acura', 'TSX', 2006, '2.4i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (125, 'Acura', 'TSX', 2005, '2.4i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (126, 'Acura', 'TSX', 2004, '2.4i', 5, 114.3, 64.1, 'Гайка: 12*1.5'),
  (127, 'Acura', 'ZDX', 2011, '3.7i', 5, 120, 64.1, 'Гайка: 14*1.5'),
  (128, 'Acura', 'ZDX', 2010, '3.7i', 5, 120, 64.1, 'Гайка: 14*1.5');