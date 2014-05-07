echo on

set logfile=launch.bat.log
echo %date%.%time% - Launching with launch.bat >> %logfile%

echo %date%.%time% - Previous classpath: %classpath% >> %logfile%
set classpath=.;StockPortfolioLauncher.jar 2>> %logfile%
echo %date%.%time% - Current classpath: %classpath% >> %logfile%

start javaw -jar StockPortfolioLauncher.jar 2>> %logfile%
