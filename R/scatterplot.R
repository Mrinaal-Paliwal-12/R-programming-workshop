
# present in R
orange <- Orange[, c('age', 'circumference')]

# output to be present as PNG file
png("scatterplot.jpeg")

# plotting
plot(x = orange$age, y = orange$circumference, xlab = "Age",
     ylab = "Circumference", main = "Age VS Circumference",
     col.lab = "darkgreen", col.main = "darkgreen",
     col.axis = "darkgreen")

# saving the file
dev.off()
