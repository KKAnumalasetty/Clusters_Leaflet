library(leaflet)
locations <- read.csv('Dummy_Data.csv')
locations <- unique(locations)

Vendors_only <- subset(locations, Location_Type == 'Vendor')
Vendors_only

leaflet(data=Vendors_only) %>% addTiles() %>%
  addMarkers(~Long,~Lat,
             popup = ~paste("<h3>",Name,"</h3>","<br/>","State: ",State,"<br/> Rank: ",Rank, "<br/> Population:",Population),
             clusterOptions = markerClusterOptions())