# Lista 3 
# Professor: Davi Moreira
# Disciplina: Análise de Dados
# Aluna: Maria Eduarda R. N. Lessa

### Questão 1:

# Link do repositório: https://github.com/lessaeduarda/respostas_lista_03

### Questão 2:

# Atribuir valor a x:
x <- 5

# Atribuir valor a y:
y <- 7

# Definir objeto z como o resultado da soma de x + y:
z <- x + y

# Multiplicar pelo CPF:
z * 10144642425
# Resultado: 121735709100

### Questão 3:

# Checar informações da base:
data("mtcars")
?mtcars
## 3.1 - Descrição dos tipos de variáveis: 11 variáveis numéricas sobre motores de 32 carros. São elas: 
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

## 3.2 - O número de dimensões da base:

# Checar dimensões da base mtcars:
dim(mtcars)
# [1] 32 11
# 32 linhas por 11 colunas, ou 11 observações sobre 32 carros.

## 3.3 - Impressão da terceira coluna da base:
mtcars [ , 3]

# [1] 160.0 160.0 108.0 258.0 360.0 225.0 360.0 146.7 140.8 167.6 167.6 275.8 275.8 275.8 472.0 460.0 440.0  78.7  75.7  71.1 120.1 318.0 304.0 350.0 400.0  79.0
# [27] 120.3  95.1 351.0 145.0 301.0 121.0

## 3.4 - Impressão da segunda linha da base:
mtcars [2 , ]
#               mpg cyl disp  hp drat    wt  qsec vs am gear carb
# Mazda RX4 Wag  21   6  160 110  3.9 2.875 17.02  0  1    4    4

## 3.5 - O quarto elemento presente na variável "cyl":
mtcars[4,2]
# Resultado: 6

## 3.6 - Resumo descritivo da base:
summary(mtcars)

# mpg             cyl             disp             hp             drat             wt             qsec             vs               am              gear      
# Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0   Min.   :2.760   Min.   :1.513   Min.   :14.50   Min.   :0.0000   Min.   :0.0000   Min.   :3.000  
# 1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5   1st Qu.:3.080   1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:3.000  
# Median :19.20   Median :6.000   Median :196.3   Median :123.0   Median :3.695   Median :3.325   Median :17.71   Median :0.0000   Median :0.0000   Median :4.000  
# Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7   Mean   :3.597   Mean   :3.217   Mean   :17.85   Mean   :0.4375   Mean   :0.4062   Mean   :3.688  
# 3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0   3rd Qu.:3.920   3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000   3rd Qu.:1.0000   3rd Qu.:4.000  
# Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0   Max.   :4.930   Max.   :5.424   Max.   :22.90   Max.   :1.0000   Max.   :1.0000   Max.   :5.000  
# carb      
# Min.   :1.000  
# 1st Qu.:2.000  
# Median :2.000  
# Mean   :2.812  
# 3rd Qu.:4.000  
# Max.   :8.000  

### Questão 4:

# Instalar pacote ffbase:
install.packages("ffbase", dependencies = TRUE)

# Requerer pacote:
require(ffbase) 

# Definir diretório:
setwd("C:/Users/Duda/Desktop/PPGCP/Análise de Dados") 

# Abrir base de dados com o ffbase e atribuí-la ao objeto "turmas":
turmas <- read.csv2.ffdf(file = "TURMAS.csv", sep = "|", first.rows = 100000)

# Transformar "turmas" em data.frame:
turmas <- as.data.frame(turmas) 

# Filtrar turmas de Pernambuco, definir como objeto "turmas_pe":
turmas_pe <- subset(turmas, turmas$CO_UF == "26")

# Salvar a nova base de dados ("turmas_pe") em .RData:
save(turmas_pe, file ="turmas_pe.RData") 

### Questão 5:

# Definir diretório:
setwd("C:/Users/Duda/Desktop/PPGCP/Análise de Dados")

# Carregar base de dados "turmas_pe":
load("turmas_pe.RData") 

# Calcular a média do número de matrícula por turmas:
mean(turmas_pe$NU_MATRICULAS) 
# Resultado: 23,07089

### Questão 6:

## 6.1 - O percentual de docentes de Pernambuco que não declararam cor ou raça:

# Requerer pacote já instalado:
require(ffbase) 

# Definir diretório:
setwd("C:/Users/Duda/Desktop/PPGCP/Análise de Dados")

# Abrir base de dados com o ffbase e atribuí-la ao objeto "docentes_ne":
docentes_ne <-read.csv2.ffdf(file = "DOCENTES_NORDESTE.csv", sep = "|", first.rows=100000)

# Transformar "docentes_ne" em data.frame:
docentes_ne <- as.data.frame(docentes_ne) 

# Filtar docentes de Pernambuco, definir como objeto "docentes_ne":
docentes_pe <- subset(docentes_ne, docentes_ne$CO_UF == "26") 

# Checar dimensões da nova base de dados ("docentes_ne"):
dim(docentes_pe)
# [1] 412663    132
# Total de docentes do Estado de Pernambuco: 412.663

# Filtar docentes de Pernambuco que não declararam cor ou raça, definir como objeto "docentes_CorRaça0":
docentes_CorRaça0 <- subset(docentes_pe, docentes_pe$TP_COR_RACA == "0")

# Checar dimensões da nova base ("docentes_CorRaça0"):
dim(docentes_CorRaça0)
# [1] 181573    132
# Total de docentes que não declararam cor ou raça: 181.573

# Calcular porcentagem de docentes de Pernambuco que não delcararam cor ou raça (total docentes_CorRaça0 / total docentes_pe):
181573 / 412663
# [1] 0.4400031
# Resultado = 44,00031%

## 6.2 - O percentual de docentes do Estado de Pernambuco que se declararam pretos ou pardos no Censo Escolar de 2016:

# Filtar docentes de Pernambuco que se declararam pretos (2), definir como objeto "docentes_CorRaça2":
docentes_CorRaça2 <- subset(docentes_pe, docentes_pe$TP_COR_RACA == "2")

# Checar dimensões da base ("docentes_CorRaça2"):
dim(docentes_CorRaça2)
# [1] 14710   132
# Docentes de Pernambuco que se declararam pretos (cor/raça 2, segundo classificação do IBGE) = 14.710

# Filtar docentes de Pernambuco que se declararam pardos (3), definir como objeto "docentes_CorRaça3":
docentes_CorRaça3 <- subset(docentes_pe, docentes_pe$TP_COR_RACA == "3")

# Checar dimensões da base ("docentes_CorRaça3"):
dim(docentes_CorRaça3)
# [1] 114718    132
# Docentes de Pernambuco que se declararam pardos (cor/raça 3, segundo classificação do IBGE) = 114.718

# Somar número de docentes que se declaram pretos com o número dos que se declararam pardos (docentes_CorRaça2 + docentes_CorRaça3) 
14710 + 114718
# = 129.428

# Calcular porcentagem de docentes de Pernambuco que se declararam pretos ou pardos (docentes_CorRaça2 + docentes_CorRaça3 / docentes_pe):
129428 / 412663
# [1] 0.3136409
# Resultado: 31,36409%
