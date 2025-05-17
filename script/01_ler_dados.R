# scripts/01_ler_dados.R

# Carrega os pacotes necessários
library(tidyverse)

# Define o caminho dos arquivos CSV
caminho_dados <- "../dados"

# Lê os dados de plantas (três arquivos diferentes)
plantas1 <- read_csv(file.path(caminho_dados, "plantas_morfologicas_1.csv"))
plantas2 <- read_csv(file.path(caminho_dados, "plantas_morfologicas_2.csv"))
plantas3 <- read_csv(file.path(caminho_dados, "plantas_moleculares.csv"))

# Lê os dados de deuterostômios
deutero <- read_csv(file.path(caminho_dados, "deuterostomios.csv"))

# Exibe uma prévia dos dados
print("Plantass 1 (morfológicas gerais):")
print(plantas1)

print("Plantas 2 (florais e foliares):")
print(plantas2)

print("Plantas 3 (moleculares):")
print(plantas3)

print("Deuterostômios:")
print(deutero)
