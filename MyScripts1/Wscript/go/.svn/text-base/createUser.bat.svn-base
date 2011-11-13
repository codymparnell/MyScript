
::FIREFOX
::Start firefox.exe

::GOPHOTO 
::Start http://gpb.magiclamp.net 
::Start http://www.gophotobooks.com      
::pause

::chdir C:\MyScripts\Wscript\go
::c:\Program Files\Mozilla Firefox\firefox.exe" -chrome "chrome://selenium-ide/content/selenium/TestRunner.html?baseURL=http://gpb.magiclamp.net/&test=file:///UserCreation-C:\MyScripts\Wscript\go\GoTest.html&auto=true"
::pause
::c:\Program Files\Mozilla Firefox\firefox.exe" -chrome "chrome://selenium-ide/content/selenium/TestRunner.html?baseURL=http://localhost&test=file:///c:\tests\testsuite.html&auto=false"
::Start UserCreation
::start randomtext.js

chdir C:\Program Files (x86)\Java\jdk1.6.0_27\jre\bin
java -jar selenium-server-standalone-2.11.0.jar -htmlSuite "*firefox" "http://gpb.magiclamp.net" "C:\MyScripts\Wscript\go\GoTest.html" "C:\MyScripts\Wscript\go\GoTestResult.html"
pause