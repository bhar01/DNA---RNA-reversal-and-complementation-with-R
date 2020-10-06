library(readr)
tempdna = is.character()
temprna = is.character()
curr = is.character()

covid_cdna <- read.delim(file.choose(),header = TRUE)
covidseq <- data.frame(matrix(ncol = 1,nrow = nrow(covid_cdna)))
names(covidseq)[1] <- paste(names(covid_cdna)[1], 'RNA sequence')
write_delim(data.frame(comprna),'covidseq.txt',delim = " ", na= "NA", append = TRUE)

for(j in 1:nrow(covid_cdna)){
  comprna <- ''
  temprna <- covid_cdna[j,]
  for(i in 1:nchar(tempdna)){
    curr <- substr(tempdna,i,i)
    if(curr == "A"){
      comprna <- paste(comprna,"U",sep = "")
    }else if(curr == "C"){
      comprna <- paste(comprna,"G",sep = "")
    }else if(curr == "G"){
      comprna <- paste(comprna,"C",sep = "")
    }else if(curr == "T"){
      comprna <- paste(comprna,"A",sep = "")
    }else{
      comprna <- paste(compdna,"?",sep = "")
      print(paste("Base unidentified at: ", i))
    }
    print(comprna)
    }
 
covidseq[j,] <- comprna
write_delim(data.frame(comprna),'covidseq.txt',delim = " ", na= "NA", append = TRUE)
}
