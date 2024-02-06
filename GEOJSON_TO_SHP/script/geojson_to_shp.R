#################### Assemblage de plusieurs geojson en 1 shape

# Obtention de la liste des geolson
list_geojson <- list.files(path = "data/",
                pattern =".geojson",
                full.names = TRUE,
                recursive = TRUE) %>%
                as.data.frame()

#Initialisation variable
nb_geojson <- count(list_geojson)

# Assmblage de geojson
for (i in 1:nb_geojson$n)
{
  c1 <- geojson_sf(list_geojson[i,1])
  
  if(i == 1)
  {
    C_assemble <- c1
  } else
  {
    C_assemble <- bind_rows(C_assemble, c1)
  }
  
}

# Suppression des doublons
C_assemble <- C_assemble %>%
              unique()

# Export
st_write(st_make_valid(C_assemble), "result/geojson_assemble.shp")
