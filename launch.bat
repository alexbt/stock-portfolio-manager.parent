echo off

set logfile=launch.log
echo -- >> %logfile%
echo %date%, %time% >> %logfile%
echo set classpath=.;stockportfolioswing-0.24.jar >> %logfile%

echo java -jar stockportfolioswing-0.24.jar >> %logfile%


echo on
set classpath=.;stockportfolioswing-0.24.jar 2>> %logfile%

java -jar stockportfolioswing-0.24.jar 2>> %logfile%


pause