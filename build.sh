rm -rf ./target
rm -rf ./mvn.log
mvn install>>mvn.log
mkdir -p ./target/jmods && cp ./target/com-ruberte-moduletest*.jar ./target/jmods/com-ruberte-moduletest.jar

echo Executing: java -jar target/jmods/com-ruberte-moduletest*.jar "Hello World from Packaged Module JAR" 
java -jar target/jmods/com-ruberte-moduletest*.jar "Hello World from Packaged Module JAR"
echo

jlink --module-path "./target/jmods:$JAVA_HOME11\jmods" --add-modules com.ruberte.moduletest --output ./target/app-standalone
echo App Packaged under ./target/app-standalone
du -sh ./target/app-standalone/
find ./target/app-standalone -maxdepth 1 -mindepth 1

echo Executing: ./target/app-standalone/bin/java com.ruberte.moduletest.Main "Hello World from Packaged App"
./target/app-standalone/bin/java com.ruberte.moduletest.Main "Hello World from Packaged App"
