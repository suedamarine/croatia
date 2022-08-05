library(tidyverse)

harvest <- read.csv("data/croatia_harvest.csv")

harvest <- harvest %>%
  mutate(company = as.character(company),
         area = as.character(area),
         unit = as.character(unit))

# mutate harvest to include zone
harvest_1 <- harvest %>%
  mutate(zone = str_replace_all(area, c("Kuta" = "P-13-MLZ-01",
                                        "Mali Ston" = "P-13-MLZ-02",
                                        "Hodilje" = "P-13-MLZ-03",
                                        "Banja" = "P-13-MLZ-04",
                                        "Soca" = "P-13-MLZ-05",
                                        "Bistrina" = "P-13-MLZ-06",
                                        "Bjejevica" = "P-13-MLZ-07",
                                        "Usko Kanal" = "P-13-MLZ-08",
                                        "Brijesta I" = "P-13-MlZ-09",
                                        "Brijesta II" = "P-13-MLZ-10",
                                        "Blazevo" = " P-13-MLZ-11",
                                        "Sutvid" = "P-13-MlZ-12",
                                        "Ston" = "P-13-MLZ-13",
                                        "Luka" = "P-13-MlZ-14",
                                        "Kanal" = "P-13-MLZ-16",
                                        "Brijesta" = "P-13-MLZ-17")))
