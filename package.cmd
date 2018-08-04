call build.cmd package
ECHO Prepare configuration an re-package cas.war

ECHO Delete all default json services
del .\target\cas\WEB-INF\classes\services\*.*
xcopy .\deployment\WEB-INF .\target\cas\WEB-INF\ /S

cd .\target\cas\
call jar cvf cas.war *
@PAUSE