DROP TABLE IF EXISTS chickens;
CREATE TABLE IF NOT EXISTS chickens
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(100) NOT NULL,
    imgSrc VARCHAR(100),
    position VARCHAR(100) NOT NULL,
	biography VARCHAR(250)
);

DELETE FROM chickens;

INSERT INTO chickens (id, name, imgSrc, position, biography) VALUES
(1, "Isabelle Poulet", "images/IsabellePoulet.png", "Teacher", "Aime gratter la terre, passionnée par les vers délicieux."),
(2, "Alex Coqaux-vins", "images/AlexCoqaux-vins.png", "Teacher", "Cuisinier talentueux, spécialiste des recettes à base de vers."),
(3, "Léonard Plumeret", "images/LéonardPlumeret.png", "Student", "Philosophe du poulailler, médite sur la vie et le grain."),
(4, "Étienne Gallus", "images/ÉtienneGallus.png", "Student", "Artiste coq, crée des plumes peintes à la perfection."),
(5, "Charlotte Plume", "images/CharlottePlume.png", "Student", "Aventurière, explore chaque coin du poulailler avec curiosité."),
(6, "Isidore Plumeur", "images/IsidorePlumeur.png", "Student", "Virtuose du chant, enflamme les aurores de ses mélodies."),
(7, "Félix Plumage", "images/FélixPlumage.png", "Student", "Défend les poules, mène des campagnes pour le bien-être avicole."),
(8, "Camille Cocorico", "images/CamilleCocorico.png", "Student", "Enthousiaste, organise des défilés de plumes dans le poulailler."),
(9, "Juliette Poulardeau", "images/JuliettePoulardeau.png", "Student", "Élégante, elle préfère picorer des graines bio et savoureuses."),
(10, "Amélie Plumeau", "images/AméliePlumeau.png", "Student", "Doyenne des poules, raconte des histoires de fermière courageuse."),
(11, "Thibault Coqplume", "images/ThibaultCoqplume.png", "Student", "Poète du poulailler, écrit des vers sur la beauté des plumes."),
(12, "Gaston Coqfort", "images/GastonCoqfort.png", "Student", "Coq gentleman, danseur de l'aube, maître du cocorico."),
(13, "Jimmy Pillon", "images/JimmyPillon.png", "Student", "Grand séducteur, maîtrise l'art de plumer avec classe."),
(14, "Élise Coquille", "images/ÉliseCoquille.png", "Student", "Créatrice d'œufs artistiques, chaque œuf est une œuvre d'art.");