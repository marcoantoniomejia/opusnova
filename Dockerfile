# ---- Etapa 1: Build (si fuera necesario) ----
# En un proyecto estático simple, esta etapa podría usarse para compilar SCSS, minificar JS/CSS, etc.
# Por ahora, la mantenemos como placeholder para futuras necesidades.
# FROM node:18-alpine as builder
# WORKDIR /app
# COPY . .
# RUN npm install && npm run build

# ---- Etapa 2: Producción ----
# Usar una imagen base ligera de Nginx para servir los archivos estáticos.
FROM nginx:stable-alpine

# Copiar los archivos estáticos del sitio web al directorio por defecto de Nginx.
# Si se usara la etapa de build: COPY --from=builder /app/dist /usr/share/nginx/html
COPY . /usr/share/nginx/html

# Exponer el puerto 8080, como es estándar en Cloud Run.
EXPOSE 8080