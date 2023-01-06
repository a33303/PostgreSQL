DROP TABLE IF EXISTS wheel_specifications;

CREATE TABLE wheel_specifications (
  id SERIAL PRIMARY KEY,
  car_model_id INTEGER NOT NULL,
  spec_type VARCHAR(20) NOT NULL,
  front_width FLOAT NOT NULL,
  front_diameter FLOAT NOT NULL,
  front_et FLOAT NOT NULL,
  back_width FLOAT DEFAULT NULL,
  back_diameter FLOAT DEFAULT NULL,
  back_et FLOAT DEFAULT NULL
 );

INSERT INTO wheel_specifications (id, car_model_id, spec_type, front_width, front_diameter, front_et, back_width, back_diameter, back_et) VALUES
  (1, 1, 'DEFAULT', 6.5, 16, 45, NULL, NULL, NULL),
  (2, 1, 'ALTERNATIVE', 7, 17, 48, NULL, NULL, NULL),
  (3, 1, 'ALTERNATIVE', 7.5, 18, 48, NULL, NULL, NULL),
  (4, 2, 'DEFAULT', 7, 17, 45, NULL, NULL, NULL),
  (5, 2, 'ALTERNATIVE', 7.5, 18, 48, NULL, NULL, NULL),
  (6, 3, 'DEFAULT', 6.5, 16, 45, NULL, NULL, NULL),
  (7, 3, 'ALTERNATIVE', 7, 17, 48, NULL, NULL, NULL),
  (8, 3, 'ALTERNATIVE', 7.5, 18, 48, NULL, NULL, NULL),
  (9, 4, 'DEFAULT', 7, 17, 45, NULL, NULL, NULL),
  (10, 4, 'ALTERNATIVE', 7.5, 18, 48, NULL, NULL, NULL),
  (11, 5, 'DEFAULT', 7, 16, 40, NULL, NULL, NULL),
  (12, 5, 'ALTERNATIVE', 7, 17, 42, NULL, NULL, NULL),
  (13, 5, 'ALTERNATIVE', 7.5, 18, 40, NULL, NULL, NULL),
  (14, 6, 'DEFAULT', 7, 16, 40, NULL, NULL, NULL),
  (15, 6, 'ALTERNATIVE', 7, 17, 42, NULL, NULL, NULL),
  (16, 6, 'ALTERNATIVE', 7.5, 18, 40, NULL, NULL, NULL),
  (17, 7, 'DEFAULT', 6.5, 16, 45, NULL, NULL, NULL),
  (18, 7, 'ALTERNATIVE', 7, 17, 48, NULL, NULL, NULL),
  (19, 7, 'ALTERNATIVE', 7.5, 18, 48, NULL, NULL, NULL),
  (20, 8, 'DEFAULT', 7, 17, 45, NULL, NULL, NULL),
  (21, 8, 'ALTERNATIVE', 7.5, 18, 48, NULL, NULL, NULL),
  (22, 9, 'DEFAULT', 7, 16, 40, NULL, NULL, NULL),
  (23, 9, 'ALTERNATIVE', 7, 17, 42, NULL, NULL, NULL),
  (24, 9, 'ALTERNATIVE', 7.5, 18, 40, NULL, NULL, NULL),
  (25, 10, 'DEFAULT', 7, 16, 40, NULL, NULL, NULL),
  (26, 10, 'ALTERNATIVE', 7, 17, 42, NULL, NULL, NULL),
  (27, 10, 'ALTERNATIVE', 7.5, 18, 40, NULL, NULL, NULL),
  (28, 11, 'DEFAULT', 7, 16, 40, NULL, NULL, NULL),
  (29, 11, 'ALTERNATIVE', 7, 17, 42, NULL, NULL, NULL),
  (30, 11, 'ALTERNATIVE', 7.5, 18, 40, NULL, NULL, NULL),
  (31, 12, 'DEFAULT', 7, 16, 40, NULL, NULL, NULL),
  (32, 12, 'ALTERNATIVE', 7, 17, 42, NULL, NULL, NULL),
  (33, 12, 'ALTERNATIVE', 7.5, 18, 40, NULL, NULL, NULL),
  (34, 13, 'DEFAULT', 7, 16, 40, NULL, NULL, NULL),
  (35, 13, 'ALTERNATIVE', 7, 17, 42, NULL, NULL, NULL),
  (36, 13, 'ALTERNATIVE', 7.5, 18, 40, NULL, NULL, NULL),
  (37, 14, 'DEFAULT', 7, 16, 40, NULL, NULL, NULL),
  (38, 14, 'ALTERNATIVE', 7, 17, 42, NULL, NULL, NULL),
  (39, 14, 'ALTERNATIVE', 7.5, 18, 40, NULL, NULL, NULL),
  (40, 15, 'DEFAULT', 6, 15, 45, NULL, NULL, NULL),
  (41, 15, 'ALTERNATIVE', 6.5, 16, 45, NULL, NULL, NULL),
  (42, 15, 'ALTERNATIVE', 7, 17, 45, NULL, NULL, NULL),
  (43, 16, 'DEFAULT', 6, 15, 45, NULL, NULL, NULL),
  (44, 16, 'ALTERNATIVE', 6.5, 16, 45, NULL, NULL, NULL),
  (45, 16, 'ALTERNATIVE', 7, 17, 45, NULL, NULL, NULL),
  (46, 17, 'DEFAULT', 6, 15, 45, NULL, NULL, NULL),
  (47, 17, 'ALTERNATIVE', 6.5, 16, 45, NULL, NULL, NULL),
  (48, 17, 'ALTERNATIVE', 7, 17, 45, NULL, NULL, NULL),
  (49, 18, 'DEFAULT', 6, 15, 45, NULL, NULL, NULL),
  (50, 18, 'ALTERNATIVE', 6.5, 16, 45, NULL, NULL, NULL),
  (51, 18, 'ALTERNATIVE', 7, 17, 45, NULL, NULL, NULL),
  (52, 19, 'DEFAULT', 6, 15, 45, NULL, NULL, NULL),
  (53, 19, 'ALTERNATIVE', 6.5, 16, 45, NULL, NULL, NULL),
  (54, 19, 'ALTERNATIVE', 7, 17, 45, NULL, NULL, NULL),
  (55, 20, 'DEFAULT', 6, 15, 45, NULL, NULL, NULL),
  (56, 20, 'ALTERNATIVE', 6.5, 16, 45, NULL, NULL, NULL),
  (57, 20, 'ALTERNATIVE', 7, 17, 45, NULL, NULL, NULL),
  (58, 21, 'DEFAULT', 6, 15, 45, NULL, NULL, NULL),
  (59, 21, 'ALTERNATIVE', 6.5, 16, 45, NULL, NULL, NULL),
  (60, 21, 'ALTERNATIVE', 7, 17, 45, NULL, NULL, NULL),
  (61, 22, 'DEFAULT', 6, 15, 45, NULL, NULL, NULL),
  (62, 22, 'ALTERNATIVE', 6.5, 16, 45, NULL, NULL, NULL),
  (63, 22, 'ALTERNATIVE', 7, 17, 45, NULL, NULL, NULL),
  (64, 23, 'DEFAULT', 6, 15, 45, NULL, NULL, NULL),
  (65, 23, 'ALTERNATIVE', 6.5, 16, 45, NULL, NULL, NULL),
  (66, 23, 'ALTERNATIVE', 7, 17, 45, NULL, NULL, NULL),
  (67, 24, 'DEFAULT', 6, 15, 45, NULL, NULL, NULL),
  (68, 24, 'ALTERNATIVE', 6.5, 16, 45, NULL, NULL, NULL),
  (69, 24, 'ALTERNATIVE', 7, 17, 45, NULL, NULL, NULL),
  (70, 25, 'DEFAULT', 6, 15, 45, NULL, NULL, NULL),
  (71, 25, 'ALTERNATIVE', 6.5, 16, 45, NULL, NULL, NULL),
  (72, 25, 'ALTERNATIVE', 7, 17, 45, NULL, NULL, NULL),
  (73, 26, 'DEFAULT', 7, 16, 42, NULL, NULL, NULL),
  (74, 26, 'ALTERNATIVE', 7, 17, 42, NULL, NULL, NULL),
  (75, 26, 'ALTERNATIVE', 7.5, 18, 40, NULL, NULL, NULL),
  (76, 27, 'DEFAULT', 6, 15, 42, NULL, NULL, NULL),
  (77, 27, 'ALTERNATIVE', 7, 15, 38, NULL, NULL, NULL),
  (78, 27, 'ALTERNATIVE', 6.5, 15, 40, NULL, NULL, NULL),
  (79, 27, 'ALTERNATIVE', 6.5, 16, 40, NULL, NULL, NULL),
  (80, 27, 'ALTERNATIVE', 7, 16, 38, NULL, NULL, NULL),
  (81, 27, 'ALTERNATIVE', 7, 17, 38, NULL, NULL, NULL),
  (82, 28, 'DEFAULT', 7, 16, 42, NULL, NULL, NULL),
  (83, 28, 'ALTERNATIVE', 7, 17, 42, NULL, NULL, NULL),
  (84, 28, 'ALTERNATIVE', 7.5, 18, 40, NULL, NULL, NULL),
  (85, 29, 'DEFAULT', 7, 16, 42, NULL, NULL, NULL),
  (86, 29, 'ALTERNATIVE', 7, 17, 42, NULL, NULL, NULL),
  (87, 29, 'ALTERNATIVE', 7.5, 18, 40, NULL, NULL, NULL),
  (88, 30, 'DEFAULT', 7, 16, 42, NULL, NULL, NULL),
  (89, 30, 'ALTERNATIVE', 7, 17, 42, NULL, NULL, NULL),
  (90, 30, 'ALTERNATIVE', 7.5, 18, 40, NULL, NULL, NULL),
  (91, 31, 'DEFAULT', 8, 18, 45, NULL, NULL, NULL),
  (92, 31, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (93, 31, 'ALTERNATIVE', 8.5, 20, 38, NULL, NULL, NULL),
  (94, 32, 'DEFAULT', 8, 18, 45, NULL, NULL, NULL),
  (95, 32, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (96, 32, 'ALTERNATIVE', 8.5, 20, 38, NULL, NULL, NULL),
  (97, 33, 'DEFAULT', 8, 18, 45, NULL, NULL, NULL),
  (98, 33, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (99, 33, 'ALTERNATIVE', 8.5, 20, 38, NULL, NULL, NULL),
  (100, 34, 'DEFAULT', 8, 18, 45, NULL, NULL, NULL),
  (101, 34, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (102, 34, 'ALTERNATIVE', 8.5, 20, 38, NULL, NULL, NULL),
  (103, 35, 'DEFAULT', 8, 18, 45, NULL, NULL, NULL),
  (104, 35, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (105, 35, 'ALTERNATIVE', 8.5, 20, 38, NULL, NULL, NULL),
  (106, 36, 'DEFAULT', 7, 17, 50, NULL, NULL, NULL),
  (107, 36, 'ALTERNATIVE', 7.5, 18, 48, NULL, NULL, NULL),
  (108, 36, 'ALTERNATIVE', 8, 18, 45, NULL, NULL, NULL),
  (109, 36, 'ALTERNATIVE', 8.5, 19, 40, NULL, NULL, NULL),
  (110, 37, 'DEFAULT', 7, 17, 50, NULL, NULL, NULL),
  (111, 37, 'ALTERNATIVE', 7.5, 18, 48, NULL, NULL, NULL),
  (112, 37, 'ALTERNATIVE', 8, 18, 45, NULL, NULL, NULL),
  (113, 37, 'ALTERNATIVE', 8.5, 19, 40, NULL, NULL, NULL),
  (114, 38, 'DEFAULT', 7, 17, 50, NULL, NULL, NULL),
  (115, 38, 'ALTERNATIVE', 7.5, 18, 48, NULL, NULL, NULL),
  (116, 38, 'ALTERNATIVE', 8, 18, 45, NULL, NULL, NULL),
  (117, 38, 'ALTERNATIVE', 8.5, 19, 40, NULL, NULL, NULL),
  (118, 39, 'DEFAULT', 7, 17, 50, NULL, NULL, NULL),
  (119, 39, 'ALTERNATIVE', 8, 18, 45, NULL, NULL, NULL),
  (120, 39, 'ALTERNATIVE', 7.5, 18, 48, NULL, NULL, NULL),
  (121, 39, 'ALTERNATIVE', 8.5, 19, 40, NULL, NULL, NULL),
  (122, 40, 'DEFAULT', 7, 17, 50, NULL, NULL, NULL),
  (123, 40, 'ALTERNATIVE', 8, 18, 45, NULL, NULL, NULL),
  (124, 40, 'ALTERNATIVE', 7.5, 18, 48, NULL, NULL, NULL),
  (125, 40, 'ALTERNATIVE', 8.5, 19, 40, NULL, NULL, NULL),
  (126, 41, 'DEFAULT', 7, 17, 50, NULL, NULL, NULL),
  (127, 41, 'ALTERNATIVE', 8, 18, 45, NULL, NULL, NULL),
  (128, 41, 'ALTERNATIVE', 7.5, 18, 48, NULL, NULL, NULL),
  (129, 41, 'ALTERNATIVE', 8.5, 19, 40, NULL, NULL, NULL),
  (130, 42, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (131, 42, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (132, 43, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (133, 43, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (134, 44, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (135, 44, 'TUNING', 8, 17, 50, 8.5, 17, 60),
  (136, 44, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (137, 45, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (138, 45, 'TUNING', 8, 17, 50, 8.5, 17, 60),
  (139, 45, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (140, 46, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (141, 46, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (142, 47, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (143, 47, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (144, 48, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (145, 48, 'TUNING', 8, 17, 50, 8.5, 17, 60),
  (146, 48, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (147, 49, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (148, 49, 'TUNING', 8, 17, 50, 8.5, 17, 60),
  (149, 49, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (150, 50, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (151, 50, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (152, 51, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (153, 51, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (154, 52, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (155, 52, 'TUNING', 8, 17, 50, 8.5, 17, 60),
  (156, 52, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (157, 53, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (158, 53, 'TUNING', 8, 17, 50, 8.5, 17, 60),
  (159, 53, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (160, 54, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (161, 54, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (162, 55, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (163, 55, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (164, 56, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (165, 56, 'TUNING', 8, 17, 50, 8.5, 17, 60),
  (166, 56, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (167, 57, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (168, 57, 'TUNING', 8, 17, 50, 8.5, 17, 60),
  (169, 57, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (170, 58, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (171, 58, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (172, 59, 'TUNING', 7.5, 17, 40, 9, 17, 30),
  (173, 59, 'TUNING', 8, 18, 38, 9.5, 18, 30),
  (174, 60, 'DEFAULT', 7.5, 18, 50, NULL, NULL, NULL),
  (175, 60, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (176, 61, 'DEFAULT', 7.5, 18, 50, NULL, NULL, NULL),
  (177, 61, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (178, 62, 'DEFAULT', 7.5, 18, 50, NULL, NULL, NULL),
  (179, 62, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (180, 63, 'DEFAULT', 7.5, 18, 50, NULL, NULL, NULL),
  (181, 63, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (182, 64, 'DEFAULT', 7.5, 18, 50, NULL, NULL, NULL),
  (183, 64, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (184, 65, 'DEFAULT', 7.5, 18, 50, NULL, NULL, NULL),
  (185, 65, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (186, 66, 'ALTERNATIVE', 8, 17, 45, NULL, NULL, NULL),
  (187, 66, 'DEFAULT', 7.5, 18, 45, NULL, NULL, NULL),
  (188, 66, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (189, 66, 'ALTERNATIVE', 9, 20, 40, NULL, NULL, NULL),
  (190, 67, 'ALTERNATIVE', 8, 17, 45, NULL, NULL, NULL),
  (191, 67, 'DEFAULT', 7.5, 18, 45, NULL, NULL, NULL),
  (192, 67, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (193, 67, 'ALTERNATIVE', 9, 20, 40, NULL, NULL, NULL),
  (194, 68, 'ALTERNATIVE', 8, 17, 45, NULL, NULL, NULL),
  (195, 68, 'DEFAULT', 7.5, 18, 45, NULL, NULL, NULL),
  (196, 68, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (197, 68, 'ALTERNATIVE', 9, 20, 40, NULL, NULL, NULL),
  (198, 69, 'ALTERNATIVE', 8, 17, 45, NULL, NULL, NULL),
  (199, 69, 'DEFAULT', 7.5, 18, 45, NULL, NULL, NULL),
  (200, 69, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (201, 69, 'ALTERNATIVE', 9, 20, 40, NULL, NULL, NULL),
  (202, 70, 'ALTERNATIVE', 8, 17, 45, NULL, NULL, NULL),
  (203, 70, 'DEFAULT', 7.5, 18, 45, NULL, NULL, NULL),
  (204, 70, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (205, 70, 'ALTERNATIVE', 9, 20, 40, NULL, NULL, NULL),
  (206, 71, 'ALTERNATIVE', 8, 17, 45, NULL, NULL, NULL),
  (207, 71, 'DEFAULT', 7.5, 18, 45, NULL, NULL, NULL),
  (208, 71, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (209, 71, 'ALTERNATIVE', 9, 20, 40, NULL, NULL, NULL),
  (210, 72, 'ALTERNATIVE', 8, 17, 45, NULL, NULL, NULL),
  (211, 72, 'DEFAULT', 7.5, 18, 45, NULL, NULL, NULL),
  (212, 72, 'ALTERNATIVE', 8, 19, 45, NULL, NULL, NULL),
  (213, 72, 'ALTERNATIVE', 9, 20, 40, NULL, NULL, NULL),
  (214, 73, 'DEFAULT', 7, 16, 50, NULL, NULL, NULL),
  (215, 73, 'ALTERNATIVE', 7, 17, 45, NULL, NULL, NULL),
  (216, 73, 'ALTERNATIVE', 7.5, 17, 45, NULL, NULL, NULL),
  (217, 73, 'ALTERNATIVE', 7.5, 18, 48, NULL, NULL, NULL),
  (218, 74, 'DEFAULT', 7, 16, 50, NULL, NULL, NULL),
  (219, 74, 'ALTERNATIVE', 7, 17, 45, NULL, NULL, NULL),
  (220, 74, 'ALTERNATIVE', 7.5, 17, 45, NULL, NULL, NULL),
  (221, 74, 'ALTERNATIVE', 7.5, 18, 48, NULL, NULL, NULL),
  (222, 75, 'DEFAULT', 7, 16, 50, NULL, NULL, NULL),
  (223, 75, 'ALTERNATIVE', 7, 17, 45, NULL, NULL, NULL),
  (224, 75, 'ALTERNATIVE', 7.5, 17, 45, NULL, NULL, NULL),
  (225, 75, 'ALTERNATIVE', 7.5, 18, 48, NULL, NULL, NULL),
  (226, 76, 'DEFAULT', 7, 16, 50, NULL, NULL, NULL),
  (227, 76, 'ALTERNATIVE', 7, 17, 45, NULL, NULL, NULL),
  (228, 76, 'ALTERNATIVE', 7.5, 17, 45, NULL, NULL, NULL),
  (229, 76, 'ALTERNATIVE', 7.5, 18, 48, NULL, NULL, NULL),
  (230, 77, 'DEFAULT', 7, 17, 45, NULL, NULL, NULL),
  (231, 77, 'ALTERNATIVE', 7.5, 18, 45, NULL, NULL, NULL),
  (232, 78, 'DEFAULT', 7, 17, 45, NULL, NULL, NULL),
  (233, 78, 'ALTERNATIVE', 7.5, 18, 45, NULL, NULL, NULL),
  (234, 79, 'DEFAULT', 7, 17, 45, NULL, NULL, NULL),
  (235, 79, 'ALTERNATIVE', 7.5, 18, 45, NULL, NULL, NULL),
  (236, 80, 'DEFAULT', 7, 17, 45, NULL, NULL, NULL),
  (237, 80, 'ALTERNATIVE', 7.5, 18, 45, NULL, NULL, NULL),
  (238, 81, 'DEFAULT', 7, 17, 45, NULL, NULL, NULL),
  (239, 81, 'ALTERNATIVE', 7.5, 18, 45, NULL, NULL, NULL),
  (240, 82, 'DEFAULT', 6, 16, 47, NULL, NULL, NULL),
  (241, 82, 'ALTERNATIVE', 7, 16, 38, NULL, NULL, NULL),
  (242, 82, 'ALTERNATIVE', 6.5, 16, 40, NULL, NULL, NULL),
  (243, 82, 'ALTERNATIVE', 7.5, 17, 38, NULL, NULL, NULL),
  (244, 82, 'ALTERNATIVE', 7, 17, 40, NULL, NULL, NULL),
  (245, 82, 'ALTERNATIVE', 7.5, 18, 38, NULL, NULL, NULL),
  (246, 83, 'DEFAULT', 7, 17, 45, NULL, NULL, NULL),
  (247, 83, 'ALTERNATIVE', 7.5, 18, 45, NULL, NULL, NULL),
  (248, 84, 'DEFAULT', 6, 16, 47, NULL, NULL, NULL),
  (249, 84, 'ALTERNATIVE', 7, 16, 38, NULL, NULL, NULL),
  (250, 84, 'ALTERNATIVE', 6.5, 16, 40, NULL, NULL, NULL),
  (251, 84, 'ALTERNATIVE', 7.5, 17, 38, NULL, NULL, NULL),
  (252, 84, 'ALTERNATIVE', 7, 17, 40, NULL, NULL, NULL),
  (253, 84, 'ALTERNATIVE', 7.5, 18, 38, NULL, NULL, NULL),
  (254, 85, 'DEFAULT', 7, 17, 45, NULL, NULL, NULL),
  (255, 85, 'ALTERNATIVE', 7.5, 18, 45, NULL, NULL, NULL),
  (256, 86, 'DEFAULT', 6, 16, 47, NULL, NULL, NULL),
  (257, 86, 'ALTERNATIVE', 7, 16, 38, NULL, NULL, NULL),
  (258, 86, 'ALTERNATIVE', 6.5, 16, 40, NULL, NULL, NULL),
  (259, 86, 'ALTERNATIVE', 7.5, 17, 38, NULL, NULL, NULL),
  (260, 86, 'ALTERNATIVE', 7, 17, 40, NULL, NULL, NULL),
  (261, 86, 'ALTERNATIVE', 7.5, 18, 38, NULL, NULL, NULL),
  (262, 87, 'DEFAULT', 7, 17, 45, NULL, NULL, NULL),
  (263, 87, 'ALTERNATIVE', 7.5, 18, 45, NULL, NULL, NULL),
  (264, 88, 'DEFAULT', 6, 16, 47, NULL, NULL, NULL),
  (265, 88, 'ALTERNATIVE', 7, 16, 38, NULL, NULL, NULL),
  (266, 88, 'ALTERNATIVE', 6.5, 16, 40, NULL, NULL, NULL),
  (267, 88, 'ALTERNATIVE', 7.5, 17, 38, NULL, NULL, NULL),
  (268, 88, 'ALTERNATIVE', 7, 17, 40, NULL, NULL, NULL),
  (269, 88, 'ALTERNATIVE', 7.5, 18, 38, NULL, NULL, NULL),
  (270, 89, 'DEFAULT', 7, 17, 45, NULL, NULL, NULL),
  (271, 89, 'ALTERNATIVE', 7.5, 18, 45, NULL, NULL, NULL),
  (272, 90, 'DEFAULT', 6, 16, 47, NULL, NULL, NULL),
  (273, 90, 'ALTERNATIVE', 7, 16, 38, NULL, NULL, NULL),
  (274, 90, 'ALTERNATIVE', 6.5, 16, 40, NULL, NULL, NULL),
  (275, 90, 'ALTERNATIVE', 7.5, 17, 38, NULL, NULL, NULL),
  (276, 90, 'ALTERNATIVE', 7, 17, 40, NULL, NULL, NULL),
  (277, 90, 'ALTERNATIVE', 7.5, 18, 38, NULL, NULL, NULL),
  (278, 91, 'DEFAULT', 7, 17, 45, NULL, NULL, NULL),
  (279, 91, 'ALTERNATIVE', 7.5, 18, 45, NULL, NULL, NULL),
  (280, 92, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (281, 92, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (282, 92, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (283, 92, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (284, 93, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (285, 93, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (286, 93, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (287, 93, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (288, 94, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (289, 94, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (290, 94, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (291, 94, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (292, 95, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (293, 95, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (294, 95, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (295, 95, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (296, 96, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (297, 96, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (298, 96, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (299, 96, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (300, 97, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (301, 97, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (302, 97, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (303, 97, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (304, 98, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (305, 98, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (306, 98, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (307, 98, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (308, 99, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (309, 99, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (310, 99, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (311, 99, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (312, 100, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (313, 100, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (314, 100, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (315, 100, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (316, 101, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (317, 101, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (318, 101, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (319, 101, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (320, 102, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (321, 102, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (322, 102, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (323, 102, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (324, 103, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (325, 103, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (326, 103, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (327, 103, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (328, 104, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (329, 104, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (330, 104, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (331, 104, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (332, 105, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (333, 105, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (334, 105, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (335, 105, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (336, 106, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (337, 106, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (338, 106, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (339, 106, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (340, 107, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (341, 107, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (342, 107, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (343, 107, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (344, 108, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (345, 108, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (346, 108, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (347, 108, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (348, 109, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (349, 109, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (350, 109, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (351, 109, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (352, 110, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (353, 110, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (354, 110, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (355, 110, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (356, 111, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (357, 111, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (358, 111, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (359, 111, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (360, 112, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (361, 112, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (362, 112, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (363, 112, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (364, 113, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (365, 113, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (366, 113, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (367, 113, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (368, 114, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (369, 114, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (370, 114, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (371, 114, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (372, 115, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (373, 115, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (374, 115, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (375, 115, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (376, 116, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (377, 116, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (378, 116, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (379, 116, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (380, 117, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (381, 117, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (382, 117, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (383, 117, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (384, 118, 'DEFAULT', 7.5, 17, 47, NULL, NULL, NULL),
  (385, 118, 'ALTERNATIVE', 8, 18, 42, NULL, NULL, NULL),
  (386, 118, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (387, 118, 'ALTERNATIVE', 8.5, 20, 42, NULL, NULL, NULL),
  (388, 119, 'DEFAULT', 7, 17, 47, NULL, NULL, NULL),
  (389, 119, 'ALTERNATIVE', 7.5, 18, 42, NULL, NULL, NULL),
  (390, 119, 'ALTERNATIVE', 8, 18, 45, NULL, NULL, NULL),
  (391, 119, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (392, 119, 'ALTERNATIVE', 8.5, 20, 40, NULL, NULL, NULL),
  (393, 120, 'DEFAULT', 7, 17, 47, NULL, NULL, NULL),
  (394, 120, 'ALTERNATIVE', 7.5, 18, 42, NULL, NULL, NULL),
  (395, 120, 'ALTERNATIVE', 8, 18, 45, NULL, NULL, NULL),
  (396, 120, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (397, 120, 'ALTERNATIVE', 8.5, 20, 40, NULL, NULL, NULL),
  (398, 121, 'DEFAULT', 7, 17, 47, NULL, NULL, NULL),
  (399, 121, 'ALTERNATIVE', 7.5, 18, 42, NULL, NULL, NULL),
  (400, 121, 'ALTERNATIVE', 8, 18, 45, NULL, NULL, NULL),
  (401, 121, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (402, 121, 'ALTERNATIVE', 8.5, 20, 40, NULL, NULL, NULL),
  (403, 122, 'DEFAULT', 7, 17, 47, NULL, NULL, NULL),
  (404, 122, 'ALTERNATIVE', 7.5, 18, 42, NULL, NULL, NULL),
  (405, 122, 'ALTERNATIVE', 8, 18, 45, NULL, NULL, NULL),
  (406, 122, 'ALTERNATIVE', 8, 19, 42, NULL, NULL, NULL),
  (407, 122, 'ALTERNATIVE', 8.5, 20, 40, NULL, NULL, NULL),
  (408, 123, 'DEFAULT', 7, 17, 47, NULL, NULL, NULL),
  (409, 123, 'ALTERNATIVE', 7.5, 18, 42, NULL, NULL, NULL),
  (410, 123, 'ALTERNATIVE', 8, 18, 45, NULL, NULL, NULL),
  (411, 124, 'DEFAULT', 6.5, 17, 47, NULL, NULL, NULL),
  (412, 124, 'ALTERNATIVE', 7.5, 18, 42, NULL, NULL, NULL),
  (413, 124, 'ALTERNATIVE', 8, 18, 45, NULL, NULL, NULL),
  (414, 125, 'DEFAULT', 6.5, 17, 47, NULL, NULL, NULL),
  (415, 125, 'ALTERNATIVE', 7.5, 18, 42, NULL, NULL, NULL),
  (416, 125, 'ALTERNATIVE', 8, 18, 45, NULL, NULL, NULL),
  (417, 126, 'DEFAULT', 6.5, 17, 47, NULL, NULL, NULL),
  (418, 126, 'ALTERNATIVE', 7.5, 18, 42, NULL, NULL, NULL),
  (419, 126, 'ALTERNATIVE', 8, 18, 45, NULL, NULL, NULL),
  (420, 127, 'DEFAULT', 8.5, 19, 50, NULL, NULL, NULL),
  (421, 127, 'ALTERNATIVE', 8.5, 19, 45, NULL, NULL, NULL),
  (422, 127, 'DEFAULT', 8.5, 20, 50, NULL, NULL, NULL),
  (423, 127, 'TUNING', 8.5, 21, 45, NULL, NULL, NULL),
  (424, 128, 'DEFAULT', 8.5, 19, 50, NULL, NULL, NULL),
  (425, 128, 'ALTERNATIVE', 8.5, 19, 45, NULL, NULL, NULL),
  (426, 128, 'DEFAULT', 8.5, 20, 50, NULL, NULL, NULL),
  (427, 128, 'TUNING', 8.5, 21, 45, NULL, NULL, NULL);