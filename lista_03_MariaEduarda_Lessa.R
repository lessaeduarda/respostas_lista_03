# Lista 3 
# Disciplina: Análise de Dados
# Professor: Davi Moreira
# Aluna: Maria Eduarda R. N. Lessa

# Questão 1:

# Link do repositório: 

# Questão 2:

x <- 5
y <- 7
z <- x + y
z * 10144642425
# Resultado: 121735709100

# Questão 3:
data("mtcars")
?mtcars
# 3.1 - Descrição dos tipos de variáveis: 11 variáveis numéricas sobre motores de 32 carros. São elas: 
# Milhas por galão (mpg)
# Número de cilindros (cyl)
# Deslocamento (disp)
# Potência Bruta (em cavalos) (hp)
# Proporção do eixo traseiro (drat)
# Peso (wt)
# tempo de 1/4 milhas (qsec)
# Motor (vs) - assume valores 0 (se v-shaped) ou 1 (se straight)
# Câmbio (am) - assume valores 0 (se automático) ou 1 (se manual)
# Número de avanço de marchas (gear)
# Número de carburadores (carb)

# 3.2 - O número de dimensões da base:
dim(mtcars)
# 32 x 11 
# 32 linhas por 11 colunas, ou 11 observações sobre 32 carros.

# 3.3 - Impressão da terceira coluna da base:
mtcars [ , 3]

[1] 160.0 160.0 108.0 258.0 360.0 225.0 360.0 146.7 140.8 167.6 167.6 275.8 275.8 275.8 472.0 460.0 440.0  78.7  75.7  71.1 120.1 318.0 304.0 350.0 400.0  79.0
[27] 120.3  95.1 351.0 145.0 301.0 121.0

# 3.4 - Impressão da segunda linha da base:
mtcars [2 , ]
mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4 Wag  21   6  160 110  3.9 2.875 17.02  0  1    4    4

# 3.5 - O quarto elemento presente na variável “cyl”:
mtcars[4,2]
# Resultado: 6

# 3.6 - Resumo descritivo da base:
summary(mtcars)

mpg             cyl             disp             hp             drat             wt             qsec             vs               am              gear      
Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0   Min.   :2.760   Min.   :1.513   Min.   :14.50   Min.   :0.0000   Min.   :0.0000   Min.   :3.000  
1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5   1st Qu.:3.080   1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:3.000  
Median :19.20   Median :6.000   Median :196.3   Median :123.0   Median :3.695   Median :3.325   Median :17.71   Median :0.0000   Median :0.0000   Median :4.000  
Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7   Mean   :3.597   Mean   :3.217   Mean   :17.85   Mean   :0.4375   Mean   :0.4062   Mean   :3.688  
3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0   3rd Qu.:3.920   3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000   3rd Qu.:1.0000   3rd Qu.:4.000  
Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0   Max.   :4.930   Max.   :5.424   Max.   :22.90   Max.   :1.0000   Max.   :1.0000   Max.   :5.000  
carb      
Min.   :1.000  
1st Qu.:2.000  
Median :2.000  
Mean   :2.812  
3rd Qu.:4.000  
Max.   :8.000  

# Questão 4:

install.packages("ffbase", dependencies = TRUE) 
require(ffbase)
setwd("C:/Users/Duda/Desktop/PPGCP/Análise de Dados")
turmas <- read.csv2.ffdf(file = "TURMAS.csv", sep = "|", first.rows = 100000)
turmas <- as.data.frame(turmas)
turmas_pe <- subset(turmas, turmas$CO_UF == "26")
save(turmas_pe, file ="turmas_pe.RData")

# Questão 5:

setwd("C:/Users/Duda/Desktop/PPGCP/Análise de Dados")
load("turmas_pe.RData")
mean(turmas_pe$NU_MATRICULAS)
# Resultado: 23,07089

# Questão 6:

# 6.1 - O número de docentes que não declararam cor ou raça:
require(ffbase)
setwd("C:/Users/Duda/Desktop/PPGCP/Análise de Dados")
docentes_ne <-read.csv2.ffdf(file = "DOCENTES_NORDESTE.csv", sep = "|", first.rows=100000)
docentes_ne <- as.data.frame(docentes_ne)
docentes_naoDeclCorRaça <- subset(docentes_ne, docentes_ne$TP_COR_RACA == "0")  
# Resultado: 1.240.352 

# 6.2 - O percentual de docentes do Estado de Pernambuco que se declararam pretos ou pardos no Censo Escolar de 2016:
docentes_Pretos <- subset(docentes_ne, docentes_ne$TP_COR_RACA == "2")
docentes_Pardos <- subset(docentes_ne, docentes_ne$TP_COR_RACA == "3")
119972 + 968682
# = 1.088.654
1088654 / 2930354
# Resultado: 37,15094%
