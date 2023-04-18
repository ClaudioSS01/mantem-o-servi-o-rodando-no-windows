:loop
tasklist /FI "IMAGENAME eq python.exe" 2>NUL | find /I /N "python.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo Python está sendo executado.
) else (
    echo Python não está sendo executado. Iniciando arquivo.py...
    start "" "modeloLoop.py"
)
timeout /t 10 /nobreak > NUL
goto loop
