mean(gapminder[gapminder$continent == "Africa", "gdpPercap"])
install.packages("dplyr")
library(dplyr)

gapminder <- read.csv('data/gapminder_data.csv')
str(gapminder)

gap_select <- gapminder %>% select(year,country,gdpPercap)
str(gap_select)


# using filter
gap_europe <- gapminder %>% filter(continent=="Europe")
head(gap_europe)

#factors are goofy now though
str(gap_europe)


gap_select_europe <- gapminder %>% filter(continent=="Europe") %>% select(year,country,gdpPercap)


#select columns
#filter rows

africa_work <- gapminder %>%
  filter(continent=="Africa") %>%
  select(lifeExp,country,year)


# summarizing data by groups
gdp_byContinent <- gapminder %>% 
  group_by(continent) %>% 
  summarise(meanGDP = mean(gdpPercap))

lifexp_byCountry <- gapminder %>%
  group_by(country) %>%
  summarise(meanlifeExp = mean(lifeExp))

head(lifexp_byCountry)
