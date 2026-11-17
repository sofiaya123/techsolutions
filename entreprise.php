<?php
include "inc/infos.php";
require "inc/bdd.php";

$requete = $pdo->query("SELECT prenom, nom, service, role FROM utilisateurs ORDER BY nom");
$utilisateurs = $requete->fetchAll();
?>
<!DOCTYPE html>
<p>Nombre de comptes : <?php echo count($utilisateurs); ?></p>
 <ul>
      <li>Prénom</li>
      <li>Nom</li>
      <li>Service</li>
      <li>Rôle</li>
</ul>
      <?php foreach ($utilisateurs as $u) { ?>
      <ul>
        <li><?php echo $u["prenom"]; ?></li>
        <li><?php echo $u["nom"]; ?></li>
        <li><?php echo $u["service"]; ?></li>
        <li><?php echo $u["role"]; ?></li>
      </ul>
      <?php } ?>
</ul>