#!/bin/bash

#####Script to build an EAR File using ant, glassfish  and netbeans

export GLASSFISH_HOME=/d/WorkColectoresWeb/Java/glassfish-3.1.2.2-ml/glassfish3/glassfish
export JAVA_HOME=/d/Work/Java/zulu8.66.0.15-ca-jdk8.0.352-win_x64
export COPY_LIBS_CLASSPATH="/c/Program Files (x86)/NetBeans 8.1/java/ant/extra/org-netbeans-modules-java-j2seproject-copylibstask.jar"
export PROJECT_HOME=/d/WorkColectoresWeb/CajaPromerica 


ant -Dj2ee.server.home="$GLASSFISH_HOME"  -Dplatforms.JDK_1.6.home="$JAVA_HOME"   -Dlibs.CopyLibs.classpath="$COPY_LIBS_CLASSPATH"  -f  "$PROJECT_HOME" -Dbrowser.context="$PROJECT_HOME" clean dist
