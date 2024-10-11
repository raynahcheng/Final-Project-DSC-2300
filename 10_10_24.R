source <- read.csv("cervical-programme-annual-2022-23-csvs/kc61_sample_result_age_source.csv")

lessthan20 <- source[source$Indicator == "<20", ]
age20to24 <- source[source$Indicator == "20-24", ]
age25to29 <- source[source$Indicator == "25-29", ]
ages30to34 <- source[source$Indicator == "30-34", ]
ages35to39 <- source[source$Indicator == "35-39", ]
ages40to44 <- source[source$Indicator == "40-44", ]
ages45to49 <- source[source$Indicator == "45-49", ]
ages50to54 <- source[source$Indicator == "50-54", ]
ages55to59 <- source[source$Indicator == "55-59", ]
ages60to64 <- source[source$Indicator == "60-64", ]
ages65to69 <- source[source$Indicator == "65-69", ]
ages70to74 <- source[source$Indicator == "70-74", ]
greaterthan74 <- source[source$Indicator == ">=75", ]
GP <- source[source$Indicator == "GP", ]
NHSCC <- source[source$Indicator == "NHSCC", ]
GUM <- source[source$Indicator == "GUM", ]
NHS_Hopsital <- source[source$Indicator == "NHS_Hospital", ]
private <- source[source$Indicator == "Private", ]
other <- source[source$Indicator == "Other", ]


uniq_ind <- unique(source$Indicator)

summary_matrix <- matrix()



temp <- as.numeric(source$Indicator)
class(temp)

source$Indicator <- gsub("<20", 20, source$Indicator)

for (i in 1:length(uniq_ind)){
  source$Indicator <- gsub(uniq_ind[i], i, source$Indicator)
} 

for(i in 1:length(uniq_ind)){
  source_ind <- source[source$Indicator == (uniq_ind[i]), ]
  print(summary(source_ind$Borderline_changes))
}

for(i in 1:length(uniq_ind)){
  source_ind <- source[source$Indicator == (uniq_ind[i]), ]
  print(summary(source_ind$Mild_dyskaryosis))
}

for(i in 1:length(uniq_ind)){
  source_ind <- severe_NA[source$Indicator == (uniq_ind[i]), ]
  print(summary(severe_NA$Severe_dyskaryosis))
}

source$Severe_dyskaryosis <- gsub("not included", NA, source$Severe_dyskaryosis)
severe_NA <- source[is.na(source$Severe_dyskaryosis) == FALSE, ]
severe_NA$Severe_dyskaryosis <- gsub(".0", "", severe_NA$Severe_dyskaryosis)
severe_NA$Severe_dyskaryosis <- as.numeric(severe_NA$Severe_dyskaryosis)
summary(severe_NA$Severe_dyskaryosis)



for(i in)
