FROM java:8
COPY target/demo.jar demo.jar
ENTRYPOINT [ "java", "-jar", "demo.jar" ]