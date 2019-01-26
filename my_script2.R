cats <- data.frame(coats = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1,0,1))

coats <- c('tabby','black','black')
coats

CATagories <- as.factor(coats)
str(CATagories)
levels(CATagories)
