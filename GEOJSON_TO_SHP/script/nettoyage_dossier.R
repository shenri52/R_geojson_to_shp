#################### Nettoyage des dossiers

setwd("data/")
liste_fic <- list.files(pattern = "geojson$")
file.remove(liste_fic)
setwd("..")

remove(liste_fic)