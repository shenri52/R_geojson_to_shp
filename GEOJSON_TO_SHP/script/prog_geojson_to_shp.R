#######################################################################
# Ce programme a pour objectif d'assembler plusieurs fichiers geojson #       
# dans un fichier shape en supprimant les éventuels doublons.         #           
#######################################################################
# Fonctionnement :                                                    #
#     1 - Placer les geojson a assembler dans le dossier data         #
#     2 - Lancer le script intitulé 'prog_geojson_to_shp'             #
#                                                                     #
# Résultat :                                                          #
#     Le fichier contenant les geojson assemblés se trouve dans le    #
# dossier 'result' et se nomme 'geojson_assemble'                     #
#                                                                     #
# Attention, le format du fichier étant du shapefile, les noms de     #
# champs de plus de 10 caractères sont réduits automatiquement.       #
#######################################################################


#################### Chargement des librairies

source("script/librairie.R")

#################### Suppression des fichiers gitkeep

source("script/suppression_gitkeep.R")

#################### Assemblage de plusieurs geojson en 1 shape

source("script/geojson_to_shp.R")
