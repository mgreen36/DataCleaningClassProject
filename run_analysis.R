
library(dplyr)
setwd("test")
file <- "X_test.txt"
X_test <- read.table(file,sep = "", header= F, na.strings = "", stringsAsFactors = F)
file <- "y_test.txt"
y_test <- read.table(file,sep = "", header= F, na.strings = "", stringsAsFactors = F)
file <- "subject_test.txt"
subject_test <- read.table(file,sep = "", header= F, na.strings = "", stringsAsFactors = F)



setwd("../train")
file <- "X_train.txt"
X_train <- read.table(file,sep = "", header= F, na.strings = "", stringsAsFactors = F)
file <- "y_train.txt"
y_train <- read.table(file,sep = "", header= F, na.strings = "", stringsAsFactors = F)
file <- "subject_train.txt"
subject_train <- read.table(file,sep = "", header= F, na.strings = "", stringsAsFactors = F)

mergedX <- rbind(X_test,X_train)



setwd("..")
file <- "features.txt"
cols <- read.table(file,sep = "", header= F, na.strings = "", stringsAsFactors = F)
col_list <- cols[,2]
colnames(mergedX) <- col_list

file <- "activity_labels.txt"
activities <- read.table(file,sep = "", header= F, na.strings = "", stringsAsFactors = F)


my <- rbind(y_test,y_train)


colnames(my) <- "Activity"
my$Activity <- factor(my$Activity)
levels(my$Activity) <- activities$V2

mergedX <- mergedX[,grepl('mean()|std()',names(mergedX),perl=TRUE)]

mergedX[,"Activity"] <- my[,"Activity"]


msubject <- rbind(subject_test,subject_train)
colnames(msubject) <- "Subject"

mergedSaved = data.frame(mergedX)

mergedX[,"Subject"] <- msubject[,"Subject"]

options(dplyr.width = Inf)
summaryData <- mergedX %>% group_by(Activity,Subject) %>% summarise_each(funs(mean))
 


