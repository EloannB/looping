-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 10 jan. 2024 à 15:43
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `metro_boulot_dodo`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int NOT NULL,
  `mail_admin` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `mdp_admin` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `mail_admin`, `mdp_admin`) VALUES
(1, 'goat.admin@mail.com', 'thegoat!36');

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `id_entreprise` int NOT NULL,
  `nom_entreprise` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `mail_entreprise` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `mdp_entreprise` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `siret_entreprise` bigint NOT NULL,
  `adresse_entreprise` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `postal_entreprise` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ville_entreprise` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `photo_entreprise` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `entreprise`
--

INSERT INTO `entreprise` (`id_entreprise`, `nom_entreprise`, `mail_entreprise`, `mdp_entreprise`, `siret_entreprise`, `adresse_entreprise`, `postal_entreprise`, `ville_entreprise`, `photo_entreprise`) VALUES
(1, 'InnoTech Solutions', 'innotech@mail.com', 'teck45687', 12345678901234, '1 Rue de la Technologie', '75001', 'Paris', 'lien_photo1.jpg'),
(2, 'EcoFoods Distribution', 'ecofoods@mail.com', 'foodeco3654', 56789012345678, '2 Avenue Écologique', '69001', 'Lyon', 'lien_photo2.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `est_relié`
--

CREATE TABLE `est_relié` (
  `id_event` int NOT NULL,
  `id_transport` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `id_event` int NOT NULL,
  `date_debut_event` date NOT NULL,
  `date_fin_event` date NOT NULL,
  `nom_challenge` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description_challenge` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo_event` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_entreprise` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id_event`, `date_debut_event`, `date_fin_event`, `nom_challenge`, `description_challenge`, `photo_event`, `id_entreprise`) VALUES
(1, '2024-01-01', '2024-12-23', 'Festival Écologique', 'Célébration de l\'éco-responsabilité', 'lien_photo_event2.jpg', 2);

-- --------------------------------------------------------

--
-- Structure de la table `trajet`
--

CREATE TABLE `trajet` (
  `id_trajet` int NOT NULL,
  `date_trajet` date NOT NULL,
  `distance_trajet` float NOT NULL,
  `temps_trajet` time NOT NULL,
  `photo_trajet` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_transport` int NOT NULL,
  `id_utilisateur` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `trajet`
--

INSERT INTO `trajet` (`id_trajet`, `date_trajet`, `distance_trajet`, `temps_trajet`, `photo_trajet`, `id_transport`, `id_utilisateur`) VALUES
(1, '2024-08-10', 5.3, '00:35:00', 'lien_photo_trajet1.jpg', 1, 1),
(2, '2024-01-15', 8.1, '01:10:00', 'lien_photo_trajet2.jpg', 2, 2),
(3, '2024-06-20', 3.5, '00:25:00', 'lien_photo_trajet3.jpg', 3, 3),
(4, '2024-03-25', 6.2, '00:50:00', 'lien_photo_trajet4.jpg', 4, 4),
(5, '2024-08-30', 4.8, '00:40:00', 'lien_photo_trajet5.jpg', 5, 5),
(6, '2024-02-05', 7.5, '01:00:00', 'lien_photo_trajet6.jpg', 1, 6),
(7, '2024-09-12', 10.2, '01:20:00', 'lien_photo_trajet7.jpg', 1, 1),
(8, '2024-09-13', 6.5, '00:45:00', 'lien_photo_trajet8.jpg', 2, 3),
(9, '2024-09-14', 8.8, '01:15:00', 'lien_photo_trajet9.jpg', 3, 5),
(10, '2024-11-20', 3.2, '00:30:00', 'lien_photo_trajet10.jpg', 1, 2),
(11, '2024-12-22', 9.7, '01:10:00', 'lien_photo_trajet11.jpg', 2, 4),
(12, '2024-09-24', 5, '00:35:00', 'lien_photo_trajet12.jpg', 3, 6),
(13, '2024-04-26', 7.3, '00:55:00', 'lien_photo_trajet13.jpg', 4, 1),
(14, '2024-07-23', 4.5, '00:40:00', 'lien_photo_trajet14.jpg', 5, 3),
(15, '2024-08-02', 8, '01:05:00', 'lien_photo_trajet15.jpg', 2, 5),
(16, '2024-10-05', 6.5, '00:50:00', 'lien_photo_trajet16.jpg', 1, 2),
(17, '2024-05-08', 3.8, '00:25:00', 'lien_photo_trajet17.jpg', 3, 4),
(18, '2024-06-12', 7.2, '00:55:00', 'lien_photo_trajet18.jpg', 4, 6),
(19, '2024-03-15', 4, '00:30:00', 'lien_photo_trajet19.jpg', 1, 1),
(20, '2024-10-18', 8.9, '01:10:00', 'lien_photo_trajet20.jpg', 2, 3),
(21, '2024-02-22', 5.2, '00:35:00', 'lien_photo_trajet21.jpg', 3, 5);

