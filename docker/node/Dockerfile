FROM node:18.17.0-alpine

# Establecer el directorio de trabajo
WORKDIR /usr/src/app

# Instalar herramientas necesarias
RUN apk add --no-cache \
    bash \
    curl \
    yarn \
    postgresql-client \
    git \
    python3 \
    gdal

# Copiar archivos de dependencias
COPY package*.json ./

# Instalar todas las dependencias del proyecto localmente en node_modules dentro del contenedor
RUN npm install

# Copiar todo el código fuente
COPY . .

# Exponer el puerto de la aplicación
EXPOSE 3000

# Comando por defecto al iniciar el contenedor
CMD ["npm", "start"]
