# scripts/02_criar_matriz

# Carrega pacotes
library(tidyverse)

# Lê os dados novamente (ou você pode carregar os objetos salvos de outro script)
plantas1 <- read_csv("../dados/plantas_morfologicas_1.csv")
plantas2 <- read_csv("../dados/plantas_morfologicas_2.csv")
deutero   <- read_csv("../dados/deuterostomios.csv")

# Converte os dataframes em matrizes binárias com os grupos como nomes de linha
matriz_plantas1 <- plantas1 %>% column_to_rownames("Grupo") %>% as.matrix()
matriz_plantas2 <- plantas2 %>% column_to_rownames("Grupo") %>% as.matrix()
matriz_deutero  <- deutero  %>% column_to_rownames("Grupo") %>% as.matrix()

# Visualiza as matrizes no console
print("Matriz de Plantas 1:")
print(matriz_plantas1)

print("Matriz de Plantas 2:")
print(matriz_plantas2)

print("Matriz de Deuterostômios:")
print(matriz_deutero)
