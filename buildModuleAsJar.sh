rm -R target
mkdir target
jar -c --file=target/com-ruberte-moduletest.jar --main-class=com.ruberte.moduletest.Main -C out/com.ruberte.moduletest .
