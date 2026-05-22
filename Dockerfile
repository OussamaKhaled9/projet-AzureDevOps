FROM eclipse-temurin:8-jre

WORKDIR /app

COPY target/gestion-signalement.jar /app/gestion-signalement.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/gestion-signalement.jar"]