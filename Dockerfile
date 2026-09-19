# Usa a imagem oficial do Tomcat
FROM tomcat:10-jdk17-openjdk-slim

# Remove as aplicações padrão do Tomcat (opcional, para limpar o servidor)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia o seu arquivo .war para dentro da pasta de deploys do Tomcat
# Se quiser que ele seja a aplicação principal (rodando direto na barra '/'), renomeie para ROOT.war
COPY site.war /usr/local/tomcat/webapps/ROOT.war

# Expõe a porta padrão do Tomcat
EXPOSE 8080

# Inicia o servidor Tomcat
CMD ["catalina.sh", "run"]
