@ECHO OFF

SET WEBDIR=C:\Users\Coil\Desktop\Now\SurfStack_WAMP_v1.0.5\webroot\localhost\public
SET PHPDIRTS=C:\Users\Coil\Desktop\Now\SurfStack_WAMP_v1.0.5\amp\app\phpts
SET PHPDIRNTS=C:\Users\Coil\Desktop\Now\SurfStack_WAMP_v1.0.5\amp\app\phpnts

SET PHP="%PHPDIRTS%\php.exe"
SET COMP="%PHPDIRTS%\composer.phar"
SET LOCK="%WEBDIR%\composer.lock"

CD "%WEBDIR%"

REM IF EXIST "%WEBDIR%\composer.lock" ( DEL "%WEBDIR%\composer.lock" /F /Q )

REM "%PHPDIRTS%\php.exe" "%PHPDIRTS%\composer.phar" install --no-dev --prefer-dist
REM "%PHPDIRNTS%\php.exe" "%PHPDIRNTS%\composer.phar" install --no-dev --prefer-dist

REM ECHO PHP="%PHPDIRTS%\php.exe"
REM ECHO COMPOSER="%PHPDIRTS%\composer.phar"
REM ECHO LOCK="%WEBDIR%\composer.lock"

ECHO Usage:
ECHO DEL %%LOCK%%
ECHO %%PHP%% %%COMP%% update --no-dev --prefer-dist
ECHO.

CMD