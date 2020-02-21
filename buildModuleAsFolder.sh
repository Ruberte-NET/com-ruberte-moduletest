rm -R ./target
mkdir -p ./target/jmods
javac -d ./target/jmods --module-source-path ./src/main/java --module com.ruberte.moduletest
find target/jmods -maxdepth 1 -mindepth 1
