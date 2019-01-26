#blah blah

gapminder <- read.csv("data/gapminder_data.csv")
head(gapminder)
str(gapminder)
plot(gapminder$lifeExp,gapminder$gdpPercap)

library("ggplot2")

#first plot of gapminder
ggplot(data = gapminder, aes(x = year, y = lifeExp, by=country, color = continent)) +
  geom_line()
  
ggplot(data = gapminder, aes(x = year, y = lifeExp, by=country)) +
  geom_line(aes(color=continent)) + 
  geom_point(color="blue")


ggplot(data = gapminder, aes(x= gdpPercap, y = lifeExp, color=continent)) +
  geom_point(alpha=0.5, size=3, shape=12) + scale_x_log10() + geom_smooth(method = "lm")


starts.with <- substr(gapminder$country, start = 1, stop = 1)
az.countries <- gapminder[starts.with %in% c("A", "Z"), ]

ggplot(data = az.countries, aes(x=year, y=lifeExp, color = continent)) +
  geom_line() + facet_wrap(~ country)

help(substr)
dev.off()