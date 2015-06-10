#!/bin/bash
#rm -Rf /vagrant/testeditor -y
unzip /vagrant/TestEditor-linux.gtk.x86_64.zip -d /vagrant/testeditor 
chmod ugo+x /vagrant/testeditor/jre/bin/java
chmod ugo+x /vagrant/testeditor/testeditor
export DISPLAY=:99
/vagrant/testeditor/jre/bin/java -DPATH_TO_TESTEDITOR_AUT=/vagrant/testeditor/testeditor -Daut.workspace.path=/tmp/.testeditor_aut -Dwaits.afterteststep=10ms -jar /vagrant/testeditor/plugins/org.eclipse.equinox.launcher_1.3.0.v20140415-2008.jar -application org.testeditor.core.headlesstestrunner -consoleLog -data /vagrant/ws/test-editor-tests ExecuteTest=TestEditorTests.AceptenceForConDelivery

