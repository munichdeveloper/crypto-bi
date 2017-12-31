FROM maven
WORKDIR home/
RUN sh -c 'git clone https://github.com/kudoR/crypto-bi.git && cd crypto-bi && mvn clean install'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /home/crypto-bi/target/crypto-bi-1.0.0.jar" ]