FROM nginx:latest
COPY ./bin /usr/share/nginx/html
COPY ./ssl/localhost-cert.pem /etc/ssl/certs
COPY ./ssl/localhost-cert-key.pem /etc/ssl/private
COPY ./ssl/localhost-cert-key.pass /etc/keys/localhost-cert-key.pass
COPY default.conf /etc/nginx/conf.d/
EXPOSE 443