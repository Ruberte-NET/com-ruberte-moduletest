rm -R out-jar
mkdir out-jar
jar -c --file=out-jar/com-ruberte-moduletest.jar --main-class=com.ruberte.moduletest.Main -C out/com.ruberte.moduletest .
