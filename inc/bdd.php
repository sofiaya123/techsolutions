<?php
// Connexion à la base de données techsolutions
// XAMPP (Windows, Linux) : utilisateur root, mot de passe vide
$pdo = new PDO("mysql:host=localhost;dbname=techsolutions;charset=utf8mb4", "root", "root");

// Les lignes lues dans la base seront rangées avec le nom des colonnes
$pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

