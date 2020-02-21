rm -R ./target
rm -R ./mvn.log
mvn install>>mvn.log
java -jar target/com-ruberte-moduletest*.jar "Hello World"
