install.packages("igraph")

library (igraph)

g <- graph_from_literal(A--D, B--C, C--A, E--A, C--E, E--B)
print(g)

g <- graph_from_literal(A-+D, B++C, C+-A, E+-A, C-+E, E-+B)
print(g)

g <- graph_from_literal(Daniel-+Andres, 
                       Teresa++Carlos, 
                       Carlos+-Daniel, 
                       Elena+-Daniel, 
                       Carlos-+Elena, 
                       Elena-+Teresa)
print(g)

plot(g)

plot(g, edge.arrow.size=0.5, vertex.color="red", vertex.size=25, 
     vertex.label.color="black", vertex.label.dist=3, edge.curved=0.2)

g <- sample_gnm(n=50, m=75)
V(g)$label <- ""
V(g)$size <- 8
plot(g)

plot(g, layout=layout_randomly)

pos <- layout_in_circle(g)
head(pos)
plot(g, layout=pos)

plot(g, layout=layout_with_fr)

plot(g, layout=layout_with_kk)

plot(g, layout=layout_with_mds)


