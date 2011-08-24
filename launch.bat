echo off

set logfile=launch.log
echo -- >> %logfile%
echo %date%, %time% >> %logfile%
echo set classpath=.;StockPortfolioLauncher.jar >> %logfile%

echo java -jar StockPortfolioLauncher.jar >> %logfile%


echo on
set classpath=.;StockPortfolioLauncher.jar 2>> %logfile%

java -jar StockPortfolioLauncher.jar 2>> %logfile%


pause