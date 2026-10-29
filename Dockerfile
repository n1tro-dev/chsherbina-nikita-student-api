FROM gradle:8.5-jdk17 AS builder
WORKDIR /app
COPY . .

RUN gradle assemble --no-daemon

FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=builder /app/build/libs/app.jar app.jar
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "app.jar" ]