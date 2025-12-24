@echo off
setlocal enabledelayedexpansion
REM AIDiary Docker Startup Script for Windows

echo ============================================================
echo AIDiary - Docker Startup
echo ============================================================
echo.

REM Ensure diary.db exists as a file (not directory) for Docker mount
if not exist diary.db (
    echo Creating empty diary.db for first-time setup
    type nul > diary.db
)

echo.
echo Starting AIDiary Docker container...
docker-compose up -d

echo.
echo ============================================================
echo AIDiary is running!
echo ============================================================
echo.
echo   Access at: http://localhost:8000
echo.
echo ============================================================
echo.
echo To stop: docker-compose down
echo To view logs: docker-compose logs -f diaryml
echo.
pause
