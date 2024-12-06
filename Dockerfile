FROM nginx:1.27-alpine

COPY /nginx /etc/nginx/
COPY dist/ /usr/share/nginx/html
COPY entrypoint.sh /docker-entrypoint.d/entrypoint.sh

RUN chmod +x /docker-entrypoint.d/entrypoint.sh
# CMD : pas besoin de la commande pour démarrer nginx car image nginx contient la commande pour démarrer