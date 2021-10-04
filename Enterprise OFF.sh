Enterprise OFF

> Verificar o serviço do Java
ps aux | grep java

> Após isso acessar o diretório do serviço
cd /WPSBrasil/ppegaragem/logs/

> Verificar o log
>> Para versões mais antigas
tail -f info-parebem.log error-parebem.log

tail -50 error-parebem.log

>> Para versões mais recentes
tail -f server2-main.log

tail -50 server2-main.log

> Após isto reiniciar o serviço
../bin/shutdown.sh ; ../bin/startup.sh

 /WPSBrasil/ppegaragem/bin

> Verificar novamente o serviço Java
ps aux | grep java

> Verificar novamente o log
>> Para versões mais antigas
tail -f info-parebem.log error-parebem.log

tail -50 error-parebem.log

>> Para versões mais recentes
tail -f server2-main.log

