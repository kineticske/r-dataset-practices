#Data preprocessing
#importing dataset

dataset= read.csv("C:\\Users\\Credd\\OneDrive\\Documentos\\SISTEMAS\\PRACTICAS\\python\\Machine Learning\\Machine Learning A-Z (Codes and Datasets)\\Part 1 - Data Preprocessing\\Section 2 -------------------- Part 1 - Data Preprocessing --------------------\\R\\Data.csv", header=TRUE)

#Taking care of missing data
dataset$Age =ifelse(is.na(dataset$Age),
                    ave(dataset$Age, FUN=function(x) mean(x, na.rm=TRUE)),
                    dataset$Age
                    )

dataset$Salary =ifelse(is.na(dataset$Salary),
                    ave(dataset$Salary, FUN=function(x) mean(x, na.rm=TRUE)),
                    dataset$Salary
)
#Country and Purchased have a categorical variables

#Encoding data
dataset$Country =factor(dataset$Country, 
                        levels=c('France', 'Spain', 'Germany'),
                        labels=c(1,2,3))
