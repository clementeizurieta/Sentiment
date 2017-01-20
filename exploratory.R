# Chpt.2 Jockers

text.v <- scan("./JFRM/Hall-2008-Journal_of_Flood_Risk_Management.txt", what="character", sep='\n')
content.v <- paste(text.v, collapse="")
content.converted.v <- tolower(str_trim(content.v))   #str_trim requires the stringr package
content.words.l <- strsplit(content.converted.v,"\\W")
content.words.v <- unlist(content.words.l)
not.blanks.v <- which(content.words.v != "")
content.words.v <- content.words.v[not.blanks.v]
content.words.freqs.t <- table(content.words.v)
sorted.content.words.freqs.t <- sort(content.words.freqs.t, decreasing=TRUE)
plot(sorted.content.words.freqs.t)
