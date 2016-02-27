REM ##### DEFINE HOME ENVIRONMENT VARIABLE #########

cd config-server
start mvn spring-boot:run

cd ..
cd eureka-server

timeout /t 20
start mvn spring-boot:run

cd ..
cd word-server

timeout /t 30
start mvn spring-boot:run -Dspring.profiles.active=subject

timeout /t 30
start mvn spring-boot:run -Dspring.profiles.active=verb
timeout /t 30
start mvn spring-boot:run -Dspring.profiles.active=article
timeout /t 30
start mvn spring-boot:run -Dspring.profiles.active=adjective

timeout /t 30
start mvn spring-boot:run -Dspring.profiles.active=noun

cd ..
cd sentence-server-solution

timeout /t 30
start mvn spring-boot:run


REM ############# CHECK EUREKA #############
timeout /t 40
Start http://localhost:8010/
REM ############# CHECK SENTENCE SERVER #############
timeout /t 20
Start http://localhost:8020/sentence
REM ############# CHECK HYSTRIX SERVER #############
timeout /t 20
Start http://localhost:8020/hystrix
REM  => ENTER IN HYSTRIX BROWSER ===> http://localhost:8020/hystrix.stream