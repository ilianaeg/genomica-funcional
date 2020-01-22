## iliana espinola ##
## primer tarea genomica funcional ##

# 1. A partir de las siguientes secuencias concatenadas de RNA que te env?o como archivo 
# adjunto en formato fasta encuentra (usando librer?as especializadas) la secuencia 
# correspondiente de amino?cidos.

library(Biostrings)

secRNA <- readRNAStringSet("first.fasta")
translate(secRNA)

# 2. Escoge dos problemas de la plataforma Rosalind de entre los siguientes: Counting 
# DNA Nucleotides, Complementing a Strand of DNA, Computing GC Content, Calculating 
# Protein Mass. Escribe un programa que resuelva los dos problemas que seleccionaste, 
# en ambos, casos, debes buscar una soluci?n sin usar librer?as especializadas y otra 
# con librer?as especializadas.

## COUNTING DNA NUCLEOTIDES ##

# SIN LIBRERIAS especializadas #
nucleotidos <- ("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")

a <- grepRaw("A", nucleotidos, all = TRUE, fixed = TRUE)
length(a)

g <- grepRaw("G", nucleotidos, all = TRUE, fixed = TRUE)
length(g)

t <- grepRaw("T", nucleotidos, all = TRUE, fixed = TRUE)
length(t)

c <- grepRaw("C", nucleotidos, all = TRUE, fixed = TRUE)
length(c)

# con librerias #
secDNA <- DNAString("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")

alphabetFrequency(secDNA, baseOnly=TRUE)

## COMPUTING GC CONTENT ##

# sin librerias #

# con librerias #
secss <- readDNAStringSet("secdna.txt", format="fasta")

gc <- letterFrequency(secss, c("GC"), as.prob=TRUE)

index = which(gc == max(gc))
name = secss@ranges@NAMES[index]  

print(paste("la secuencia", name, "tiene el contenido de GC más alto con", (max(gc)*100)))
