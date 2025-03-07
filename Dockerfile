FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-a01068505
COPY /target/*.jar oci-microservice-a01068505.jar
COPY /src/main/resources/Wallet_ociDatabase /oci-microservice-a01068505/Wallet_ociDatabase
ENV TNS_ADMIN=/oci-microservice-a01068505/Wallet_ociDatabase
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-a01068505.jar" ]