@ECHO OFF

::///////////////////
::Web Driver Nodes//
:://///////////////

:: WebDriver nodes are compatible with both Selenium 1 and Selenium 2. 
:: The difference here is that you can use both Selenium 1 and WebDriver commands in the same session. 
:: WebDriver supports backward compatibility to Seleniuim 1 using a WebDriverBackedSelenium object. 
:: To launch the WebDriver nodes, open a new console window and type:

:: Open New CMD
::Start cmd.exe
::pause

:: chdir to where standalon.jar is
Chdir C:\Program Files (x86)\Java\jdk1.6.0_27\jre\bin
pause

::Start Hub -- Default port = 4444
::To change the default port, you can add the optional parameter -port when you run the command. 
::You can view the status of the hub by opening a browser window and navigating to: http://localhost:4444/grid/console
java -jar selenium-server-standalone-2.0rc1.jar -role hub

:: Start WebDriver Nodes
:: Note: The port defaults to 4444 if not specified. 
:: If you’re running hub and RC on the same machine, 
:: you will get a port conflict when starting the node if you don’t set it.

java -jar selenium-server-standalone-2.11.0.jar -role webdriver  -hub http://localhost:4444/grid/register -port 5556
pause
 