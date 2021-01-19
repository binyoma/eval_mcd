CREATE TABLE client(
   N_Client INT,
   NomClient VARCHAR(50),
   PrenomClient VARCHAR(50),
   PRIMARY KEY(N_Client)
);

CREATE TABLE Commande(
   N_Commande INT,
   DateCommande DATE,
   MontantCommande DECIMAL(15,2),
   N_Client INT NOT NULL,
   PRIMARY KEY(N_Commande),
   FOREIGN KEY(N_Client) REFERENCES client(N_Client)
);

CREATE TABLE Article(
   N__Article INT,
   DesignationArticle VARCHAR(50),
   PU_Article DECIMAL(15,2),
   PRIMARY KEY(N__Article)
);

CREATE TABLE SecomposeDe(
   N_Commande INT,
   N__Article INT,
   Qte DECIMAL(15,2),
   TauxTva DECIMAL(15,2),
   PRIMARY KEY(N_Commande, N__Article),
   FOREIGN KEY(N_Commande) REFERENCES Commande(N_Commande),
   FOREIGN KEY(N__Article) REFERENCES Article(N__Article)
);
