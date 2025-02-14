# Bem-vindo ao desafio

<div align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/e/e4/Robot-framework-logo.png" width="300px"/>
</div>


## Documentação útil

1. [Automação WEB](https://github.com/LuisFelipeSeabra/automacao-com-robot-framework-api-web/tree/master/WEB)
1. [Automação API](https://github.com/LuisFelipeSeabra/automacao-com-robot-framework-api-web/tree/master/API)


## Decrição do Projeto de Automação 
O projeto possui testes de API e de WEB. 
Para os testes de WEB, estou utilizando a faker library para geração de e-mail, nome e senha de forma dinâmica, ou seja, a cada execução um novo cliente é gerado. Foi preciso fazer isso porque o sistema servRest é aberto.

* Geração de paylod
A geração de payload foi feita via python "API\resources\data\createPayloads.py".

* ChromeDriverManager
Foi utilizado também o ChromeDriverManager "WEB\resources\aplication\webdriverManager.py" para baixar de forma automática o chromedriver a cada nova execução.




## Projeto de Automação 
Para automação utilizou-se: o formato Gherkin para a criação dos cenários e RobotFramework como framework de desenvolvimento.
```
  * robotframework==5.0.1
  * webdriver-manager==4.0.2
  * webdrivermanager==0.10.0
  * robotframework-pabot==2.18.0
  * robotframework-faker==5.0.0
  * robotframework-jsonlibrary==0.5
  * robotframework-jsonvalidator==2.0.0
  * robotframework-requests==0.9.3
  * robotframework-seleniumlibrary==6.0.0
  * robotframework-pabot==2.18.0

```

#### Execução dos Testes
Executar [requirements](https://github.com/LuisFelipeSeabra/automacao-com-robot-framework-api-web/tree/master/requirements.txt) pela linha de comando:
```
Abrir o local onde está o requirements.txt
pip install -r requirements.txt
```
Executar pela linha de comando: 
```
Testes em paralelo utilizando pabot:
pabot  */tests/*/*  

Testes sequênciais(WEB):
robot WEB/tests/*/*

Testes sequênciais(API):
robot WEB/tests/*/*
```
Ao final da execução será gerado um relatório com as execuções e screenshots das telas.

#### Relatório de execução

1. [Relatório](https://github.com/LuisFelipeSeabra/automacao-com-robot-framework-api-web/tree/master/log.html)

![image](https://github.com/LuisFelipeSeabra/automacao-com-robot-framework-api-web/blob/master/passed.png)

