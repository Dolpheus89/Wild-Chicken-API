DROP TABLE IF EXISTS chickens;

CREATE TABLE IF NOT EXISTS chickens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    imgSrc VARCHAR(100),
    position VARCHAR(100) NOT NULL,
    biography VARCHAR(250)
);

DELETE FROM chickens;

INSERT INTO chickens (name, imgSrc, position, biography) VALUES
("Isabelle Poulet", "images/IsabellePoulet.png", "Teacher", "Aime gratter la terre, passionnée par les vers délicieux."),
("Alex Coqaux-vins", "images/AlexCoqaux-vins.png", "Teacher", "Cuisinier talentueux, spécialiste des recettes à base de vers."),
("Léonard Plumeret", "images/LéonardPlumeret.png", "Student", "Philosophe du poulailler, médite sur la vie et le grain."),
("Étienne Gallus", "images/ÉtienneGallus.png", "Student", "Artiste coq, crée des plumes peintes à la perfection."),
("Charlotte Plume", "images/CharlottePlume.png", "Student", "Aventurière, explore chaque coin du poulailler avec curiosité."),
("Isidore Plumeur", "images/IsidorePlumeur.png", "Student", "Virtuose du chant, enflamme les aurores de ses mélodies."),
("Félix Plumage", "images/FélixPlumage.png", "Student", "Défend les poules, mène des campagnes pour le bien-être avicole."),
("Camille Cocorico", "images/CamilleCocorico.png", "Student", "Enthousiaste, organise des défilés de plumes dans le poulailler."),
("Juliette Poulardeau", "images/JuliettePoulardeau.png", "Student", "Élégante, elle préfère picorer des graines bio et savoureuses."),
("Amélie Plumeau", "images/AméliePlumeau.png", "Student", "Doyenne des poules, raconte des histoires de fermière courageuse."),
("Thibault Coqplume", "images/ThibaultCoqplume.png", "Student", "Poète du poulailler, écrit des vers sur la beauté des plumes."),
("Gaston Coqfort", "images/GastonCoqfort.png", "Student", "Coq gentleman, danseur de l'aube, maître du cocorico."),
("Jimmy Pillon", "images/JimmyPillon.png", "Student", "Grand séducteur, maîtrise l'art de plumer avec classe."),
("Élise Coquille", "images/ÉliseCoquille.png", "Student", "Créatrice d'œufs artistiques, chaque œuf est une œuvre d'art.");
