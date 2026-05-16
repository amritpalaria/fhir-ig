@echo off

echo =========================================================
echo STEP 1: Entering IG directory
echo =========================================================

cd /d "%~dp0\314e-ig"

IF %ERRORLEVEL% NEQ 0 (
    echo Failed to enter 314e-ig directory
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo =========================================================
echo STEP 2: Running SUSHI
echo =========================================================
echo.

sushi .

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo SUSHI FAILED
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo =========================================================
echo STEP 3: Running IG Publisher
echo =========================================================
echo.

java -Xmx4g -jar publisher.jar -ig ig.ini

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo IG PUBLISHER FAILED
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo =========================================================
echo STEP 4: Returning to repository root
echo =========================================================
echo.

cd ..

echo.
echo =========================================================
echo STEP 5: Git Add
echo =========================================================
echo.

git add .

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo GIT ADD FAILED
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo =========================================================
echo STEP 6: Git Commit
echo =========================================================
echo.

git commit -m "Updated"

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo GIT COMMIT FAILED
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo =========================================================
echo STEP 7: Git Push
echo =========================================================
echo.

git push origin main

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo GIT PUSH FAILED
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo =========================================================
echo BUILD + PUBLISH COMPLETE
echo =========================================================
echo.

pause
