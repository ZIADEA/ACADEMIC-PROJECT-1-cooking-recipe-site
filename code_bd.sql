CREATE DATABASE site_recettes_cuisine;

USE site_recettes_cuisine;

CREATE TABLE RECETTES (
    id_recettes INT AUTO_INCREMENT PRIMARY KEY,
    title_recettes TEXT NOT NULL,
    ingredients TEXT NOT NULL,
    ingredients_quantity TEXT NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE UTILISATEURS (
    id_utilisateurs INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    date_naissance DATE,
    e_mail VARCHAR(255) NOT NULL,
    profession VARCHAR(255) NOT NULL
);

CREATE TABLE MESSAGE (
    id_message INT AUTO_INCREMENT PRIMARY KEY,
    objet VARCHAR(500) NOT NULL,
    message TEXT NOT NULL,
    id_utilisateur INT NOT NULL,
    date_message DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_utilisateur) REFERENCES UTILISATEURS(id_utilisateurs) ON DELETE CASCADE
);

CREATE TABLE news_letters (
    id_utilisateur_news INT AUTO_INCREMENT PRIMARY KEY,
    e_mail_new VARCHAR(255) NOT NULL UNIQUE
);
