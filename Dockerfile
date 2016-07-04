FROM mozart/grails:3
MAINTAINER Manuel Ortiz Bey <ortiz.manuel@mozartanalytics.com>

# Copy App files
COPY . /app

# Run Grails dependency-report command to pre-download dependencies but not 
# create unnecessary build files or artifacts.
RUN grails dependency-report

# Set Default Behavior
ENTRYPOINT ["grails"]
CMD ["run -Dgrails.server.host=0.0.0.0"]

