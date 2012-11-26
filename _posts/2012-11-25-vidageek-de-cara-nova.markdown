---
author: Jonas Abreu
title: VidaGeek.net de cara nova!
layout: post
---

Se você está acessando o VidaGeek.net diretamente (e não via um rss reader), notou que a cara do site mudou bastante (se você não está, [dê uma olhada :)][1]).

No último mês resolvemos mudar tudo de uma vez. Mudamos o layout, a engine de blog, sistema de comentários, infra de email, enfim, só mantivemos o conteúdo.

## Layout

A mudança mais visível foi o layout. Antes basicamente tínhamos espaço completamente não utilizado, fonte pequena, trechos de código que eram maiores que a área do texto. Enfim, era bem zoneado.

Ler um post qualquer era bem complicado (em especial os grandes). Além de ter **DUAS** barras laterais para confundir os leitores, com dezenas de links para lugares relacionados ou não, a fonte praticamente matava. Solução? Foco total no conteúdo. O objetivo é que vocês leiam o post (em geral, depois de uma busca no [Google][2]). A fonte grande deixou bem mais confortável a leitura e o contraste é melhor que antes. Nem mesmo a pequena barra lateral atrapalha. Se você reduzir o tamanho da tela, ela simplesmente vai para o fim da página, porque o post é mais importante :).

## Engine de Blog

Adeus [Wordpress][3]! Muita gente vai querer me xingar, mas sinceramente? Não consigo gostar do Wordpress. Muito trabalho pra pouco ganho.

Agora o VidaGeek.net roda com uma combinação de [Jekyll][4], [Markdown][5], [Git][6], [S3][7] e [Disqus][10] (a mesma que usei no [Performance Java][8] e no site do [DojoSP][9]). Todas essas ferramentas tem um objetivo e fazem isso muito bem. 

* Jekyll monta a estrutura de blog e é muito fácil de modificar. 
* Markdown é a melhor ferramenta que já vi para edição de posts. 
* Git nos dá backup automágico. (no more backup scripts :D )
* S3 é simplesmente muito mais rápido e escalável (nosso load time caiu de 9s para 2s, em grande parte por causa dele). 
* E o Disqus resolve nosso problema, importando os comentários antigos.

## Infra de Email

Usávamos a do [Dreamhost][11]. Em geral funcionava, mas as vezes alguns emails não chegavam. Mudamos para [Google Apps][12] porque é fácil, de graça (até 10 usuários) e simplesmente funciona.

## Enfim

Foram várias mudanças que acho que contribuíram bastante para melhorar a vida tanto de nós que escrevemos (e não precisamos mais nos preocupar em atualizar o Wordpress e seus plugins) quanto de vocês que nos acompanham há anos (afinal, ficou mais fácil de ler). E se quiserem contribuir com algum post, agora também é muito mais fácil. É só abrir um [Pull Request no Github][13].

P.s.: Agora também é mais fácil ver todos os posts de um autor. Basta clicar no nome do autor na barra lateral :)

P.p.s.: Se encontrarem bugs no blog, é só [abrir um issue pra gente][14] que damos um jeito nisso.

[1]: http://www.vidageek.net
[2]: http://www.google.com
[3]: https://wordpress.com
[4]: http://jekyllrb.com/
[5]: http://daringfireball.net/projects/markdown/
[6]: http://git-scm.com/
[7]: https://aws.amazon.com/s3/
[8]: http://www.javaperformance.com.br/
[9]: http://www.dojosp.org/
[10]: http://disqus.com/
[11]: http://dreamhost.com/
[12]: http://www.google.com/enterprise/apps/business/
[13]: https://github.com/vidageek/blog
[14]: https://github.com/vidageek/blog/issues
