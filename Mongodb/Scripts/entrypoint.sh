#!/bin/bash
mongo use db.COMPOSANT
mongo db.COMPOSANT.insertMany([
{ composantNom: "Dell", composantType: "Ordinateur", prixValeur: "1000", prixType: "Euro"},
{ composantNom: "Huwai", composantType: "Serveur", prixValeur: "1200", prixType: "Dollar"},
{ composantNom: "Samsung", composantType: "Portable", prixValeur: "1200", prixType: "Dollar"}
])