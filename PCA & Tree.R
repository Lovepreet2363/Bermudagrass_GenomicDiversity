#Library
library(ggplot2)

#import MDS data from TASSEL 
MDS = read.csv("MDS5PCA1.csv", header = T)

head(MDS)

#Plot MDS
MDS_plot <- ggplot(MDS, aes(x=PC3,y=PC2,color=Type, cex=1, label=Sample))
MDS_plot <- MDS_plot + geom_point() + geom_text(aes(label=Sample),hjust=0, vjust=0)
MDS_plot

#Reading 3 PCA Data from TASSEL 
pca3 <- read.csv("PCA3.csv", header = T)
  
# Plot PCA 1 and PCA 2
ggplot(pca3,aes(x=PC1,y=PC2)) + 
  geom_point() + ggtitle ("PC1 & PC2 with Three PCA")


# Plot PCA 2 and PCA 3
ggplot(pca3,aes(x=PC2,y=PC3)) + 
  geom_point() + ggtitle ("PC2 & PC3 with Three PCA")

# Plot PCA 3 and PCA 1
ggplot(pca3,aes(x=PC3,y=PC1)) + 
  geom_point()  + ggtitle ("PC3 & PC1 with Three PCA")

####### Plotting with geom_smooth##########
ggplot(pca3,aes(x=PC3,y=PC2)) + 
  geom_point() +
geom_smooth()   
  
#3D Scatterplot All 3 PcAs
library(scatterplot3d)
scatterplot3d(pca3$PC1, pca3$PC2, pca3$PC3, pch=20, color = "blue",
              xlab = "PC1", ylab = "PC2", zlab = "PC3")  

#Colored 3D PCA 
colors <- c("#999999", "#E69F00", "#56B4E9")
colors <- colors[as.factor(sp.pca$Species)]
scatterplot3d(sp.pca[,6:8], pch = 16, color=colors)

#without Box and Bars 
scatterplot3d(sp.pca[,6:8], pch = 16, type = "h", box = F, color=colors)

#3D PCA Plot with Programs 
colors <- c("#999999", "#E69F00", "#56B4E9")
colors <- colors[as.factor(sp.pca$Program)]
scatterplot3d(sp.pca[,6:8], pch = 16, color=colors)
scatterplot3d(sp.pca[,6:8], pch = 16, type = "h", box = F, color=colors)


# Reading 5 PCA Data from TASSEL
pca5 <- read.table ("PCA5.txt", header = T)
sp.pca5 <- read.csv("Species PCA5.csv", header = T)
# Plot PCA 1 and PCA 2
ggplot(sp.pca5,aes(x=PC1,y=PC2)) + 
  geom_point(aes(color = Species, alpha = 1/100)) + ggtitle ("PC1 & PC2 with Five PCA")

# Plot PCA 2 and PCA 3
ggplot(sp.pca5,aes(x=PC2,y=PC3)) + 
  geom_point(aes(color = Species, alpha = 1/100)) + ggtitle ("PC2 & PC3 with Five PCA")

# Plot PCA 3 and PCA 1
ggplot(pca3,aes(x=PC3,y=PC1)) + 
  geom_point()

#With Program PCA 5
tiff("Figure Program PCA 4 ans 5.tiff", width = 5, height = 4, units = "in", res = 400)
ggplot(sp.pca5,aes(x=PC4,y=PC5)) + 
  geom_point(aes(color = Program, alpha = 1/100)) + ggtitle ("PC4 & PC5 with Five PCA")
dev.off()

#With origin PCA 5 

ggplot(sp.pca5,aes(x=PC4,y=PC5)) + 
  geom_point(aes(color = Origin, alpha = 1/100)) + ggtitle ("PC1 & PC2 with Three PCA")

#With Continent PCA5
tiff("Figure Continent PCA 4 ans 5.tiff", width = 6, height = 4, units = "in", res = 400)
ggplot(sp.pca5,aes(x=PC4,y=PC5)) + 
  geom_point(aes(color = Continent, alpha = 1/100))+ ggtitle ("PC4 & PC5 with Three PCA")
dev.off()

