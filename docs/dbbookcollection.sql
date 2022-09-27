-- author names
DROP TABLE IF EXISTS `authors`;

CREATE TABLE `authors` (
                           `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                           `author` varchar(255) DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO `authors` (`id`, `author`) VALUES (1, 'Alexis Hall');
INSERT INTO `authors` (`id`, `author`) VALUES (2, 'Alice Oseman');
INSERT INTO `authors` (`id`, `author`) VALUES (3, 'Andy Weir');
INSERT INTO `authors` (`id`, `author`) VALUES (4, 'Anna Wiener');
INSERT INTO `authors` (`id`, `author`) VALUES (5, 'Casey McQuiston');
INSERT INTO `authors` (`id`, `author`) VALUES (6, 'Hiromi Kawakami');
INSERT INTO `authors` (`id`, `author`) VALUES (7, 'James Baldwin');
INSERT INTO `authors` (`id`, `author`) VALUES (8, 'KJ Charles');
INSERT INTO `authors` (`id`, `author`) VALUES (9, 'Madeline Miller');
INSERT INTO `authors` (`id`, `author`) VALUES (10, 'Maia Kobabe');
INSERT INTO `authors` (`id`, `author`) VALUES (11, 'Terry Pratchett');
INSERT INTO `authors` (`id`, `author`) VALUES (12, 'Neil Gaiman');


-- length unit
DROP TABLE IF EXISTS `lengthunits`;

CREATE TABLE `lengthunits` (
                               `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                               `lengthunit` varchar(255) DEFAULT NULL,
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `lengthunits` (`id`, `lengthunit`) VALUES (1, 'pages');
INSERT INTO `lengthunits` (`id`, `lengthunit`) VALUES (2, 'minutes');


-- creator genders
DROP TABLE IF EXISTS `genders`;

CREATE TABLE `genders` (
                           `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                           `gender` varchar(255) DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `genders` (`id`, `gender`) VALUES (1, 'Female');
INSERT INTO `genders` (`id`, `gender`) VALUES (2, 'Male');
INSERT INTO `genders` (`id`, `gender`) VALUES (3, 'Non-Binary');
INSERT INTO `genders` (`id`, `gender`) VALUES (4, 'Not-listed');


-- formats
DROP TABLE IF EXISTS `formats`;

CREATE TABLE `formats` (
                           `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                           `format` varchar(255) DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `formats` (`id`, `format`) VALUES (1, 'Digital');
INSERT INTO `formats` (`id`, `format`) VALUES (2, 'Audiobook');
INSERT INTO `formats` (`id`, `format`) VALUES (3, 'Paperback');
INSERT INTO `formats` (`id`, `format`) VALUES (4, 'Hardback');


-- country of origin
DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
                             `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                             `country` varchar(255) DEFAULT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=latin1;

INSERT INTO `countries` (`id`, `country`) VALUES (1, 'United Kingdom');
INSERT INTO `countries` (`id`, `country`) VALUES (2, 'United States');
INSERT INTO `countries` (`id`, `country`) VALUES (3, 'Australia');
INSERT INTO `countries` (`id`, `country`) VALUES (4, 'Ireland');
INSERT INTO `countries` (`id`, `country`) VALUES (5, 'Afghanistan');
INSERT INTO `countries` (`id`, `country`) VALUES (6, 'Albania');
INSERT INTO `countries` (`id`, `country`) VALUES (7, 'Algeria');
INSERT INTO `countries` (`id`, `country`) VALUES (8, 'Andorra');
INSERT INTO `countries` (`id`, `country`) VALUES (9, 'Angola');
INSERT INTO `countries` (`id`, `country`) VALUES (10, 'Antigua and Barbuda');
INSERT INTO `countries` (`id`, `country`) VALUES (11, 'Argentina');
INSERT INTO `countries` (`id`, `country`) VALUES (12, 'Armenia');
INSERT INTO `countries` (`id`, `country`) VALUES (13, 'Austria');
INSERT INTO `countries` (`id`, `country`) VALUES (14, 'Azerbaijan');
INSERT INTO `countries` (`id`, `country`) VALUES (15, 'The Bahamas');
INSERT INTO `countries` (`id`, `country`) VALUES (16, 'Bahrain');
INSERT INTO `countries` (`id`, `country`) VALUES (17, 'Bangladesh');
INSERT INTO `countries` (`id`, `country`) VALUES (18, 'Barbados');
INSERT INTO `countries` (`id`, `country`) VALUES (19, 'Belarus');
INSERT INTO `countries` (`id`, `country`) VALUES (20, 'Belgium');
INSERT INTO `countries` (`id`, `country`) VALUES (21, 'Belize');
INSERT INTO `countries` (`id`, `country`) VALUES (22, 'Benin');
INSERT INTO `countries` (`id`, `country`) VALUES (23, 'Bhutan');
INSERT INTO `countries` (`id`, `country`) VALUES (24, 'Bolivia');
INSERT INTO `countries` (`id`, `country`) VALUES (25, 'Bosnia and Herzegovina');
INSERT INTO `countries` (`id`, `country`) VALUES (26, 'Botswana');
INSERT INTO `countries` (`id`, `country`) VALUES (27, 'Brazil');
INSERT INTO `countries` (`id`, `country`) VALUES (28, 'Brunei');
INSERT INTO `countries` (`id`, `country`) VALUES (29, 'Bulgaria');
INSERT INTO `countries` (`id`, `country`) VALUES (30, 'Burkina Faso');
INSERT INTO `countries` (`id`, `country`) VALUES (31, 'Burundi');
INSERT INTO `countries` (`id`, `country`) VALUES (32, 'Cabo Verde');
INSERT INTO `countries` (`id`, `country`) VALUES (33, 'Cambodia');
INSERT INTO `countries` (`id`, `country`) VALUES (34, 'Cameroon');
INSERT INTO `countries` (`id`, `country`) VALUES (35, 'Canada');
INSERT INTO `countries` (`id`, `country`) VALUES (36, 'Central African Republic');
INSERT INTO `countries` (`id`, `country`) VALUES (37, 'Chad');
INSERT INTO `countries` (`id`, `country`) VALUES (38, 'Chile');
INSERT INTO `countries` (`id`, `country`) VALUES (39, 'China');
INSERT INTO `countries` (`id`, `country`) VALUES (40, 'Colombia');
INSERT INTO `countries` (`id`, `country`) VALUES (41, 'Comoros');
INSERT INTO `countries` (`id`, `country`) VALUES (42, 'Congo, Democratic Republic of the');
INSERT INTO `countries` (`id`, `country`) VALUES (43, 'Congo, Republic of the');
INSERT INTO `countries` (`id`, `country`) VALUES (44, 'Costa Rica');
INSERT INTO `countries` (`id`, `country`) VALUES (45, 'Côte d’Ivoire');
INSERT INTO `countries` (`id`, `country`) VALUES (46, 'Croatia');
INSERT INTO `countries` (`id`, `country`) VALUES (47, 'Cuba');
INSERT INTO `countries` (`id`, `country`) VALUES (48, 'Cyprus');
INSERT INTO `countries` (`id`, `country`) VALUES (49, 'Czech Republic');
INSERT INTO `countries` (`id`, `country`) VALUES (50, 'Denmark');
INSERT INTO `countries` (`id`, `country`) VALUES (51, 'Djibouti');
INSERT INTO `countries` (`id`, `country`) VALUES (52, 'Dominica');
INSERT INTO `countries` (`id`, `country`) VALUES (53, 'Dominican Republic');
INSERT INTO `countries` (`id`, `country`) VALUES (54, 'East Timor (Timor-Leste)');
INSERT INTO `countries` (`id`, `country`) VALUES (55, 'Ecuador');
INSERT INTO `countries` (`id`, `country`) VALUES (56, 'Egypt');
INSERT INTO `countries` (`id`, `country`) VALUES (57, 'El Salvador');
INSERT INTO `countries` (`id`, `country`) VALUES (58, 'Equatorial Guinea');
INSERT INTO `countries` (`id`, `country`) VALUES (59, 'Eritrea');
INSERT INTO `countries` (`id`, `country`) VALUES (60, 'Estonia');
INSERT INTO `countries` (`id`, `country`) VALUES (61, 'Eswatini');
INSERT INTO `countries` (`id`, `country`) VALUES (62, 'Ethiopia');
INSERT INTO `countries` (`id`, `country`) VALUES (63, 'Fiji');
INSERT INTO `countries` (`id`, `country`) VALUES (64, 'Finland');
INSERT INTO `countries` (`id`, `country`) VALUES (65, 'France');
INSERT INTO `countries` (`id`, `country`) VALUES (66, 'Gabon');
INSERT INTO `countries` (`id`, `country`) VALUES (67, 'The Gambia');
INSERT INTO `countries` (`id`, `country`) VALUES (68, 'Georgia');
INSERT INTO `countries` (`id`, `country`) VALUES (69, 'Germany');
INSERT INTO `countries` (`id`, `country`) VALUES (70, 'Ghana');
INSERT INTO `countries` (`id`, `country`) VALUES (71, 'Greece');
INSERT INTO `countries` (`id`, `country`) VALUES (72, 'Grenada');
INSERT INTO `countries` (`id`, `country`) VALUES (73, 'Guatemala');
INSERT INTO `countries` (`id`, `country`) VALUES (74, 'Guinea');
INSERT INTO `countries` (`id`, `country`) VALUES (75, 'Guinea-Bissau');
INSERT INTO `countries` (`id`, `country`) VALUES (76, 'Guyana');
INSERT INTO `countries` (`id`, `country`) VALUES (77, 'Haiti');
INSERT INTO `countries` (`id`, `country`) VALUES (78, 'Honduras');
INSERT INTO `countries` (`id`, `country`) VALUES (79, 'Hungary');
INSERT INTO `countries` (`id`, `country`) VALUES (80, 'Iceland');
INSERT INTO `countries` (`id`, `country`) VALUES (81, 'India');
INSERT INTO `countries` (`id`, `country`) VALUES (82, 'Indonesia');
INSERT INTO `countries` (`id`, `country`) VALUES (83, 'Iran');
INSERT INTO `countries` (`id`, `country`) VALUES (84, 'Iraq');
INSERT INTO `countries` (`id`, `country`) VALUES (85, 'Israel');
INSERT INTO `countries` (`id`, `country`) VALUES (86, 'Italy');
INSERT INTO `countries` (`id`, `country`) VALUES (87, 'Jamaica');
INSERT INTO `countries` (`id`, `country`) VALUES (88, 'Japan');
INSERT INTO `countries` (`id`, `country`) VALUES (89, 'Jordan');
INSERT INTO `countries` (`id`, `country`) VALUES (90, 'Kazakhstan');
INSERT INTO `countries` (`id`, `country`) VALUES (91, 'Kenya');
INSERT INTO `countries` (`id`, `country`) VALUES (92, 'Kiribati');
INSERT INTO `countries` (`id`, `country`) VALUES (93, 'Korea, North');
INSERT INTO `countries` (`id`, `country`) VALUES (94, 'Korea, South');
INSERT INTO `countries` (`id`, `country`) VALUES (95, 'Kosovo');
INSERT INTO `countries` (`id`, `country`) VALUES (96, 'Kuwait');
INSERT INTO `countries` (`id`, `country`) VALUES (97, 'Kyrgyzstan');
INSERT INTO `countries` (`id`, `country`) VALUES (98, 'Laos');
INSERT INTO `countries` (`id`, `country`) VALUES (99, 'Latvia');
INSERT INTO `countries` (`id`, `country`) VALUES (100, 'Lebanon');
INSERT INTO `countries` (`id`, `country`) VALUES (101, 'Lesotho');
INSERT INTO `countries` (`id`, `country`) VALUES (102, 'Liberia');
INSERT INTO `countries` (`id`, `country`) VALUES (103, 'Libya');
INSERT INTO `countries` (`id`, `country`) VALUES (104, 'Liechtenstein');
INSERT INTO `countries` (`id`, `country`) VALUES (105, 'Lithuania');
INSERT INTO `countries` (`id`, `country`) VALUES (106, 'Luxembourg');
INSERT INTO `countries` (`id`, `country`) VALUES (107, 'Madagascar');
INSERT INTO `countries` (`id`, `country`) VALUES (108, 'Malawi');
INSERT INTO `countries` (`id`, `country`) VALUES (109, 'Malaysia');
INSERT INTO `countries` (`id`, `country`) VALUES (110, 'Maldives');
INSERT INTO `countries` (`id`, `country`) VALUES (111, 'Mali');
INSERT INTO `countries` (`id`, `country`) VALUES (112, 'Malta');
INSERT INTO `countries` (`id`, `country`) VALUES (113, 'Marshall Islands');
INSERT INTO `countries` (`id`, `country`) VALUES (114, 'Mauritania');
INSERT INTO `countries` (`id`, `country`) VALUES (115, 'Mauritius');
INSERT INTO `countries` (`id`, `country`) VALUES (116, 'Mexico');
INSERT INTO `countries` (`id`, `country`) VALUES (117, 'Micronesia, Federated States of');
INSERT INTO `countries` (`id`, `country`) VALUES (118, 'Moldova');
INSERT INTO `countries` (`id`, `country`) VALUES (119, 'Monaco');
INSERT INTO `countries` (`id`, `country`) VALUES (120, 'Mongolia');
INSERT INTO `countries` (`id`, `country`) VALUES (121, 'Montenegro');
INSERT INTO `countries` (`id`, `country`) VALUES (122, 'Morocco');
INSERT INTO `countries` (`id`, `country`) VALUES (123, 'Mozambique');
INSERT INTO `countries` (`id`, `country`) VALUES (124, 'Myanmar (Burma)');
INSERT INTO `countries` (`id`, `country`) VALUES (125, 'Namibia');
INSERT INTO `countries` (`id`, `country`) VALUES (126, 'Nauru');
INSERT INTO `countries` (`id`, `country`) VALUES (127, 'Nepal');
INSERT INTO `countries` (`id`, `country`) VALUES (128, 'Netherlands');
INSERT INTO `countries` (`id`, `country`) VALUES (129, 'New Zealand');
INSERT INTO `countries` (`id`, `country`) VALUES (130, 'Nicaragua');
INSERT INTO `countries` (`id`, `country`) VALUES (131, 'Niger');
INSERT INTO `countries` (`id`, `country`) VALUES (132, 'Nigeria');
INSERT INTO `countries` (`id`, `country`) VALUES (133, 'North Macedonia');
INSERT INTO `countries` (`id`, `country`) VALUES (134, 'Norway');
INSERT INTO `countries` (`id`, `country`) VALUES (135, 'Oman');
INSERT INTO `countries` (`id`, `country`) VALUES (136, 'Pakistan');
INSERT INTO `countries` (`id`, `country`) VALUES (137, 'Palau');
INSERT INTO `countries` (`id`, `country`) VALUES (138, 'Panama');
INSERT INTO `countries` (`id`, `country`) VALUES (139, 'Papua New Guinea');
INSERT INTO `countries` (`id`, `country`) VALUES (140, 'Paraguay');
INSERT INTO `countries` (`id`, `country`) VALUES (141, 'Peru');
INSERT INTO `countries` (`id`, `country`) VALUES (142, 'Philippines');
INSERT INTO `countries` (`id`, `country`) VALUES (143, 'Poland');
INSERT INTO `countries` (`id`, `country`) VALUES (144, 'Portugal');
INSERT INTO `countries` (`id`, `country`) VALUES (145, 'Qatar');
INSERT INTO `countries` (`id`, `country`) VALUES (146, 'Romania');
INSERT INTO `countries` (`id`, `country`) VALUES (147, 'Russia');
INSERT INTO `countries` (`id`, `country`) VALUES (148, 'Rwanda');
INSERT INTO `countries` (`id`, `country`) VALUES (149, 'Saint Kitts and Nevis');
INSERT INTO `countries` (`id`, `country`) VALUES (150, 'Saint Lucia');
INSERT INTO `countries` (`id`, `country`) VALUES (151, 'Saint Vincent and the Grenadines');
INSERT INTO `countries` (`id`, `country`) VALUES (152, 'Samoa');
INSERT INTO `countries` (`id`, `country`) VALUES (153, 'San Marino');
INSERT INTO `countries` (`id`, `country`) VALUES (154, 'Sao Tome and Principe');
INSERT INTO `countries` (`id`, `country`) VALUES (155, 'Saudi Arabia');
INSERT INTO `countries` (`id`, `country`) VALUES (156, 'Senegal');
INSERT INTO `countries` (`id`, `country`) VALUES (157, 'Serbia');
INSERT INTO `countries` (`id`, `country`) VALUES (158, 'Seychelles');
INSERT INTO `countries` (`id`, `country`) VALUES (159, 'Sierra Leone');
INSERT INTO `countries` (`id`, `country`) VALUES (160, 'Singapore');
INSERT INTO `countries` (`id`, `country`) VALUES (161, 'Slovakia');
INSERT INTO `countries` (`id`, `country`) VALUES (162, 'Slovenia');
INSERT INTO `countries` (`id`, `country`) VALUES (163, 'Solomon Islands');
INSERT INTO `countries` (`id`, `country`) VALUES (164, 'Somalia');
INSERT INTO `countries` (`id`, `country`) VALUES (165, 'South Africa');
INSERT INTO `countries` (`id`, `country`) VALUES (166, 'Spain');
INSERT INTO `countries` (`id`, `country`) VALUES (167, 'Sri Lanka');
INSERT INTO `countries` (`id`, `country`) VALUES (168, 'Sudan');
INSERT INTO `countries` (`id`, `country`) VALUES (169, 'Sudan, South');
INSERT INTO `countries` (`id`, `country`) VALUES (170, 'Suriname');
INSERT INTO `countries` (`id`, `country`) VALUES (171, 'Sweden');
INSERT INTO `countries` (`id`, `country`) VALUES (172, 'Switzerland');
INSERT INTO `countries` (`id`, `country`) VALUES (173, 'Syria');
INSERT INTO `countries` (`id`, `country`) VALUES (174, 'Taiwan');
INSERT INTO `countries` (`id`, `country`) VALUES (175, 'Tajikistan');
INSERT INTO `countries` (`id`, `country`) VALUES (176, 'Tanzania');
INSERT INTO `countries` (`id`, `country`) VALUES (177, 'Thailand');
INSERT INTO `countries` (`id`, `country`) VALUES (178, 'Togo');
INSERT INTO `countries` (`id`, `country`) VALUES (179, 'Tonga');
INSERT INTO `countries` (`id`, `country`) VALUES (180, 'Trinidad and Tobago');
INSERT INTO `countries` (`id`, `country`) VALUES (181, 'Tunisia');
INSERT INTO `countries` (`id`, `country`) VALUES (182, 'Turkey');
INSERT INTO `countries` (`id`, `country`) VALUES (183, 'Turkmenistan');
INSERT INTO `countries` (`id`, `country`) VALUES (184, 'Tuvalu');
INSERT INTO `countries` (`id`, `country`) VALUES (185, 'Uganda');
INSERT INTO `countries` (`id`, `country`) VALUES (186, 'Ukraine');
INSERT INTO `countries` (`id`, `country`) VALUES (187, 'United Arab Emirates');
INSERT INTO `countries` (`id`, `country`) VALUES (188, 'Uruguay');
INSERT INTO `countries` (`id`, `country`) VALUES (189, 'Uzbekistan');
INSERT INTO `countries` (`id`, `country`) VALUES (190, 'Vanuatu');
INSERT INTO `countries` (`id`, `country`) VALUES (191, 'Vatican City');
INSERT INTO `countries` (`id`, `country`) VALUES (192, 'Venezuela');
INSERT INTO `countries` (`id`, `country`) VALUES (193, 'Vietnam');
INSERT INTO `countries` (`id`, `country`) VALUES (194, 'Yemen');
INSERT INTO `countries` (`id`, `country`) VALUES (195, 'Zambia');
INSERT INTO `countries` (`id`, `country`) VALUES (196, 'Zimbabwe');
INSERT INTO `countries` (`id`, `country`) VALUES (197, 'Palestine');



-- main table
DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
                         `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                         `title` varchar(255) DEFAULT NULL,
                         `author` int(11) unsigned DEFAULT NULL,
                         `year` int(11) unsigned DEFAULT NULL,
                         `length` int(11) unsigned DEFAULT NULL,
                         `lengthunit` int(11) unsigned DEFAULT NULL,
                         `gender` int(11) unsigned DEFAULT NULL,
                         `country` int(11) unsigned DEFAULT NULL,
                         `format` int(11) unsigned DEFAULT NULL,
                         `fiction` int(11) DEFAULT NULL,
                         `ownvoices` int(11) DEFAULT NULL,
                         `imageurl` varchar(255) DEFAULT NULL,
                         `goodreadsurl` varchar(255) DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         CONSTRAINT `fk_book_authors` FOREIGN KEY (`author`) REFERENCES `authors`(`id`),
                         CONSTRAINT `fk_book_lengthunits` FOREIGN KEY (`lengthunit`) REFERENCES `lengthunits`(`id`),
                         CONSTRAINT `fk_book_genders` FOREIGN KEY (`gender`) REFERENCES `genders`(`id`),
                         CONSTRAINT `fk_book_formats` FOREIGN KEY (`format`) REFERENCES `formats`(`id`),
                         CONSTRAINT `fk_book_countries` FOREIGN KEY (`country`) REFERENCES `countries`(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO `books` (`id`, `title`, `author`, `year`, `length`, `lengthunit`, `gender`, `country`, `format`,`fiction`,
                     `ownvoices`, `imageurl`, `goodreadsurl`)
VALUES (1, 'Waiting for the Flood', 1, '2015', '112', 1, 2, 1, 3, 1, 1,
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1531104889i/40755393.jpg',
        'https://www.goodreads.com/book/show/40755393-waiting-for-the-flood');
INSERT INTO `books` (`id`, `title`, `author`, `year`, `length`, `lengthunit`, `gender`, `country`, `format`,`fiction`,
                     `ownvoices`, `imageurl`, `goodreadsurl`)
VALUES (2, 'Boyfriend Material', 1, '2020', '791', 2, 2, 1, 2, 1, 1,
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1593713003i/54364691.jpg',
        'https://www.goodreads.com/book/show/54364691-boyfriend-material');
INSERT INTO `books` (`id`, `title`, `author`, `year`, `length`, `lengthunit`, `gender`, `country`, `format`,`fiction`,
                     `ownvoices`, `imageurl`, `goodreadsurl`)
VALUES (3, 'Heartstopper: Vol 1', 2, '2018', '263', 1, 1, 1, 3, 1, 0,
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1644257595i/42189109.jpg',
        'https://www.goodreads.com/book/show/42189109-heartstopper');
INSERT INTO `books` (`id`, `title`, `author`, `year`, `length`, `lengthunit`, `gender`, `country`, `format`,`fiction`,
                     `ownvoices`, `imageurl`, `goodreadsurl`)
VALUES (4, 'The Martian', 3, '2011', '659', 2, 2, 2, 2, 1, 0,
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1577892635i/50238871.jpg',
        'https://www.goodreads.com/book/show/50238871-the-martian');
INSERT INTO `books` (`id`, `title`, `author`, `year`, `length`, `lengthunit`, `gender`, `country`, `format`,`fiction`,
                     `ownvoices`, `imageurl`, `goodreadsurl`)
VALUES (5, 'Uncanny Valley', 4, '2020', '240', 1, 1, 2, 1, 0, 0,
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1573771381i/48807537.jpg',
        'https://www.goodreads.com/book/show/48807537-uncanny-valley');
INSERT INTO `books` (`id`, `title`, `author`, `year`, `length`, `lengthunit`, `gender`, `country`, `format`,`fiction`,
                     `ownvoices`, `imageurl`, `goodreadsurl`)
VALUES (6, 'Red, White & Royal Blue', 5, '2019', '425', 1, 3, 2, 1, 1, 0,
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1612224589i/56921962.jpg',
        'https://www.goodreads.com/book/show/56921962-red-white-royal-blue');
INSERT INTO `books` (`id`, `title`, `author`, `year`, `length`, `lengthunit`, `gender`, `country`, `format`,`fiction`,
                     `ownvoices`, `imageurl`, `goodreadsurl`)
VALUES (7, 'Strange Weather in Tokyo', 6, '2001', '192', 1, 1, 88, 1, 1, 0,
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1431584607i/19110746.jpg',
        'https://www.goodreads.com/book/show/19110746-strange-weather-in-tokyo');
INSERT INTO `books` (`id`, `title`, `author`, `year`, `length`, `lengthunit`, `gender`, `country`, `format`,`fiction`,
                     `ownvoices`, `imageurl`, `goodreadsurl`)
VALUES (8, 'Giovanni’s Room', 7, '1956', '178', 1, 2, 2, 1, 1, 0,
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1655037409i/57514637.jpg',
        'https://www.goodreads.com/book/show/57514637-giovanni-s-room');
INSERT INTO `books` (`id`, `title`, `author`, `year`, `length`, `lengthunit`, `gender`, `country`, `format`,`fiction`,
                     `ownvoices`, `imageurl`, `goodreadsurl`)
VALUES (9, 'Slippery Creatures (The Will Darling Adventures)', 8, '2020', '264', 1, 1, 1, 1, 1, 0,
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1587632064i/53248387.jpg',
        'https://www.goodreads.com/book/show/53248387-slippery-creatures');
INSERT INTO `books` (`id`, `title`, `author`, `year`, `length`, `lengthunit`, `gender`, `country`, `format`,`fiction`,
                     `ownvoices`, `imageurl`, `goodreadsurl`)
VALUES (10, 'The Song of Achilles', 9, '2011', '389', 1, 1, 2, 1, 1, 0,
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1622219482i/58187011.jpg',
        'https://www.goodreads.com/book/show/58187011-the-song-of-achilles');
INSERT INTO `books` (`id`, `title`, `author`, `year`, `length`, `lengthunit`, `gender`, `country`, `format`,`fiction`,
                     `ownvoices`, `imageurl`, `goodreadsurl`)
VALUES (11,'Gender Queer: A Memoir', 10, '2019', '239', 1, 3, 2, 1, 0, 1,
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1559127438i/46037381.jpg',
        'https://www.goodreads.com/book/show/46037381-gender-queer');
INSERT INTO `books` (`id`, `title`, `author`, `year`, `length`, `lengthunit`, `gender`, `country`, `format`,`fiction`,
                     `ownvoices`, `imageurl`, `goodreadsurl`)
VALUES (12,'Jingo', 11, '1997', '378', 1, 2, 1, 1, 1, 0,
        'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1458993564i/11295637.jpg',
        'https://www.goodreads.com/book/show/11295637-jingo');
