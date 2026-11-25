@echo off
title TEERATWIN - Smart Agriculture Digital Twin
echo =================================================================
echo   TEERATWIN - A Digital Twin for Smarter Agriculture
echo   Launching Real-Time Arduino Digital Twin System
echo =================================================================
echo.

cd /d "%~dp0\smart_agriculture_digital_twin"

echo [1/2] Starting Flask Backend & Integrated Arduino Serial Worker (COM3)...
start "TEERATWIN Backend Server" cmd /k "cd backend && python app.py"

timeout /t 3 /nobreak >nul

echo [2/2] Starting TEERATWIN Frontend Dashboard...
start "TEERATWIN Frontend" cmd /k "cd frontend && npm run dev"

timeout /t 2 /nobreak >nul

echo.
echo =================================================================
echo   TEERATWIN System Started Successfully!
echo   Dashboard URL: http://localhost:5173
echo   Backend API:   http://localhost:5000/api/telemetry/FARM-01
echo   Arduino Link:  COM3 @ 9600 baud (Automatic Ingestion)
echo =================================================================
echo Opening Dashboard in browser...
start http://localhost:5173

