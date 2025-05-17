# scripts/03_gerar_cladogramas

# Carrega pacotes necessários
library(tidyverse)
library(ape)

# Lê os dados novamente
plantas1 <- read_csv("../dados/plantas_morfologicas_1.csv") %>% column_to_rownames("Grupo") %>% as.matrix()
plantas2 <- read_csv("../dados/plantas_morfologicas_2.csv") %>% column_to_rownames("Grupo") %>% as.matrix()
plantas3 <- read_csv("../dados/plantas_moleculares.csv")    %>% column_to_rownames("Grupo") %>% as.matrix()
deutero  <- read_csv("../dados/deuterostomios.csv")         %>% column_to_rownames("Grupo") %>% as.matrix()

# Função para gerar cladograma e salvar
gerar_clado <- function(matriz, nome_saida) {
  dist_matrix <- dist(matriz)             # calcula distância
  arvore <- hclust(dist_matrix, method = "average")  # método UPGMA
  plot(as.phylo(arvore), cex = 0.8, main = nome_saida)
  # salva como imagem
  png(filename = paste0("../resultados/", nome_saida, ".png"), width = 800, height = 600)
  plot(as.phylo(arvore), cex = 0.8, main = nome_saida)
  dev.off()
}

# Gera os quatro cladogramas
gerar_clado(plantas1, "cladograma_plantas_1")
gerar_clado(plantas2, "cladograma_plantas_2")
gerar_clado(plantas3, "cladograma_plantas_3")
gerar_clado(deutero,  "cladograma_deuterostomios")