# 3 PCA with Species 
sp.pca <- read.csv("Species PCA3.csv", header = T)

# Plot PCA 1 and PCA 2
tiff("Figure Species PCA 1 ans 2.tiff", width = 5, height = 4, units = "in", res = 400)
ggplot(sp.pca,aes(x=PC1,y=PC2)) + 
  geom_point(aes(color = Species, alpha = 1/100)) + ggtitle ("PC1 & PC2 with Three PCA")
dev.off()

# Plot PCA 2 and PCA 3
tiff("Figure Species PCA 2 ans 3.tiff", width = 5, height = 4, units = "in", res = 400)
ggplot(sp.pca,aes(x=PC2,y=PC3)) + 
  geom_point(aes(color = Species, alpha = 1/100)) + ggtitle ("PC2 & PC3 with Three PCA")
dev.off()

# Plot PCA 3 and PCA 1
tiff("Figure Species PCA 3 ans 1.tiff", width = 5, height = 4, units = "in", res = 400)
ggplot(sp.pca,aes(x=PC3,y=PC1)) + 
  geom_point(aes(color = Species, alpha = 1/100))  + ggtitle ("PC3 & PC1 with Three PCA")
dev.off()

# 3 PCA with Program 
sp.pca <- read.csv("Species PCA3.csv", header = T)

# Plot PCA 1 and PCA 2
tiff("Figure Program PCA 1 ans 2.tiff", width = 5, height = 4, units = "in", res = 400)
ggplot(sp.pca,aes(x=PC1,y=PC2)) + 
  geom_point(aes(color = Program, alpha = 1/100)) + ggtitle ("PC1 & PC2 with Three PCA")
dev.off()


# Plot PCA 2 and PCA 3
tiff("Figure Program PCA 2 ans 3.tiff", width = 5, height = 4, units = "in", res = 400)
ggplot(sp.pca,aes(x=PC2,y=PC3)) + 
  geom_point(aes(color = Program, alpha = 1/20)) + ggtitle ("PC2 & PC3 with Three PCA")
dev.off()

# Plot PCA 3 and PCA 1
tiff("Figure Program PCA 3 ans 1.tiff", width = 5, height = 4, units = "in", res = 400)
ggplot(sp.pca,aes(x=PC3,y=PC1)) + 
  geom_point(aes(color = Program, alpha = 1/100))  + ggtitle ("PC3 & PC1 with Three PCA")
dev.off()


# 3 PCA with Origin 
sp.pca <- read.csv("Species PCA3.csv", header = T)

# Plot PCA 1 and PCA 2
tiff("Figure Origin PCA 1 ans 2.tiff", width = 6, height = 4, units = "in", res = 400)
ggplot(sp.pca,aes(x=PC1,y=PC2)) + 
  geom_point(aes(color = Origin, alpha = 1/100)) + ggtitle ("PC1 & PC2 with Three PCA")
dev.off()


# Plot PCA 2 and PCA 3
tiff("Figure Origin PCA 2 ans 3.tiff", width = 6, height = 4, units = "in", res = 400)
ggplot(sp.pca,aes(x=PC2,y=PC3)) + 
  geom_point(aes(color = Origin, alpha = 1/20)) + ggtitle ("PC2 & PC3 with Three PCA")
dev.off()

# Plot PCA 3 and PCA 1
ggplot(sp.pca,aes(x=PC3,y=PC1)) + 
  geom_point(aes(color = Program, alpha = 1/100))  + ggtitle ("PC3 & PC1 with Three PCA")


# 3 PCA with Continent  
sp.pca <- read.csv("Species PCA3.csv", header = T)

# Plot PCA 1 and PCA 2
tiff("Figure Continent PCA 1 ans 2.tiff", width = 6, height = 4, units = "in", res = 400)
ggplot(sp.pca,aes(x=PC1,y=PC2)) + 
  geom_point(aes(color = Continent, alpha = 1/100))+ ggtitle ("PC1 & PC2 with Three PCA")
dev.off()

