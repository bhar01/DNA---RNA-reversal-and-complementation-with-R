curr = is.character()
tempdna = is.character()
revseq = is.character()
compdna = is.character()
revcompseq = is.character()

#DNA complements
#Adenine - Thymine
#Cytosine - Guanine

tempdna = "ATGCCGCATTAXXCGA"
revseq = ' '
for (i in nchar(tempdna):1)
  {
  curr <- substr(tempdna,i,i)
  revseq <- paste(revseq,curr,sep = "")
}
print(revseq)
print(tempdna)

compdna = ' '
for (i in nchar(tempdna):1){
  curr <- substr(tempdna,i,i)
  if(curr == "A"){
    compdna <- paste(compdna,"T",sep = "")
  }
  else if(curr == "C"){
    compdna <- paste(compdna,"G",sep = "")
  }
  else if(curr == "G"){
    compdna <- paste(compdna,"C",sep = "")
  }
  else if(curr == "T"){
    compdna <- paste(compdna,"A",sep = "")
  }
  else{
    compdna <- paste(compdna,"?",sep = "")
    print(paste("Base unidentified at: ", i))
    
  }}
  print(compdna)
  
  revcompseq = ' '
  for (i in nchar(compdna):1)
  {
    curr <- substr(compdna,i,i)
    revcompseq <- paste(revcompseq,curr,sep = "")
  }
  print(compdna)
  print(revcompseq)