# Dockerfile
FROM node:20-alpine   # Cambia según tu stack

WORKDIR /usr/src/app

# Copia package.json y package-lock.json
COPY package*.json ./

# Instala dependencias
RUN npm install --production

# Copia el resto del código
COPY . .

# Expone el puerto que usa la app (opcional)
EXPOSE 3000

# Usa variables de entorno del docker-compose
CMD ["node", "index.js"]
