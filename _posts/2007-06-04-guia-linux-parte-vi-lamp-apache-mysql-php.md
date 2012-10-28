---
author: convidados
title: 'Guia Linux - Parte VI: LAMP (Apache + MySQL + PHP)'

layout: post
category:
  - Gentoo
  - Linux
  - OpenSource
  - Tutoriais
tags:
  - apache
  - Gentoo
  - Linux
  - mysql
  - OpenSource
  - php
  - Tutoriais
post_format: [ ]
---
Hoje em dia com o crescimento dos aplicativos rodando exclusivamente na Web todo programador acaba eventualmente aprendendo uma linguagem de programação de scripts que possa ser executada e tranformada num HTML. Antigamente o **PHP** e o Microsoft** ASP** dominavam o mercado, apesar de existirem outras linguagens como o **ColdFusion** e o **Perl** (através dos **CGIs**). Hoje **Ruby on Rails** e **Java EE** vão ganhando espaço, mas a maior parte dos sistemas ainda são em PHP. Tanto que foi criada a sigla **LAMP** (**L**inux + **A**pache + **M**ySQL + **P**HP) para representar um bom sistema completamente open-source para o PHP. Aqui damos algumas dicas de como instalar um LAMP no seu **Gentoo**.

**Apache (**[Site Oficial][1]**)**  
O Apache é um servidor Web completamente capaz de realizar tudo que um servidor precisa. Alias, ele é provavelmente o servidor mais capaz que exista, apesar de que fãs do Windows vão, possivelmente, defender seu próprio servidor. Praticamente todo grande servidor Web roda hoje sobre o Apache.

A instalação do Apache no Gentoo é extremamente simples. Basta adicionar “**apache2**” à variável **USE** no /etc/make.conf e executar  
`emerge apache`  
Após a instalação você poderá iniciar o servidor com  
`/etc/init.d/apache2 start`  
e se quiser que ele seja iniciado no boot basta adiciona-lo ao runlevel default  
`rc-update add apache2 default`

Para testa-lo vá no navegador e entrem em **http://localhost/**. A mensagem **“Funcionou! O Apache Web Server foi instalado corretamente neste Web Site!”** deverá aparecer.

**Mais informações:**

*   Gentoo Wiki: [Apache2 Install][2]
*   Gentoo Wiki: [How To Apache2 with PHP MySQL][3]

**MySQL( **[SiteOficial][4]** )**  
O MySQL é um **Sistema Gerenciador de Banco de Dados** (ou quase, como diria meu professor de Banco de Dados) bastante popular entre os desenvolvedores de projetos em PHP. Apesar de existirem opções proprietárias muito avançadas na área de banco de dados (como o Oracle, por exemplo), o MySQL é capaz de fazer o serviço que a maioria das pessoas normais e pequenas empresas podem precisar e também irá funcionar bem para grandes projetos.

A instalação é um pouco mais complicada do que o normal. Inicialmente adicione **“berkdb”** à variável **USE** e então execute:  
`emerge mysql`  
Agora será necessário configurar o MySQL, mas o portage te ajuda com o comando  
`emerge --config mysql`  
Para o rodar o MySQL execute  
`/etc/init.d/mysql start`  
e para adicionar ao runlevel default use  
`rc-update add mysql default`

Agora, você precisará executar dois comandos  
`mysql_setpermission` (para criar usuários e bancos de dados)  
`mysql_secure_installation` (para arrumar algumas configrações de segurança)

Para testar execute:  
`mysql -u root --password (sua senha será pedida)<br />
mysql>show databases;<br />
`  
Nesse ponto o MySQL deve estar rodando corretamente na sua maquina. Para criar facilmente bancos de dados e usuários e mudar permissões use o mysql_setpermission. Maiores informações podem ser encontradas na Wiki do Gentoo em [MySQL Install][5].

**PHP (**[Site Oficial][6]**)**  
O PHP é, provavelmente, a linguagem mais popular da Web, principalmente por ser capaz de realizar praticamente tudo que um programador Web precisa. Ela pode até ser usada como linguagem de script (mas seria o mesmo que escrever um sistema operacional em Perl) graças a sua vasta capacidade e extensão. Ela permite que código, numa sintaxe muito parecida com a do C, seja **inserido dentro do HTML** (o que é extremamente confuso sem padrões de projeto e um programador experiente, algo que o [Rails alega ter arrumado][7]), isso permite a criação de sites de conteúdo dinâmico com conteúdos retirados de banco de dados ou outras fontes. No final das contas, pelo bem ou pelo mal, muitas das aplicações Web rodam hoje sobre o PHP.

Para instalar o PHP basta adicionar **“mysql”** à variável **USE** e então executar  
`emerge php`  
Após a instalação, que pode demorar um tempo razoável, será necessário reiniciar o Apache, o que poderá ser feito com o comando  
`/etc/init.d/apache2 restart`

Pronto! Você já tem um servidor LAMP rodando na sua máquina. A configuração do Apache, do MySQL e a programação em PHP fogem do escopo deste guia, mas muita informação pode ser encontrada nos sites oficiais, principalmente no site do PHP que contém muita informação para quem quer programar nessa linguagem. 














 [1]: http://www.apache.org/ "Apache: Site Oficial"
 [2]: http://gentoo-wiki.com/Apache2_Install "Apache2 Install"
 [3]: http://gentoo-wiki.com/HOWTO_Apache2_with_PHP_MySQL "How To Apache2 with PHP MySQL"
 [4]: http://www.mysql.com/ "MySQL Site Oficial"
 [5]: http://gentoo-wiki.com/MySQL/Install "MySQL Install"
 [6]: http://www.php.net/ "PHP Site Oficial"
 [7]: http://www.vidageek.net/2007/05/22/rails-vs-java-e-php/ "Rails vs Java e PHP"





