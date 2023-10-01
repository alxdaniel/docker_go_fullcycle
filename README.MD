# FullCycleRocks  

Projeto desafio do curso Full Cycle 3.0. Criar um programa em go com um print simples e com uma imagem menor que 2MB.

## Project scaffolding
  - main.go: contém o programa em GO
  - Dockerfile: arquivo de montagem da imagem docker usando multistage para criar uma imagem final reduzida que só contenha o executável gerado sem a sdk go ou artefatos intermediários.

## Build
Para gerar a imagem docker utilizar o comando `docker build -t fullcycle .`

## Docker registry
Imagem disponível em https://hub.docker.com/repository/docker/alexandredalabrida/fullcycle/general

## Run
Para rodar a imagem: `docker run alexandredalabrida/fullcycle:v1.0.0`