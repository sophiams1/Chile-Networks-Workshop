library(NetworkExtinction)
library(ggplot2)
library(igraph)
library(viridis)
library(ggraph)

# loading Chilean intertidal network

data("chilean_intertidal")
nodes=species_char <- read.csv("/Users/sophiasimon/Documents/Chile-Networks-Workshop/SpeciesCharacteristics.csv",header = TRUE)
#nodes = read.csv('SpeciesCharacteristics.csv', header = T,as.is=T) # data attributes

# transform the data in a matrix object
intertidal_matrix <- as.matrix(chilean_intertidal) 

# transforming data in an igraph object
NET <- graph_from_adjacency_matrix(intertidal_matrix, mode='directed') 

?graph_from_adjacency_matrix() #just in case help is needed

# V() and E() are the functions used to explore the Vertex (nodes) and Edges (links)
# of the igraph object

V(NET)
E(NET)

# igraph() allows to create basic network plots

plot(NET)
?plot()

# But the ggraph(), which is an extension of ggplot2(), makes it possible to 
# personalize the plot easily - for a person familiarized with ggplot syntax

ggraph(NET, layout='fr')+ # ggraph() have lots of layout and algorithms to arrange the network... for simplicity I choose one of the more common
  geom_edge_link(alpha = 0.2)+
  geom_node_point(size= 8, shape=21, colour = 'black',fill='deepskyblue')+
  geom_node_text(aes(label = name))
  
# Now, let's add some attributes to the data...

nodes

V(NET)$name   = nodes$Species.names # add Species names
V(NET)$TL     = nodes$TL            # add Trophic Level/Category? (check this with Isi)
V(NET)$degree = degree(NET)         # Calculate and add the degree of the Vertices

# ...and begin to create awesome plots

ggraph(NET, layout='fr')+
  geom_edge_link(alpha = 0.2)+
  geom_node_point(aes(fill = TL), size= 8, shape=21, colour = 'black')+
  geom_node_text(aes(label = name, filter = degree < 10)) # identifying some of the less connected nodes

# We also know that the data belong to a directed network....So we can:

# 1) Use the geom_edge_arc() function, and make curve links

ggraph(NET, layout='fr')+
  geom_edge_arc(strength = 0.2, width = 0.3, alpha = 0.15)+
  geom_node_point(aes(fill = TL, size=degree), shape=21, colour = 'black')+ # here I am adding a size category for the degree
  scale_size(range = c(3, 8), breaks=c(5, 15,30,45,60))+
  theme_bw()+
  guides(fill = guide_legend(override.aes = list(size = 5)))+ # increasing the node size in the legend
  theme(axis.text  = element_blank(),
        axis.title = element_blank())

# 2) Create links with arrows...

ggraph(NET, layout='fr')+
  geom_edge_link(arrow = arrow(length = unit(3, 'mm')),
                 end_cap = circle(3, 'mm'),
                 width = 0.5, alpha = 0.15)+
  geom_node_point(aes(fill = TL, size=degree), shape=21, colour = 'black')+
  scale_size(range = c(3, 8), breaks=c(5, 15,30,45,60))+
  theme_classic()+
  guides(fill = guide_legend(override.aes = list(size = 5)))+
  theme(axis.text  = element_blank(),
        axis.title = element_blank())
