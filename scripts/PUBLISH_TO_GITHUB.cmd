@echo off
setlocal
if "%~1"=="" (
  echo Usage: PUBLISH_TO_GITHUB.cmd https://github.com/OWNER/REPO.git
  exit /b 1
)

git rev-parse --is-inside-work-tree >nul 2>nul
if errorlevel 1 git init

git branch -M main
git add .
git diff --cached --quiet
if errorlevel 1 git commit -m "feat: initialize portable AI context repository"

git remote get-url origin >nul 2>nul
if not errorlevel 1 git remote remove origin

git remote add origin %~1
git push -u origin main
endlocal
