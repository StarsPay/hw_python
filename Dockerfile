# Use a imagem base do Python
FROM python:3.9-slim

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos para o diretório de trabalho
COPY app.py /app

# Instale as dependências do Flask
RUN pip install Flask

# Exponha a porta que o Flask irá rodar
EXPOSE 8080

# Defina o comando padrão para iniciar o servidor Flask
CMD ["python", "app.py"]