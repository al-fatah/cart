# Use OpenJDK base image
FROM openjdk:17-jdk-slim

# Create working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/cart-app-1.0-SNAPSHOT.jar cart-app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "cart-app.jar"]

