# Cladogramas baseados em Sinapomorfias

Este projeto tem como objetivo construir e visualizar cladogramas com base em sinapomorfias morfológicas e moleculares de dois grandes grupos:

- Plantas (3 cladogramas)
- Deuterostômios (1 cladograma)

Os dados foram extraídos de tabelas com presença/ausência de características evolutivas. A análise foi realizada com a linguagem R.

---

## 🧬 Estrutura do Projeto

📁 cladogramas-sinapomorfias-dados  
├── 📂 dados → arquivos .csv com os dados das sinapomorfias  
├── 📂 script → scripts em R usados para análise e visualização  
├── 📂 resultados → imagens dos cladogramas gerados  
└── README.md → este arquivo

---

## 🔧 Tecnologias Utilizadas

- Linguagem: R
- Pacotes: tidyverse, ape

---

## 📈 Scripts

1. `01_ler_dados.R`  
   Lê os arquivos .csv com os dados morfológicos e moleculares.

2. `02_criar_matriz.R`  
   Converte os dados em matrizes binárias (presença = 1, ausência = 0).

3. `03_gerar_cladogramas.R`  
   Gera os cladogramas usando UPGMA e salva como imagens .png.

---

## 🌿 Cladogramas Gerados

- cladograma_plantas_1: baseado em sinapomorfias morfológicas gerais
- cladograma_plantas_2: baseado em características florais e foliares
- cladograma_plantas_3: baseado em genes (moleculares)
- cladograma_deuterostomios: baseado em sinapomorfias anatômicas e genéticas

Todos os arquivos estão na pasta resultados/.

---

## 👩‍💻 Autoria

Projeto desenvolvido por [ajessica6](https://github.com/ajessica6) com fins educacionais e exploratórios sobre cladística e evolução biológica.

---

## 📜 Licença

Este projeto está sob a licença MIT. Sinta-se à vontade para usar, modificar e compartilhar com os devidos créditos.
