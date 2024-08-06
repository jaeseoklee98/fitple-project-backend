# 베이스 이미지 설정: Java 17 JDK
FROM openjdk:17-jdk-slim

# 작업 디렉토리 설정
WORKDIR /app

# 호스트 머신의 JAR 파일을 Docker 이미지로 복사
COPY build/libs/*.jar app.jar

# 컨테이너가 시작될 때 실행할 명령어 설정
CMD ["java", "-jar", "app.jar"]
