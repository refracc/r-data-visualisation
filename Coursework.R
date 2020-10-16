library(ggplot2)
setwd("/users/refracc/Documents/R/SET09120/Coursework")

data <- read.csv("dataset.csv")

# Definite outliers plot (global)
outliers <- ggplot(data, aes(x=Wind.Direction, y=Height, fill=Gender)) + geom_boxplot() + facet_grid(~Group) + xlab("Wind Direction") + ylab("Height (meters)") + labs(title = "Global Outliers")
print(outliers)

# Definite outliers plot (contextual)
# Definite relationship plot
rel <- ggplot(data, aes(x=Angle, y=Distance, color=Group, shape=Group)) + geom_point(alpha = 0.7) + labs(title="Relationship - Angle & Distance (Contextual Outlier)") + xlab("Angle (degrees)") + ylab("Distance (meters)") + scale_fill_discrete(name = "Group", labels = c("Experienced", "Novice", "Professional", "Very Experienced"))
print(rel)

# Definite relationship plot
relationship <- ggplot(data, aes(x=Wind.Direction, y=Offset, fill=Gender)) + geom_boxplot() + facet_grid(~Group) + xlab("Wind Direction") + labs(title = "Relationship - Wind Direction & Offset") + scale_fill_discrete(name = "Gender", labels = c("Female", "Male"))
print(relationship)

# Definite relationship plot
relationship1 <- ggplot(data, aes(x=Angle, y=Offset, fill=Gender)) + geom_boxplot() + facet_grid(~Group) + xlab("Angle (degrees)") + ylab("Offset (cm)") + labs(title = "Relationship - Angle & Offset") + scale_fill_discrete(name = "Gender", labels = c("Female", "Male"))
print(relationship1)

# Definite relationship plot
re <- ggplot(data, aes(x=Score.2, y=Age, color=Group, shape=Group)) + geom_point(alpha = 0.7) + facet_grid(Gender~Wind.Direction)  + scale_fill_discrete(name = "Group", labels = c("Experienced", "Novice", "Professional", "Very Experienced")) + xlab("Score 2") + labs(title = "Relationship - Age & Score.2")
print(re)
