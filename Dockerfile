FROM eclipse-temurin:8-jre

WORKDIR /app

# Copy the exact JAR file built by Maven
COPY target/gestion-signalement.jar /app/gestion-signalement.jar

EXPOSE 8080

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/gestion-signalement.jar"]