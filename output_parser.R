# script that parses .txt output to excel files

# install writexl and readxl packages
install.packages("xlsx", repos = "https://cloud.r-project.org/")
library(xlsx)
install.packages("readxl", repos = "https://cloud.r-project.org/")
library(readxl)

# read file
outputData <- read.delim2("test2.txt", header = TRUE)

# read existing data from sheet
existingData <- read_excel("file_test2.xlsx", sheet="Sheet1")

# remove first 19 lines from output (extraneous)
outputData <- outputData[-(1:18),]
outputData <- as.data.frame(outputData)

# remove last 13 lines from output (extraneous)
outputData <- outputData[-((nrow(outputData)-12):nrow(outputData)), ]
outputData <- as.data.frame(outputData)

# # debugging
# cat("number of rows: \n")
# nrow(outputData)
# cat("data type of modified data: \n")
# str(outputData)
# cat("truncated data: \n")
# print(outputData)


cat(outputData[[1]], sep='\n')


existingData <- existingData[,-(1)]
outputData <- as.data.frame(outputData)

# combine existing and current data
combinedData <- cbind(existingData, outputData)

# remove column names
names(outputData) <- NULL

str(combinedData)
print(combinedData)

# write to file
write.xlsx(combinedData, "file_test2.xlsx", sheetName="Sheet1")



