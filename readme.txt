In my first year as a student engineer, I was assigned a web technology project. Here is the result of my work in pairs with a fellow student. We hope you will give us some constructive feedback. For contact: djeryala@gmail.com

MANIPULATION :

Le fichier code_bd.sql contient le script SQL nécessaire à la création de la base de données.

Le dossier tasty-recipes-master contient l’ensemble des fichiers des pages web.

Le dossier site_recettes_de_cuisine correspond à la base de données.
Il inclut un fichier Excel regroupant les informations indispensables à l’affichage dynamique des recettes. Ce fichier doit être chargé dans la base de données si vous ne souhaitez pas utiliser directement ce dossier et préférer exécuté le fichier  code_bd.sql  pour recréer la base de données. dans ce cas vous aurer besoins de recharger le ficher recettes.csv contenant les information des recette avec le code sql suivant :



 LOAD DATA INFILE 'recettes.csv'
INTO TABLE RECETTES
FIELDS TERMINATED BY ',' -- Colonnes séparées par des virgules
ENCLOSED BY '"' -- Texte entre guillemets
LINES TERMINATED BY '\n' -- Fin de ligne
IGNORE 1 ROWS -- Ignorer les en-têtes
(title_recettes, ingredients, ingredients_quantity, description);

Du code SQL a été également appliquer sur la table recettes affin d obtenir le visuel désirer etant donner le contenu du fichier csv


sous WAMP les dossiers doivent être placé comme suis pour un test en local : 
le dossier tasty-recipes-master   dans C:\wamp\www
le dossier site_recettes_de_cuisine     C:\wamp\bin\mysql\mysql5.6.17\data




lien du site en ligne : https://tasty23.kesug.com/tasty-recipes-master/

des mises a jours du site internet  pourrons etre faite a partir du serveur gratuit infinityfree  toujours dansle but de viser la perfection 

on espère votre comprehension .
