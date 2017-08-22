# loja
Exemplo de projeto Spring MVC JPA Bootstrap

A aplicação foi criada usando o framework Spring MVC 4 [1] com esquema de configuração via classes de configuração na própria aplicação. 
Na camada de visão foi usado o Bootstrap [2] em conjunto com as páginas JSP e Jquery [3]. 
Na camada de acesso a dados foi usado o padrão JPA [4] integrado com Hibernate.

A aplicação é estruturada no padrão Maven para aplicações web.

Atualmente o projeto tem as seguintes funcionalidades:
1. Controle de Sessão de usuário
2. Login de usuário
3. Logout de usuário
4. Insere usuário
5. Lista usuários
6. Insere produto
7. Lista produtos
8. Faz upload de imagem para produto.
9. Páginas html responsivas com o uso do Bootstrap.

Para rodar a aplicação:
1. Baixe o projeto via clone da URL https://github.com/armandossrecife/loja.git
2. Configure o projeto como MAVEN [5].
3. Atualize as dependências via Maven Update Project.
4. Configure o Container Java para rodar no Tom Cat [6].
5. Crie um banco mysql [7] com nome bancoloja.
6. Cadastre pelo menos um usuário na tabela de usuários.
7. Faça as configurações necessárias na classe de Constantes (br.ufpi.loja.utilidades).
8. Faça as configurações web necessárias no pacote br.ufpi.loja.configuracoes.
9. Atualize seu JDK para 1.8 


Referências:

[1] Spring MVC 4 - Framework Java para Aplicações Web MVC -  https://docs.spring.io/spring/docs/current/spring-framework-reference/html/mvc.html

[2] Bootstrap - Framework para Aplicações Web responsiva - https://v4-alpha.getbootstrap.com/getting-started/introduction

[3] JQuery - Biblioteca de Funções JavaScript - https://jquery.com/

[4] Spring Data JPA - Abstarçaõ de Acesso a Dados - https://docs.spring.io/spring-data/jpa/docs/current/reference/html/

[5] Maven - Gestão de Builds e Dependências - https://maven.apache.org

[6] Tom Cat - Container Java Web - https://tomcat.apache.org/

[7] Mysql 5 - Sistema de Gerenciamento de Banco de Dados - https://dev.mysql.com/downloads/mysql/


Dúvidas, sugestões ou críticas entre em contato via e-mail armando@ufpi.edu.br
