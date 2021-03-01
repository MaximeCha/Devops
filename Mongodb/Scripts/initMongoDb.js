db.createUser({
  user: 'root',
  pwd: 'toor',
  roles: [
      {
          role: 'readWrite',
          db: 'cace-db',
      },
  ],
});

db = new Mongo().getDB("cace-db");

db.createCollection('composant', { capped: false });

db.composant.insertMany([
  { composantNom: "Dell", composantType: "Ordinateur", prixValeur: "1000", prixType: "Euro"},
  { composantNom: "Huwai", composantType: "Serveur", prixValeur: "1200", prixType: "Dollar"},
  { composantNom: "Samsung", composantType: "Portable", prixValeur: "1200", prixType: "Dollar"}
  ]);