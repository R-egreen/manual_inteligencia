---
title: "Manual equipe Inteligência re.green"
author: "construído pela equipe"
date: ""
documentclass: book
site: bookdown::bookdown_site
output: bookdown::gitbook
github-repo: R-egreen/manual_inteligencia
url: 'http\://R-egreen.github.io/manual_inteligencia'
---

# Introdução

Este é o manual da equipe de inteligência. Aqui definimos o que acreditamos e 
aplicamos em nosso cotidiano de trabalho. 

<!--chapter:end:index.Rmd-->

# A diretoria de inteligência

## Mandatos

1. Garantir que a inovação e agilidade estão se difundindo na empresa
2. Melhorar o fluxo de informações nos níveis Estratégico e Operacional

Nós aplicamos e difundimos o modo de pensar ágil e ferramentas quantitativas, para sermos mais competitivos, resilientes frente a incertezas, e melhores na tomada de decisão. Nós utilizamos a forma de pensar ágil, modelos científicos, análise de dados e soluções de tecnologia.

## Diversidade

Nos esforçamos para garantir que nossa equipe de esteja atenta a aspectos de diversidade, equidade, inclusão e competência cultural. 

    Enxergamos a riqueza da própria vida na diversidade de opiniões e modos de ser, na multiplicidade de histórias e de escolhas pessoais

Nós valorizamos a diversidade e estamos em constante aprendizado de como lidar com ela e, mais especialmente, aprimorá-la em nossa equipe.


<!--chapter:end:01-intro.Rmd-->

# Convenções de padrão de código, dados e metadados


Este documento fornece convenções de código e metadados recebidos pelo time de Data Analytics da re.green. Para informações adicionais, por favor, consulte [Sara Mortara](mailto:sara.mortara@re.green), [Felipe Bocca](mailto:felipe.bocca@re.green) ou [Nathalia Monalisa](mailto:nathalia.monalisa@re.green).

## Convenções de código

### Geral 

A re.green segue o padrão de estilo de código 
de acordo com [tidyverse](https://style.tidyverse.org). É possível utilizar o pacote [**styler**](https://cran.r-project.org/web/packages/styler/vignettes/introducing_styler.html) para converter ao padrão definido. Seguir o padrão para os seguintes tópicos:

- Disposição do código
    - [Espaçamento](https://style.tidyverse.org/syntax.html#spacing)
    - [Tamanho Máximo de Linha](https://style.tidyverse.org/syntax.html#long-lines)
    - [Organização interna](https://style.tidyverse.org/files.html#internal-structure)
- [Atribuição](https://style.tidyverse.org/syntax.html#assignment)
- [Uso de Aspas](https://style.tidyverse.org/syntax.html#character-vectors)
- [Comentários](https://style.tidyverse.org/syntax.html#comments)
- Convenção de nomes
    - [Nomes de Arquivos](https://style.tidyverse.org/files.html#names)
    - [Nomes de Variáveis](https://style.tidyverse.org/syntax.html#object-names) seguindo snake_case

### Documentação de funções

Para definição de funções, seguir o tópico [Funtions](https://style.tidyverse.org/functions.html) do guia de estilo tidyverse. 

Toda função (incluindo funções auxiliares) deve ser documentada seguindo o padrão [**roxygen2**](https://cran.r-project.org/web/packages/roxygen2/vignettes/roxygen2.html). Ver exemplo no [guia de estilo](https://style.tidyverse.org/documentation.html). Além disso, incluir controle de fluxo e tratamento de exceções utilizando `tryCatch()` para todas as funções (ver tópico [2.4.1](https://style.tidyverse.org/syntax.html#indenting)).



## Repositórios git

### Geral

Cada produto deve ter um repositório no github. Este repositório será parte da organização re.green no github e será dada autorização para inclusão de colaboradores(as) com papel de escrita.

Os repositórios devem ser auto-contidos e sempre que possível usar caminhos relativos para ler e escrever dados. Caso exista dependência de dados que não estão versionados, explicitar.

Acrescentar um README.md explicando o contexto do projeto e especificar quais bibliotecas (nomes do pacote e versão) e dados são necessários ao projeto. Para bibliotecas, deve-se utilizar o pacote [**renv**](https://rstudio.github.io/renv/articles/renv.html) para declaração de dependências e suas respectivas versões.

Independente do fluxo git utilizado, adotar a nomenclatura `main` para o ramo principal e sempre mantê-lo atualizado.

### Conteúdo do repositório

Seguir o conteúdo e estrutura de pastas de acordo com a definição a seguir. 

    .
    ├── README.md # contendo intruções gerais para uso 
    ├── renv.lock*
    ├── data/ # dados de entrada com respectivo arquivo de metadados
    ├── script/ # pasta contendo scripts de exemplo de chamada das funções
    └── functions/ # pasta contendo funções de R documentadas, cada função em um arquivo separado

\* utilizar o pacote **renv** para criar o arquivo renv.lock que irá listar todas as dependências



## Padrão de metadados

### Dados tabulares

Todo dado tabular deve conter um csv de descrição de metadados seguindo o padrão abaixo.

Variável | Descrição | Tipo de dado | Exemplo
--------:|--------:| --------:|--------:
Gênero| Gênero da espécie | caractere | Schinus
Forma de vida | Descrição da forma de vida da espécie | caractere | árvore; epífita 

### Dados espaciais

Os arquivos espaciais, rasters e shapefiles, devem ter um arquivo de texto associado contendo informação de projeção (ESRI), resolução e escala. Todo shapefile deve ser exportado em formato **gpkg**.


## Entrega de dados

Para os conjuntos de dados que não serão versionados, a re.green irá fornecer um link de um [bucket AWS](https://aws.amazon.com/pt/s3/) para upload dos arquivos e seus respectivos metadados. 


<!--chapter:end:02-convencoes.Rmd-->

