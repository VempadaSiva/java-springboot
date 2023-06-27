
FROM oraclelinux:8.4
LABEL name=siva
RUN dnf install java-1.8.0-openjdk.x86_64  java-1.8.0-openjdk-devel.x86_64  maven git -y 
RUN mkdir /siva-java
WORKDIR /siva-java
RUN git clone https://github.com/VempadaSiva/java-springboot.git
WORKDIR siva-springboot
# now running maven to create .war file 
RUN mvn clean package
