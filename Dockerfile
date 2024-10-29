FROM httpd:latest
RUN echo "ServerName localhost" >> /usr/local/apache2/conf/httpd.conf
#RUN service apache2 restart
COPY index.html /usr/local/apache2/htdocs/

EXPOSE 80

ENTRYPOINT ["httpd-foreground"]

# The ServerName localhost line is commonly added to avoid warnings or errors about an undefined server name when starting Apache. 
# It defines localhost as the server's name, which is especially useful in Docker containers to simplify hostname configuration.
