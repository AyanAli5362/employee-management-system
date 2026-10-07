@echo off
cd /d "%~dp0backend"
echo Starting Spring Boot backend on http://localhost:8080 ...
call mvnw.cmd spring-boot:run
pause
