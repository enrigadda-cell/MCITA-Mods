@echo off
title MC ITA - Aggiornamento Repository

cd /d D:\MCITA-Mods

echo.
echo ==============================
echo       MC ITA - UPDATE
echo ==============================
echo.

git add .

git diff --cached --quiet
if %errorlevel%==0 (
    echo Nessuna modifica da caricare.
    echo.
    pause
    exit /b
)

git commit -m "Aggiornamento mod MC ITA"

if errorlevel 1 (
    echo.
    echo ERRORE durante il commit.
    pause
    exit /b 1
)

git push

if errorlevel 1 (
    echo.
    echo ERRORE durante il caricamento su GitHub.
    pause
    exit /b 1
)

echo.
echo ==============================
echo   AGGIORNAMENTO COMPLETATO!
echo ==============================
echo.
pause