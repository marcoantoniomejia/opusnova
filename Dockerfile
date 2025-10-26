# Etapa 1: Utilizar una imagen base ligera de Nginx
# Nginx es un servidor web de alto rendimiento ideal para servir contenido estático.
# La etiqueta 'alpine' se refiere a una versión muy pequeña, lo que hace que tu contenedor sea más ligero.
FROM nginx:alpine

# Copiar el archivo de configuración personalizado de Nginx.
# Esto sobreescribe la configuración por defecto y le indica a Nginx
# que use 404.html para las páginas no encontradas.
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Establecer el directorio de trabajo dentro del contenedor.
# Esta es la carpeta por defecto desde donde Nginx sirve los archivos.
WORKDIR /usr/share/nginx/html

# Copiar todos los archivos de tu proyecto (HTML, CSS, JS, images) al directorio de trabajo del contenedor.
# El primer '.' se refiere a la carpeta actual de tu proyecto (donde está el Dockerfile).
# El segundo '.' se refiere al directorio de trabajo actual dentro del contenedor (/usr/share/nginx/html).
COPY . .

# Exponer el puerto 80, que es el puerto por defecto en el que Nginx escucha las peticiones HTTP.
EXPOSE 8080

# El comando para iniciar Nginx ya está incluido en la imagen base, por lo que no es necesario añadir un CMD.