tiff("Figure Origin PCA 1 ans 2.tiff", width = 6, height = 4, units = "in", res = 400)
ggplot(sp.pca,aes(x=PC1,y=PC2, color = Continent)) + 
  geom_point(aes(  color = Continent, alpha = 1/10)) +  ggtitle ("PC1 & PC2 with Three PCA") +
  scale_color_manual(values = c("Africa" = "purple",
                                "Asia" ="red",
                                "Europe"= "yellow",
                                "Australia" = "orange",
                                "Eurasia" = "pink",
                                "North America" = "green",
                                "NA" = "black"))
  
dev.off()
# Plot PCA 2 and PCA 3
ggplot(sp.pca,aes(x=PC2,y=PC3)) + 
  geom_point(aes(color = Continent, alpha = 1/100)) + ggtitle ("PC2 & PC3 with Three PCA")

# Plot PCA 3 and PCA 1
ggplot(sp.pca,aes(x=PC3,y=PC1)) + 
  geom_point(aes(color = Program, alpha = 1/100))  + ggtitle ("PC3 & PC1 with Three PCA")

#Phylogenetic analysis
library(ape)
tree <- read.nexus("bermuda.nex")
plot(tree)
library(ggtree)
#PLOt with ggtree
ggtree(tree)
#Add a tree scale
ggtree(tree) + geom_treescale()
# turn your tree into a cladogram with the branch.length = "none" parameter
ggtree(tree, branch.length="none")
# Phylogram Circular layout
ggtree(tree, layout="circular") + ggtitle("(Phylogram) circular layout")

#Phylo tree with Distance matrix 
table <- read.csv("Distance matrix.csv", header = T)
head(table)
clus <- hclust(as.dist(table), method = "average")

# Opening iTOL tree files 
tree1 <- read.nexus("Unrooted.nex")

library(png)
library(jpeg)
img1 <- readPNG("Origin_Phylo1.png")
writeJPEG(img1, target = "Converted.jpeg", quality = 1)
img2 <- readPNG("Origin_Phylo2.png")
writeJPEG(img2, target = "Origin_Phylo22.jpeg", quality = 1)


#Final PCA Figures Poster
sp.pca5 <- read.csv("Species PCA5.csv", header = T)  

tiff("Poster PC Fig1.tiff", width = 6, height = 4, units = "in", res = 800)
ggplot(sp.pca5,aes(x=PC1,y=PC2)) + 
  geom_point(aes(color = Origin, alpha = 1/100)) + scale_alpha(guide = 'none')+ 
  theme(panel.background = element_rect(fill = 'white', colour = 'black'))+
  xlab("PC1 (15.6 %)") + ylab("PC2 (10.1 %)")
dev.off()

tiff("Poster PC Fig2.tiff", width = 6, height = 4, units = "in", res = 800)
ggplot(sp.pca5,aes(x=PC2,y=PC3)) + 
  geom_point(aes(color = Origin, alpha = 1/100)) + scale_alpha(guide = 'none')+ 
  theme(panel.background = element_rect(fill = 'white', colour = 'black'))+
  xlab("PC2 (10.1 %)") + ylab("PC3 (3.8 %)")
dev.off()


tiff("GSA_Poster PC Fig1.tiff", width = 6, height = 4, units = "in", res = 800)
ggplot(sp.pca5, aes(x=PC1, y=PC2, color=Origin, alpha = 1/80)) +
  geom_point() +
  scale_color_manual(values=c('red2','lawngreen', 'tan4',"yellow","blue2" ))+ 
  theme(panel.background = element_rect(fill = 'white', colour = 'black'))+
  xlab("PC1 (15.6 %)") + ylab("PC2 (10.1 %)")+ scale_alpha(guide = 'none')
dev.off()

tiff("GSA_Poster PC Fig2.tiff", width = 6, height = 4, units = "in", res = 800)
ggplot(sp.pca5, aes(x=PC2, y=PC3, color=Origin, alpha = 1/80)) +
  geom_point() +
  scale_color_manual(values=c('red2','lawngreen', 'tan4',"yellow","blue2" ))+ 
  theme(panel.background = element_rect(fill = 'white', colour = 'black'))+
  xlab("PC2 (10.1 %)") + ylab("PC3 (3.8 %)")+ scale_alpha(guide = 'none')
dev.off()







