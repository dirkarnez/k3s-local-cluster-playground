@echo off
@REM if not exist "dist" (
@REM     md dist
@REM )

docker compose up --build 
@REM && docker compose down
pause