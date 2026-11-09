-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 09 nov. 2026 à 16:15
-- Version du serveur : 8.0.44
-- Version de PHP : 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `techsolutions`
--

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int NOT NULL,
  `identifiant` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `mot_de_passe` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `service` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `identifiant`, `mot_de_passe`, `prenom`, `nom`, `service`, `role`) VALUES
(1, 'mdurand', '$2y$10$8efjRCz/DQeIi.6TCqPPiO8crX84acHbKe5wGV3T7BUlzpMe9hxWW', 'Martin', 'Durand', 'Informatique', 'admin'),
(2, 'jmoreau', '$2y$10$1IFUf30NlciWsBb8xFLg9.kTYUnMTqP0FaDi.KjUy7Y25CPXf8TuC', 'Julie', 'Moreau', 'Accueil', 'salarie'),
(3, 'kbenali', '$2y$10$UO.SaAKfiqvt2W8mp1D/p.27S8WG8z3JwLhxp4nF5GenoAkGJdAgy', 'Karim', 'Benali', 'Comptabilité', 'salarie'),
(4, 'lpetit', '$2y$10$NJIWyOzQtnhvcv2mGg5QSu8tHELE9eLAu3stQZsDG7snVsZa3H8ta', 'Lucas', 'Petit', 'Technique', 'salarie'),
(5, 'sgarcia', '$2y$10$wzb3foPXxWIwXVfeKFfoFe36ZfvudcSMGGCvWeXyNEF/p6zp7CVt2', 'Sofia', 'Garcia', 'Technique', 'salarie'),
(6, 'tleroy', '$2y$10$DrqrZQW59A.pw1MjyXbUyOKy4Zrlu9ANcn0H8uIB52QHoVlaLxBI6', 'Thomas', 'Leroy', 'Technique', 'salarie'),
(7, 'cfontaine', '$2y$10$70dy1amCh9Jiv9Vn7KkNbeDHqZvojxg.U1OYq2HqUPZUrHfuVcYYW', 'Camille', 'Fontaine', 'Commercial', 'salarie'),
(8, 'nrousseau', '$2y$10$YhRrClnD4ZYuOtgkEwLCreoE/oGIbe6AFr58Q21flkw7Up8Nm2jBa', 'Nadia', 'Rousseau', 'Commercial', 'salarie');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifiant` (`identifiant`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