-- --------------------------------------------------------

--
-- Structure de la table `transport`
--

CREATE TABLE `transport` (
  `id_transport` int NOT NULL,
  `type_transport` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `transport`
--

INSERT INTO `transport` (`id_transport`, `type_transport`) VALUES
(1, 'marche'),
(2, 'vélo'),
(3, 'trottinette'),
(4, 'roller'),
(5, 'skate');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int NOT NULL,
  `nom_participant` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom_participant` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `pseudo_participant` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `naissance_participant` date NOT NULL,
  `mail_participant` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `mdp_participant` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `photo_participant` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description_participant` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `valide_participant` tinyint NOT NULL DEFAULT '1',
  `id_entreprise` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom_participant`, `prenom_participant`, `pseudo_participant`, `naissance_participant`, `mail_participant`, `mdp_participant`, `photo_participant`, `description_participant`, `valide_participant`, `id_entreprise`) VALUES
(1, 'Dupont', 'Jean', 'jp56987', '1990-01-15', 'jean.dupont@mail.com', 'SecretPass&2024', 'lien_photo_participant1.jpg', 'Développeur passionné par l\'innovation technologique.', 1, 1),
(2, 'Durand', 'Alice', 'alicelisse45', '1985-05-22', 'alice.durand@mail.com', 'NewPwd$987', 'lien_photo_participant2.jpg', 'Spécialiste en marketing digital.', 1, 1),
(3, 'Martin', 'Paul', 'tintin87', '1992-07-10', 'paul.martin@mail.com', 'RandomSecure42!', 'lien_photo_participant3.jpg', 'Ingénieur en environnement et écologiste.', 1, 2),
(4, 'Lefevre', 'Sophie', 'lagirafedu45', '1988-03-28', 'sophie.lefevre@mail.com', 'UniquePwd*567', 'lien_photo_participant4.jpg', 'Passionnée par la durabilité et les énergies renouvelables.', 1, 2),
(5, 'Dubois', 'Pierre', 'duferforgé254', '1995-12-03', 'pierre.dubois@mail.com', 'Passphrase#2024', 'lien_photo_participant5.jpg', 'Entrepreneur social et militant écologiste.', 1, 2),
(6, 'Girard', 'Isabelle', 'issouresitas47', '1983-09-17', 'isabelle.girard@mail.com', 'StrongKey789!', 'lien_photo_participant6.jpg', 'Artiste engagée pour l\'environnement.', 1, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `mail_admin` (`mail_admin`);

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`id_entreprise`),
  ADD UNIQUE KEY `siret_entreprise` (`siret_entreprise`);

--
-- Index pour la table `est_relié`
--
ALTER TABLE `est_relié`
  ADD PRIMARY KEY (`id_event`,`id_transport`),
  ADD KEY `id_transport` (`id_transport`);

--
-- Index pour la table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id_event`),
  ADD KEY `id_entreprise` (`id_entreprise`);

--
-- Index pour la table `trajet`
--
ALTER TABLE `trajet`
  ADD PRIMARY KEY (`id_trajet`),
  ADD KEY `id_transport` (`id_transport`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id_transport`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`),
  ADD UNIQUE KEY `pseudo_participant` (`pseudo_participant`),
  ADD UNIQUE KEY `mail_participant` (`mail_participant`),
  ADD KEY `id_entreprise` (`id_entreprise`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `entreprise`
--
ALTER TABLE `entreprise`
  MODIFY `id_entreprise` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `events`
--
ALTER TABLE `events`
  MODIFY `id_event` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `trajet`
--
ALTER TABLE `trajet`
  MODIFY `id_trajet` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `transport`
--
ALTER TABLE `transport`
  MODIFY `id_transport` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `est_relié`
--
ALTER TABLE `est_relié`
  ADD CONSTRAINT `est_relié_ibfk_1` FOREIGN KEY (`id_event`) REFERENCES `events` (`id_event`),
  ADD CONSTRAINT `est_relié_ibfk_2` FOREIGN KEY (`id_transport`) REFERENCES `transport` (`id_transport`);

--
-- Contraintes pour la table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprise` (`id_entreprise`);

--
-- Contraintes pour la table `trajet`
--
ALTER TABLE `trajet`
  ADD CONSTRAINT `trajet_ibfk_1` FOREIGN KEY (`id_transport`) REFERENCES `transport` (`id_transport`),
  ADD CONSTRAINT `trajet_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprise` (`id_entreprise`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
