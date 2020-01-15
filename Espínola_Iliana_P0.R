## iliana espínola ##
## primer tarea genomica funcional ##

# 1. A partir de las siguientes secuencias concatenadas de RNA que te envío como archivo 
# adjunto en formato fasta encuentra (usando librerías especializadas) la secuencia 
# correspondiente de aminoácidos.

library(Biostrings)

secRNA <- readRNAStringSet("first.fasta")
translate(secRNA)

# 2. Escoge dos problemas de la plataforma Rosalind de entre los siguientes: Counting 
# DNA Nucleotides, Complementing a Strand of DNA, Computing GC Content, Calculating 
# Protein Mass. Escribe un programa que resuelva los dos problemas que seleccionaste, 
# en ambos, casos, debes buscar una solución sin usar librerías especializadas y otra 
# con librerías especializadas.

## COUNTING DNA NUCLEOTIDES ##

# SIN LIBRERIAS #
nucleotidos <- ("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")

total_A <- 0
total_G <- 0
total_C <- 0
total_T <- 0

for(i in 1:length(nucleotidos)) {
    if(i == "A") {total_A <- total_A +1}
    { if(i == "G") {total_G <- total_G +1}}
    { if(i == "C") {total_C <- total_C +1}}
  {if(i == "T") {total_T <- total_T +1}}
  }

print(total_A)
print(total_C)
print(total_G)
print(total_T)

# con librerias #
secDNA <- DNAString("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")

alphabetFrequency(secDNA, baseOnly=TRUE)

## COMPUTING GC CONTENT ##

Rosalind_6404 <- "CCTGCGGAAGATCGGCACTAGAATAGCCAGAACCGTTTCTCTGAGGCTTCCGGCCTTCCC
TCCCACTAATAATTCTGAGG"
Rosalind_5959 <- "CCATCGGTAGCGCATCCTTAGTCCAATTAAGTCCCTATCCAGGCGCTCCGCCGAAGGTCT
ATATCCATTTGTCAGCAGACACGC"
Rosalind_0808 <- "CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGAC
TGGGAACCTGCGGGCAGTAGGTGGAAT"

# sin librerias #
GC1 <- letterFrequency(Rosalind_6404, "CG", as.prob =TRUE)
print(paste("la frecuencia de la primera secuencia es", GC1))

# con librerias #

Rosalind_6404 <- DNAString("CCTGCGGAAGATCGGCACTAGAATAGCCAGAACCGTTTCTCTGAGGCTTCCGGCCTTCCCTCCCACTAATAATTCTGAGG")
Rosalind_5959 <- DNAString("CCATCGGTAGCGCATCCTTAGTCCAATTAAGTCCCTATCCAGGCGCTCCGCCGAAGGTCTATATCCATTTGTCAGCAGACACGC")
Rosalind_0808 <- DNAString("CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGACTGGGAACCTGCGGGCAGTAGGTGGAAT")

GC5 <- letterFrequency(Rosalind_6404, "GC", as.prob = TRUE)
GC5

GC6 <- letterFrequency(Rosalind_0808, "GC", as.prob = TRUE)
GC6

GC7 <- letterFrequency(Rosalind_5959, "GC", as.prob = TRUE)
GC7
