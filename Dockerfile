# Imagem base do go pré-existente no docker 
FROM golang:1.21 as build

#Diretório de trabalho na imagem 
WORKDIR /src

# Copiar programa em go para a imagem
COPY *.go /src/main.go

# Build do programa em go. Irá gerar no diretório /bin/fullcycle da imagem
RUN go build -o /bin/fullcycle ./main.go

# Gerando nova imagem a partir de uma imagem mínima chamada 'scratch' existente no próprio docker hub.
# Ver https://hub.docker.com/_/scratch

FROM scratch

# Copiar somente o executável do go a partir da imagem fonte chamada 'build'
COPY --from=build /bin/fullcycle /bin/fullcycle

# Executar o progrmam
CMD ["/bin/fullcycle"]