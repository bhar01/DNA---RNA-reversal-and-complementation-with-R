curr = is.character()
temprna = is.character()
revseq = is.character()
comprna = is.character()
revcompseq = is.character()

#DNA complements
#Adenine -> Uracil
#Cytosine <-> Guanine
#Thymine -> Adenine

temprna = "ATUUUUUGCCGCATTAXXCGA"
revseq = ' '
for (i in nchar(temprna):1)
{
  curr <- substr(temprna,i,i)
  revseq <- paste(revseq,curr,sep = "")
}
print(revseq)
print(temprna)

comprna = ' '
for (i in nchar(temprna):1){
  curr <- substr(temprna,i,i)
  if(curr == "A"){
    comprna <- paste(comprna,"U",sep = "")
  }
  else if(curr == "C"){
    comprna <- paste(comprna,"G",sep = "")
  }
  else if(curr == "G"){
    comprna <- paste(comprna,"C",sep = "")
  }
  else if(curr == "T"){
    comprna <- paste(comprna,"A",sep = "")
  }
  else{
    comprna <- paste(comprna,"?",sep = "")
    print(paste("Base unidentified at: ", i))
    
  }}
print(comprna)

revcompseq = ' '
for (i in nchar(comprna):1)
{
  curr <- substr(comprna,i,i)
  revcompseq <- paste(revcompseq,curr,sep = "")
}
print(comprna)
print(revcompseq)