# Використання офіційного образу OpenJDK
FROM openjdk:17-jdk-slim

# Встановлення робочої директорії всередині контейнера
WORKDIR /app

# Копіюємо JAR-файл у контейнер
COPY target/rest-test-0.0.1-SNAPSHOT.jar app.jar

# Вказуємо команду запуску
ENTRYPOINT ["java", "-jar", "app.jar"]

EXPOSE 8081