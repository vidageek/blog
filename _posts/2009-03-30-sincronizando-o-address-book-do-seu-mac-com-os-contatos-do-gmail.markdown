---
author: fabs
title: Sincronizando o Address Book do seu mac com os Contatos do Gmail
layout: post

---
![synronize-with-google][1]

Talvez isso seja notícia velha, mas graças ao [LifeHacker][2] eu descobri como sincronizar o meu AddresBook com o Gmail.

Sabe se lá porque, a Apple escondeu a opção de sincronização de contatos apenas para quem tem um Iphone, todavia existe um possível hack para habilitar essa funcionalidade. Primeiro faça um backup do arquivo ~/Library/Preferences/com.apple.iPhod.plist , depois substitua seu conteudo por:

{ Devices = { red-herring = { ‘Family ID’ = 10001; }; }; }

Salve o arquivo e abra o AdressBook, e vc vai ganhar o menu de sincronização do gmail. Apareceu na minha barra também um ícone de sincronização (o mesmo usado para o Mobile Me), e quando eu mando sincronizar ele sincroniza meu n95, meu AddressBook e os contatos do Gmail. Se o Ícone não aparecer para você, abrir o ISync pode ajudar.

Explicando um pouco mais, parece que basta que o arquivo com.apple.iPhod.plist tenha qualquer dispositivo com o Family ID = 10001, então se vc tiver ipod ou alguma outra coisa sincronizada, basta mudar o ID. Se você tem um Iphone, a opção já deve estar lá. Por fim, eu achei que remover o conteúdo e trocar por essa linha ia causar algum problema com a sincronização do meu IPod Shuffle, mas no final das contas quando conetei ele o Itunes simplesmente arrumou a configuração. 














 [1]: http://vidageek.net/wp-content/uploads/2009/03/synronize-with-google.jpg "synronize-with-google"
 [2]: http://lifehacker.com/393855/enable-google-contact-sync-without-an-iphone-or-ipod-touch





