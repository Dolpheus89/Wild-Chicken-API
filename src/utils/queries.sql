DROP TABLE IF EXISTS chickens;

CREATE TABLE IF NOT EXISTS chickens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    imgSrc VARCHAR(100),
    position VARCHAR(100) NOT NULL,
    biography VARCHAR(250),
    campus VARCHAR(100) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(100) NOT NULL,
    grades JSON NOT NULL
);


DELETE FROM chickens;

INSERT INTO chickens (name, imgSrc, position, biography, campus, birthdate, email, grades) VALUES
("Isabelle Poulet", "images/IsabellePoulet.png", "Teacher", "Aime gratter la terre, passionnée par les vers délicieux.", "Paris", '1975-04-23', "isabelle.poulet@wildchickenschool.com", '[{"subject":"Math","grade":18},{"subject":"Science","grade":17}]'),
("Alex Coqaux-vins", "images/AlexCoqaux-vins.png", "Teacher", "Cuisinier talentueux, spécialiste des recettes à base de vers.", "Lyon", '1980-06-15', "alex.coqauxvins@wildchickenschool.com", '[{"subject":"Math","grade":19},{"subject":"Science","grade":16}]'),
("Léonard Plumeret", "images/LéonardPlumeret.png", "Student", "Philosophe du poulailler, médite sur la vie et le grain.", "Remote", '2005-03-14', "leonard.plumeret@wildchickenschool.com", '[{"subject":"Math","grade":12},{"subject":"Science","grade":15}]'),
("Étienne Gallus", "images/ÉtienneGallus.png", "Student", "Artiste coq, crée des plumes peintes à la perfection.", "Bordeaux", '2006-07-19', "etienne.gallus@wildchickenschool.com", '[{"subject":"Math","grade":11},{"subject":"Science","grade":14}]'),
("Charlotte Plume", "images/CharlottePlume.png", "Student", "Aventurière, explore chaque coin du poulailler avec curiosité.", "Marseille", '2004-11-02', "charlotte.plume@wildchickenschool.com", '[{"subject":"Math","grade":13},{"subject":"Science","grade":15}]'),
("Isidore Plumeur", "images/IsidorePlumeur.png", "Student", "Virtuose du chant, enflamme les aurores de ses mélodies.", "Remote", '2005-01-23', "isidore.plumeur@wildchickenschool.com", '[{"subject":"Math","grade":14},{"subject":"Science","grade":16}]'),
("Félix Plumage", "images/FélixPlumage.png", "Student", "Défend les poules, mène des campagnes pour le bien-être avicole.", "Nantes", '2003-05-18', "felix.plumage@wildchickenschool.com", '[{"subject":"Math","grade":17},{"subject":"Science","grade":18}]'),
("Camille Cocorico", "images/CamilleCocorico.png", "Student", "Enthousiaste, organise des défilés de plumes dans le poulailler.", "Toulouse", '2006-09-09', "camille.cocorico@wildchickenschool.com", '[{"subject":"Math","grade":10},{"subject":"Science","grade":14}]'),
("Juliette Poulardeau", "images/JuliettePoulardeau.png", "Student", "Élégante, elle préfère picorer des graines bio et savoureuses.", "Nice", '2004-02-27', "juliette.poulardeau@wildchickenschool.com", '[{"subject":"Math","grade":12},{"subject":"Science","grade":13}]'),
("Amélie Plumeau", "images/AméliePlumeau.png", "Student", "Doyenne des poules, raconte des histoires de fermière courageuse.", "Remote", '2002-12-12', "amelie.plumeau@wildchickenschool.com", '[{"subject":"Math","grade":15},{"subject":"Science","grade":14}]'),
("Thibault Coqplume", "images/ThibaultCoqplume.png", "Student", "Poète du poulailler, écrit des vers sur la beauté des plumes.", "Lille", '2003-10-31', "thibault.coqplume@wildchickenschool.com", '[{"subject":"Math","grade":13},{"subject":"Science","grade":15}]'),
("Gaston Coqfort", "images/GastonCoqfort.png", "Student", "Coq gentleman, danseur de l'aube, maître du cocorico.", "Montpellier", '2005-06-30', "gaston.coqfort@wildchickenschool.com", '[{"subject":"Math","grade":16},{"subject":"Science","grade":17}]'),
("Jimmy Pillon", "images/JimmyPillon.png", "Student", "Grand séducteur, maîtrise l'art de plumer avec classe.", "Strasbourg", '2004-08-25', "jimmy.pillon@wildchickenschool.com", '[{"subject":"Math","grade":14},{"subject":"Science","grade":15}]'),
("Élise Coquille", "images/ÉliseCoquille.png", "Student", "Créatrice d'œufs artistiques, chaque œuf est une œuvre d'art.", "Remote", '2006-04-10', "elise.coquille@wildchickenschool.com", '[{"subject":"Math","grade":18},{"subject":"Science","grade":19}]');

