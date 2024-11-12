# Dockerfile a root mappában
FROM quay.io/drsylent/cubix/block2/homework-base:java21

# Alkalmazás fájlok és konfigurációk másolása a konténerbe
ARG APP_NAME
COPY ${APP_NAME}/target/*.jar /app/app.jar

# Környezeti változók beállítása
ENV CUBIX_HOMEWORK="Hatvani Sándor" \
    APP_DEFAULT_MESSAGE=""

# Saját címke hozzáadása
LABEL cubix.homework.owner="Hatvani Sándor"

# Alkalmazás futtatása
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
