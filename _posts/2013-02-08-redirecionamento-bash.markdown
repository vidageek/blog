---
author: Jonas Abreu
title: Redirecionamento em Bash
layout: post
---

Costumo usar bastante redirecionamento em scripts bash. Alguns dos que uso com mais frequência são:

* `comando > arquivo` redireciona a saída padrão (stdout) do comando `echo` para o arquivo
* `comando 2> arquivo` redireciona a saída de erro (stderr) do comando `echo` para o arquivo
* `comando 2>&1` redireciona a saída de erro (stderr) para a saída padrão (stdout)
* `comando 1>&2` redireciona a saída padrão (stdout) para a saída de erro (stderr)

E o redirecionamento muito útil que descobri hoje:

* `comando &> arquivo` redireciona a saída de erro e a padrão para o arquivo.

Esse redirecionamento realmente fez falta :)
