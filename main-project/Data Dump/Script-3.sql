insert into AgeGroup values
(1,80,999),
(2,70,79),
(3,60,69),
(4,50,59),
(5,40,49),
(6,30,39),
(7,18,29),
(8,12,17),
(9,5,11),
(10,0,4);

insert into Eligibility (province, groupNumber) values
("Qu�bec", 1),
("Ontario", 1),
("Nova Scotia", 1),
("New Brunswick", 1),
("Manitoba", 1),
("British Columbia", 1),
("Prince Edward Island", 1),
("Saskatchewan", 1),
("Newfoundland and Labrador", 1);


SELECT pid, 
	case
		When  80 <= (year(CURRENT_TIMESTAMP) - year(dateOfBirth)) then 1
		When  70 <=  (year(CURRENT_TIMESTAMP) - year(dateOfBirth)) then 2
		When  60 <=  (year(CURRENT_TIMESTAMP) - year(dateOfBirth)) then 3
		When  50 <=  (year(CURRENT_TIMESTAMP) - year(dateOfBirth)) then 4
		When  40 <=  (year(CURRENT_TIMESTAMP) - year(dateOfBirth)) then 5
		When  30 <=  (year(CURRENT_TIMESTAMP) - year(dateOfBirth)) then 6
		When  18 <=  (year(CURRENT_TIMESTAMP) - year(dateOfBirth)) then 7
		When  12 <=  (year(CURRENT_TIMESTAMP) - year(dateOfBirth)) then 8
		When  5 <=  (year(CURRENT_TIMESTAMP) - year(dateOfBirth)) then 9
		When  0 <=  (year(CURRENT_TIMESTAMP) - year(dateOfBirth)) then 10
		else null
	End as "groupnumber"
FROM Person p ;


INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (1,7),
	 (2,6),
	 (3,6),
	 (4,3),
	 (5,3),
	 (6,5),
	 (7,6),
	 (8,4),
	 (9,4),
	 (10,3);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (11,5),
	 (12,7),
	 (13,7),
	 (14,2),
	 (15,8),
	 (16,7),
	 (17,5),
	 (18,3),
	 (19,7),
	 (20,4);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (21,3),
	 (22,3),
	 (23,2),
	 (24,6),
	 (25,2),
	 (26,2),
	 (27,6),
	 (28,8),
	 (29,8),
	 (30,6);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (31,4),
	 (32,3),
	 (33,3),
	 (34,2),
	 (35,7),
	 (36,6),
	 (37,5),
	 (38,2),
	 (39,8),
	 (40,3);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (41,5),
	 (42,6),
	 (43,6),
	 (44,4),
	 (45,4),
	 (46,4),
	 (47,3),
	 (48,4),
	 (49,3),
	 (50,2);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (51,6),
	 (52,8),
	 (53,7),
	 (54,7),
	 (55,2),
	 (56,7),
	 (57,5),
	 (58,2),
	 (59,8),
	 (60,4);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (61,4),
	 (62,8),
	 (63,7),
	 (64,5),
	 (65,6),
	 (66,2),
	 (67,2),
	 (68,5),
	 (69,6),
	 (70,4);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (71,7),
	 (72,8),
	 (73,2),
	 (74,7),
	 (75,8),
	 (76,2),
	 (77,7),
	 (78,6),
	 (79,3),
	 (80,6);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (81,7),
	 (82,6),
	 (83,5),
	 (84,5),
	 (85,6),
	 (86,6),
	 (87,6),
	 (88,4),
	 (89,4),
	 (90,8);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (91,6),
	 (92,6),
	 (93,5),
	 (94,5),
	 (95,2),
	 (96,8),
	 (97,4),
	 (98,3),
	 (99,4),
	 (100,8);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (101,2),
	 (102,5),
	 (103,4),
	 (104,3),
	 (105,5),
	 (106,6),
	 (107,8),
	 (108,4),
	 (109,7),
	 (110,2);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (111,3),
	 (112,4),
	 (113,2),
	 (114,7),
	 (115,4),
	 (116,6),
	 (117,4),
	 (118,6),
	 (119,7),
	 (120,2);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (121,8),
	 (122,4),
	 (123,6),
	 (124,5),
	 (125,5),
	 (126,7),
	 (127,2),
	 (128,4),
	 (129,6),
	 (130,4);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (131,2),
	 (132,2),
	 (133,2),
	 (134,7),
	 (135,5),
	 (136,5),
	 (137,7),
	 (138,4),
	 (139,7),
	 (140,5);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (141,7),
	 (142,4),
	 (143,7),
	 (144,6),
	 (145,7),
	 (146,4),
	 (147,6),
	 (148,2),
	 (149,6),
	 (150,4);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (151,2),
	 (152,3),
	 (153,6),
	 (154,6),
	 (155,6),
	 (156,4),
	 (157,6),
	 (158,5),
	 (159,6),
	 (160,7);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (161,4),
	 (162,7),
	 (163,5),
	 (164,5),
	 (165,3),
	 (166,6),
	 (167,7),
	 (168,4),
	 (169,3),
	 (170,7);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (171,8),
	 (172,7),
	 (173,8),
	 (174,2),
	 (175,3),
	 (176,3),
	 (177,7),
	 (178,2),
	 (179,5),
	 (180,4);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (181,2),
	 (182,7),
	 (183,5),
	 (184,7),
	 (185,7),
	 (186,8),
	 (187,4),
	 (188,4),
	 (189,6),
	 (190,2);
INSERT INTO BelongToGroup (pid,groupNumber) VALUES
	 (191,3),
	 (192,5),
	 (193,5),
	 (194,6),
	 (195,5),
	 (196,5),
	 (197,2),
	 (198,7),
	 (199,3),
	 (200,2);