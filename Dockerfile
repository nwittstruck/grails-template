FROM mozart/grails:3
MAINTAINER Manuel Ortiz Bey <ortiz.manuel@mozartanalytics.com>

# Copy App files
COPY . /app

# Run Grails dependency-report command to pre-download dependencies but not 
# create unnecessary build files or artifacts.
RUN grails dependency-report

EXPOSE 8080
ENV CATALINA_OPTS "-Dgrails.server.host=0.0.0.0"

# Set Default Behavior
ENTRYPOINT ["grails"]
CMD ["run"]

