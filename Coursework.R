library(ggplot2)
setwd("/users/refracc/Documents/R/SET09120/Coursework")

data <- read.csv("dataset.csv")

# Definite outliers plot
outliers <- ggplot(data, aes(x=Wind.Direction, y=Height, fill=Gender)) + geom_boxplot() + facet_wrap(~Group) + xlab("Wind Direction") + ylab("Height (meters)") + labs(title = "Outliers 1")
print(outliers)

# Definite relationship plot
relationship <- ggplot(data, aes(x=Wind.Direction, y=Offset, fill=Gender)) + geom_boxplot() + facet_wrap(~Group) + xlab("Wind Direction") + labs(title = "Relationship - Gender & Offset")
print(relationship)

# Definite relationship plot
relationship1 <- ggplot(data, aes(x=Angle, y=Offset, fill=Gender)) + geom_boxplot() + facet_wrap(~Group) + xlab("Angle (degrees)") + labs(title = "Relationship - Angle & Offset")
print(relationship1)

# Definite relationship plot
relationship2 <- ggplot(data[data$Height < 100, ], aes(x=Wind.Direction, y=Height, fill=Gender)) + geom_boxplot() + facet_wrap(~Group) + xlab("Wind Direction") + ylab("Height (meters)") + labs(title = "Relationship - Wind Direction & Height")
print(relationship2)
