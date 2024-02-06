# Script R : geojson_to_shp

Ce script permet d'assembler plusieurs fichiers geojson dans un fichier shapefile en supprimant les éventuels doublons.

## Descriptif du contenu

* Racine : emplacement du projet R --> "GEOJSON_TO_SHP.Rproj"
* Un dossier "data" pour le stockage des fichiers à assembler
* Un dossier "result" pour le stockage du résultat
* Un dosssier script qui contient :
  * prog_geojson_to_shp.R --> script principal
  * librairie.R --> script contenant les librairies utiles au programme
  * geojson_to_shp.R --> script d'assemblage des geojson
  * suppression_gitkeep.R --> script de suppression des .gitkeep

## Fonctionnement

1. Placer les fichiers geojson à assembler dans le dossier "data"
2. Lancer le script intitulé "prog_geojson_to_shp" qui se trouve dans le dossier "script"

## Résultat

Le fichier contenant les geojson assemblés se trouve dans le dossier 'result' et se nomme 'geojson_assemble'

## Attention

Le format du fichier étant du shapefile, les noms de champs de plus de 10 caractères sont réduits automatiquement.
