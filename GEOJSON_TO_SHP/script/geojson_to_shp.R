#################### Assemblage de plusieurs fichiers geojson en 1 shape

# Obtention de la liste des geolson
list_geojson <- list.files(path = "data/",
                pattern =".geojson",
                full.names = TRUE,
                recursive = TRUE) %>%
                as.data.frame()

# Assmblage de geojson
for (i in 1:nrow(list_geojson))
{
  couche <- geojson_sf(list_geojson[i,1])
  
  if(i == 1)
  {
    couche_assemble <- couche
  } else
  {
    couche_assemble <- bind_rows(couche_assemble, couche)
  }
  
}

# Suppression des doublons
couche_assemble <- couche_assemble %>%
                   unique()

# Export
st_write(st_make_valid(couche_assemble),
         "result/geojson_assemble.shp")
