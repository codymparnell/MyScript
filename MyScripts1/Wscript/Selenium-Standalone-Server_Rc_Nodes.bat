@ ECHO OFF

::--------------------------------------------------------------------------------------------------------------------------------------------
:: Selenium-Standalone-Server Initiation
:: If Path is different from the one in code, change to point to where your Selenium-Standalone-Server.jar file is located

:: [Step 1 Start the hub] ---> first chdir to where Selenium-Standalone-Server.jar file is located
Chdir C:\Program Files (x86)\Java\jdk1.6.0_27\jre\bin\
pause

::Now start Hub with java cmd.    
::The hub will automatically start-up using port 4444 by default.
::To change the default port, you can add the optional parameter -port when you run the command. 
::You can view the status of the hub by opening a browser window and navigating to: http://localhost:4444/grid/console
java -jar selenium-server-standalone-2.11.0.jar -role hub
pause
:: [Step 2 Start the Nodes]

::///////////////////////
:: Selenium 1 RC Nodes//
:://///////////////////

:: Note: The port defaults to 4444 if not specified. 
:: If you’re running hub and RC on the same machine, you will get a port conflict when starting the node if you don’t set it. 

:: Open New CMD
Start cmd.exe
pause

:: chdir to where standalon.jar is
Chdir C:\Program Files (x86)\Java\jdk1.6.0_27\jre\bin\
pause

::Start Nodes
java -jar selenium-server-standalone-2.11.0.jar -role rc  -hub http://localhost:4444/grid/register -port 5555
pause


::--------------------------------------------------------------------------------------------------------------------------------------------