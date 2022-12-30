DROP TABLE IF EXISTS drivers;				
				
CREATE TABLE drivers (				
	id SERIAL PRIMARY KEY,			
	first_name VARCHAR(50) NOT NULL,			
	last_name VARCHAR(50) NOT NULL,			
	phone VARCHAR(15) UNIQUE,			
	car VARCHAR(50) NOT NULL			
);				
				
INSERT INTO  drivers (id, first_name, last_name, phone, car) 				
VALUES 				
(1,	'Acton',	'Jackson',	  '1-465-576-6520',	'Ford Transit'),
(2,	'Aladdin',	'Haynes',	  '1-262-487-7731',	'Ford Transit'),
(3,	'Austin',	'Coffey',	  '811 165-6773',	'Ford Transit'),
(4,	'Carson',	'Ramirez',	  '626 605-6733',	'Ford Transit'),
(5,	'Chloe',	'Stout',	  '1-566-675-7711',	'Ford Transit'),
(6,	'Christopher',	'Allison',	  '601 844-1249',	'Ford Transit'),
(7,	'Colorado',	'Morton',	  '585 825-2814',	'Ford Transit'),
(8,	'Eagan',	'Reyes',	  '450 714-1160',	'Ford Transit'),
(9,	'Hedley',	'Gray',	  '661 868-3152',	'Ford Transit'),
(10,	'Imelda',	'Butler',	  '543 332-7302',	'Ford Transit'),
(11,	'Jorden',	'Mosley',	  '482 421-1421',	'Ford Transit'),
(12,	'Keegan',	'Abbott',	  '1-830-134-0080',	'Ford Transit'),
(13,	'Kibo',	'Hartman',	  '776 308-1628',	'Ford Transit'),
(14,	'Kimberly',	'Downs',	  '593 503-0422',	'Ford Transit'),
(15,	'Lana',	'Cooley',	  '885 411-8562',	'Ford Transit'),
(16,	'Lev',	'Bruce',	  '807 772-8552',	'Ford Transit'),
(17,	'Macon',	'Manning',	  '1-376-550-2345',	'Ford Transit'),
(18,	'Paul',	'Delaney',	  '863 785-2454',	'Mercedes Sprinter'),
(19,	'Shad',	'Webster',	  '362 550-4974',	'Mercedes Sprinter'),
(20,	'Stacey',	'Ford',	  '264 779-4747',	'Mercedes Sprinter'),
(21,	'Vladimir',	'Charles',	  '1-747-422-8405',	'Mercedes Sprinter'),
(22,	'Winifred',	'Knight',	  '1-845-825-1422',	'Mercedes Sprinter'),
(23,	'Lysandra',	'Waller',	  '329 486-7083',	'Mercedes Sprinter'),
(24,	'Lara',	'Grimes',	  '761 753-3694',	'Mercedes Sprinter'),
(25,	'Castor',	'Mack',	  '304 498-5343',	'Mercedes Sprinter'),
(26,	'Vernon',	'Davidson',	  '660 483-0425',	'Mercedes Sprinter'),
(27,	'Mikayla',	'Figueroa',	  '607 619-8877',	'Mercedes Sprinter'),
(28,	'Maggy',	'Gilbert',	  '1-885-730-1107',	'Mercedes Sprinter'),
(29,	'Otto',	'Ayers',	  '853 845-5060',	'Mercedes Sprinter'),
(30,	'Sebastian',	'Simmons',	  '1-687-763-8658',	'Mercedes Sprinter'),
(31,	'Regan',	'Golden',	  '630 950-7198',	'Mercedes Sprinter'),
(32,	'Lucas',	'Stokes',	  '1-232-683-7208',	'Mercedes Sprinter'),
(33,	'Julie',	'Landry',	  '1-887-891-3538',	'Mercedes Sprinter'),
(34,	'India',	'Mays',	  '1-537-874-2338',	'Mercedes Sprinter'),
(35,	'Thor',	'Wood',	  '1-234-831-5147',	'Mercedes Sprinter'),
(36,	'Lila',	'Hardin',	  '1-355-388-5040',	'Mercedes Sprinter'),
(37,	'MacKensie',	'Pope',	  '1-203-327-6116',	'Mercedes Sprinter'),
(38,	'Myra',	'Horn',	  '790 532-2294',	'Mercedes Sprinter'),
(39,	'Travis',	'Dale',	  '1-857-532-3871',	'Mercedes Sprinter'),
(40,	'Azalia',	'Osborne',	  '217 958-9712',	'Mercedes Sprinter'),
(41,	'Dawn',	'Maynard',	  '1-375-347-3134',	'Mercedes Sprinter'),
(42,	'Shannon',	'Ramsey',	  '480 668-7272',	'Mercedes Sprinter'),
(43,	'Isabelle',	'Beck',	  '1-276-427-6644',	'Mercedes Sprinter'),
(44,	'Marah',	'Floyd',	  '1-536-168-3897',	'Mercedes Sprinter'),
(45,	'Keegan',	'Abbott',	  '419 825-0123',	'Mercedes Sprinter'),
(46,	'Chloe',	'Stout',	  '1-677-269-2957',	'Mercedes Sprinter'),
(47,	'Lev',	'Bruce',	  '548 864-2655',	'Mercedes Sprinter'),
(48,	'Eagan',	'Reyes',	  '1-772-655-6687',	'Mercedes Sprinter'),
(49,	'Carson',	'Ramirez',	  '1-947-226-7182',	'Mercedes Sprinter'),
(50,	'Shad',	'Webster',	  '757 237-3105',	'Mercedes Sprinter'),
(51,	'Jorden',	'Mosley',	  '185 725-5872',	'Mercedes Sprinter'),
(52,	'Stacey',	'Ford',	  '531 604-1880',	'VW Transporter'),
(53,	'Kibo',	'Hartman',	  '1-322-127-6297',	'VW Transporter'),
(54,	'Christopher',	'Allison',	  '1-387-615-5828',	'VW Transporter'),
(55,	'Paul',	'Delaney',	  '1-610-464-0581',	'VW Transporter'),
(56,	'Kimberly',	'Downs',	  '1-336-631-3296',	'VW Transporter'),
(57,	'Aladdin',	'Haynes',	  '618 660-5720',	'VW Transporter'),
(58,	'Colorado',	'Morton',	  '1-826-853-0736',	'VW Transporter'),
(59,	'Vladimir',	'Charles',	  '856 875-0141',	'VW Transporter'),
(60,	'Imelda',	'Butler',	  '727 733-2376',	'VW Transporter'),
(61,	'Hedley',	'Gray',	  '923 452-5791',	'VW Transporter'),
(62,	'Austin',	'Coffey',	  '1-375-658-8564',	'VW Transporter'),
(63,	'Acton',	'Jackson',	  '1-654-546-0247',	'VW Transporter'),
(64,	'Winifred',	'Knight',	  '939 372-1087',	'VW Transporter'),
(65,	'Lana',	'Cooley',	  '857 946-4252',	'VW Transporter'),
(66,	'Macon',	'Manning',	  '1-633-611-9582',	'VW Transporter'),
(67,	'Sebastian',	'Simmons',	  '1-498-883-1635',	'VW Transporter'),
(68,	'Regan',	'Golden',	  '1-618-400-5053',	'VW Transporter'),
(69,	'Lucas',	'Stokes',	  '1-685-663-7314',	'VW Transporter'),
(70,	'Julie',	'Landry',	  '1-333-664-1159',	'VW Transporter'),
(71,	'India',	'Mays',	  '1-288-718-8288',	'VW Transporter'),
(72,	'Thor',	'Wood',	  '1-758-454-0899',	'VW Transporter'),
(73,	'Lila',	'Hardin',	  '1-270-157-5542',	'VW Transporter'),
(74,	'MacKensie',	'Pope',	  '1-135-476-7705',	'VW Transporter'),
(75,	'Myra',	'Horn',	  '1-859-272-8921',	'VW Transporter'),
(76,	'Travis',	'Dale',	  '575 382-9224',	'VW Transporter'),
(77,	'Azalia',	'Osborne',	  '1-102-925-3236',	'VW Transporter'),
(78,	'Dawn',	'Maynard',	  '1-357-479-4456',	'VW Transporter'),
(79,	'Shannon',	'Ramsey',	  '506 739-4401',	'VW Transporter'),
(80,	'Isabelle',	'Beck',	  '1-211-926-8166',	'VW Transporter'),
(81,	'Marah',	'Floyd',	  '1-557-411-7880',	'VW Transporter'),
(82,	'Keegan',	'Abbott',	  '1-408-295-8672',	'VW Transporter'),
(83,	'Chloe',	'Stout',	  '1-970-415-2476',	'VW Transporter'),
(84,	'Lev',	'Bruce',	  '1-546-532-2453',	'VW Transporter'),
(85,	'Eagan',	'Reyes',	  '1-184-211-2435',	'VW Transporter'),
(86,	'Carson',	'Ramirez',	  '1-848-104-6601',	'VW Transporter'),
(87,	'Shad',	'Webster',	  '942 614-6743',	'VW Transporter'),
(88,	'Jorden',	'Mosley',	  '1-487-245-6533',	'VW Transporter'),
(89,	'Stacey',	'Ford',	  '217 674-2157',	'VW Transporter'),
(90,	'Kibo',	'Hartman',	  '643 451-3967',	'VW Transporter'),
(91,	'Christopher',	'Allison',	  '615 547-7471',	'VW Transporter'),
(92,	'Paul',	'Delaney',	  '817 284-1265',	'VW Transporter'),
(93,	'Kimberly',	'Downs',	  '1-157-686-4656',	'VW Transporter'),
(94,	'Aladdin',	'Haynes',	  '350 376-7471',	'VW Transporter'),
(95,	'Colorado',	'Morton',	  '878 342-1883',	'VW Transporter'),
(96,	'Vladimir',	'Charles',	  '1-981-885-1512',	'VW Transporter'),
(97,	'Imelda',	'Butler',	  '842 626-1507',	'VW Transporter'),
(98,	'Hedley',	'Gray',	  '1-895-701-6462',	'VW Transporter'),
(99,	'Eagan',	'Reyes',	  '1-861-278-2216',	'VW Transporter'),
(100,	'Carson',	'Ramirez',	  '1-405-992-0645',	'VW Transporter');