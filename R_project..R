install.packages("readr")
install.packages("dplyr")
install.packages("ggplot2")

library(readr)
library(dplyr)
library(ggplot2)

data <- read_csv("Desktop/DataAnalysis/R/R Project/train.csv")


result <- data %>%
  group_by(HomePlanet) %>%
  summarize(cryosleep_count = sum(CryoSleep, na.rm = TRUE))
print(result)


ggplot(result, aes(x = HomePlanet, y = cryosleep_count)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Cryosleep Count per Home Planet",
       x = "Home Planet",
       y = "Cryosleep Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


result <- data %>%
  group_by(HomePlanet) %>%
  summarise(spa_count = sum(Spa, na.rm = TRUE),
            shopping_mall_count = sum(ShoppingMall, na.rm = TRUE))

print (result)


