start mvn spring-boot:run -Dspring.profiles.active=subject -DPORT=8011

timeout /t 20
start mvn spring-boot:run -Dspring.profiles.active=verb -DPORT=8012

timeout /t 20
start mvn spring-boot:run -Dspring.profiles.active=article -DPORT=8013

timeout /t 20
start mvn spring-boot:run -Dspring.profiles.active=adjective -DPORT=8014

timeout /t 20
start mvn spring-boot:run -Dspring.profiles.active=noun -DPORT=8015
