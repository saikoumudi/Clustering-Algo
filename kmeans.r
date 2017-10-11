iris <- read.csv('C:/UNC Charlotte/VD/Ass1/iris.csv')
names(iris)

x = iris[, -5];
y = iris[,5]
kmeans_iris <- kmeans(x,3)
kmeans_iris

library(ggplot2)
ggplot(x, aes(x$X1.4, x$X0.2, color = y)) + geom_point()

ggplot(x, aes(x$X5.1, x$X3.5, color = y)) + geom_point()

clusplot(x,kmeans_iris$cluster, xlab = "petal_Length",ylab="petal_width",main = '2D representation of the Cluster solution on only petal length and width', color=TRUE, shade=TRUE, labels=2, lines=0)

plot(x[c("X1.4","X0.2")], col= kmeans_iris$cluster);
points(kmeans_iris$centers[,c("X1.4","X0.2")], col = 1:3 ,pch=23, cex=3)

plot(x[c("X5.1","X3.5")], col= kmeans_iris$cluster);
points(kmeans_iris$centers[,c("X5.1","X3.5")], col = 1:3 ,pch=23, cex=3)






