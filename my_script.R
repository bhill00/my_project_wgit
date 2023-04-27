#enter a comment
##
#comments are useful for myc ode to be more easily read by me and my friends

#initiate or create new variable called cats
cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1,0,1))

#write cats to new file called feline-data.csv
write.csv(x = cats, file = "data/feline-data.csv", row.names = FALSE)
#test
#
#
#
#
#
#look at specific columns
cats$weight
cats$coat

# say we discovered that the scale weighs two kgs light:
cats2 <- cats$weight+2

#produce pretty sentances
paste("My cat is", cats$coat)

#add weight and coat columns
cats$weight + cats$coats

#add weight column to each other
cats$weight + cats$weight

#examine type of weight column within cats
typeof(cats$weight)

typeof(3.14)
typeof(1L)
typeof("L1")
typeof(1+1i)
typeof(TRUE)
typeof('banana')

#create new vector called my_vector - defaults to logical
my_vector <- vector(length = 3)
my_vector

#create new vector with character data types
another_vector <- vector(mode = 'character',length=3)
another_vector

#show structure
str(another_vector)
str(my_vector)


# looking at specific values within cat
# output in factor format
cats[1]

# in different way
cats$coat

cats[[1]]
cats["coats"]
cats[1,1]
cats[,1]
cats[1,]


age <- c(2,3,5)
age
cbind(cats, age)

#realized this gave me an error
#age <- c(2,3,5,12)
#age
#cbind(cats, age)

nrow(cats)
ncol(cats)
length(age)

dim(cats)

newRow <- list("tortoiseshell",3.3,TRUE,9)
cats <- rbind(cats, newRow)
cats

levels(cats$coat)
levels(cats$coat) <- c(levels(cats$coat), "tortoiseshell")
cats <- rbind(cats, list("tortoiseshell",3.3, TRUE))

cats[-5,]
cats[4,]
cats <- na.omit(cats)

cats <- cats[,-2]
cats <- cats[-5,]

names(cats)

drop <- names(cats) %in% c("age")
drop
cats[,!drop]

cats <- rbind(cats, cats)
cats

rownames(cats) <- NULL
cats


df <- data.frame(id = c("a", "b", "c"),
                 x = 1:3,
                 y = c(TRUE, TRUE, FALSE),
                 stringsAsFactors = FALSE)



cb <- data.frame(first_name = c("brad"),
                 last_name = c("hill"),
                 lucky_number = 42)

db <- data.frame(first_name = c("steve"),
                 last_name = c("m"),
                 lucky_number = 10)

cb <- rbind(cb,db)

cb[-2,]
cb<-cb[-2,]
cb

ca <- data.frame(likes_coffee = c("no","yes"))
ca
cb <- cbind(cb,ca)
cb



gapminder <- read.csv("data/gapminder_data.csv")
str(gapminder)
gapminder[4,2]
View(gapminder)

typeof(gapminder[,4])
typeof(gapminder$lifeExp)
str(gapminder$country)
dim(gapminder)
length(gapminder)

nrow(gapminder)
ncol(gapminder)
dim(gapminder)

head(gapminder)
gapminder[1,]
tail(gapminder)

# mine
gapminder[runif(5,1,nrow(gapminder)),]

# carpentry solution
gapminder[sample(nrow(gapminder),5),]

