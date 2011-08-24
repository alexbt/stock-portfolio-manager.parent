set logdir=logs
set logfile=%logdir%/traces.log
mkdir %logdir%

echo -- >> %logfile%
echo %date%, %time% >> %logfile%

set classpath=.;StockPortfolioLauncher.jar
echo Classpath= %classpath% >> %logfile%

echo Executing "java -jar StockPortfolioLauncher.jar" >> %logfile%
java -jar StockPortfolioLauncher.jar 2>> %logfile%

pause