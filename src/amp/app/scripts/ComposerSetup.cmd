@ECHO OFF

SET PHPDIRTS=C:\Users\Coil\Desktop\Now\SurfStack_WAMP_v1.0.5\amp\app\phpts
SET PHPDIRNTS=C:\Users\Coil\Desktop\Now\SurfStack_WAMP_v1.0.5\amp\app\phpnts

ECHO Installing Composer for PHP TS:
CD "%PHPDIRTS%"
php -r "eval('?>'.file_get_contents('https://getcomposer.org/installer'));"
echo @php "composer.phar" %*>composer.bat

REM ECHO.
REM ECHO.
REM ECHO Installing Composer for PHP NTS:
REM CD "%PHPDIRNTS%"
REM php -r "eval('?>'.file_get_contents('https://getcomposer.org/installer'));"
REM echo @php "composer.phar" %*>composer.bat

ECHO.
ECHO Installation complete
PAUSE