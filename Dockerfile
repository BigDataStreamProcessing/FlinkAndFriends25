# Użyj istniejącego obrazu Apache Flink jako podstawy
FROM flink:2.0.0-scala_2.12

# Ustaw zmienną środowiskową TERM
ENV TERM=xterm-256color

# Instaluj potrzebne narzędzia 
RUN apt-get update && apt-get install -y bash nano

# Pobieramy pliki .jar i umieszczamy je w katalogu /opt/flink/lib
RUN wget -P /opt/flink/lib \
    https://repo1.maven.org/maven2/org/apache/flink/flink-sql-connector-kafka/3.4.0-1.20/flink-sql-connector-kafka-3.4.0-1.20.jar  \
    https://github.com/knaufk/flink-faker/releases/download/v0.5.3/flink-faker-0.5.3.jar \
    https://repo1.maven.org/maven2/org/apache/flink/flink-connector-jdbc/3.3.0-1.20/flink-connector-jdbc-3.3.0-1.20.jar \
    https://repo1.maven.org/maven2/org/apache/flink/flink-connector-kafka/3.4.0-1.20/flink-connector-kafka-3.4.0-1.20.jar \
    https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/9.3.0/mysql-connector-j-9.3.0.jar \
    https://repo1.maven.org/maven2/com/google/code/gson/gson/2.13.1/gson-2.13.1.jar \
    https://repo1.maven.org/maven2/org/apache/kafka/kafka-clients/4.0.0/kafka-clients-4.0.0.jar
