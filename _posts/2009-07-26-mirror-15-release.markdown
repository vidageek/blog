---
author: Jonas Abreu
title: Mirror 1.5 release
layout: post

---
A versão 1.5 do [Mirror][1] acaba de ser lançada.

Alguns problemas com performance foram corrigidos.

Também foi criada uma forma de evitar um padrão que etava se tornando muito comum. Filtrar a lista de elementos logo após refletí-los:

    
    List<Method> originalMethods = new Mirror().on(clazz)
                                  .reflectAll().methods();
    List<Method> methods = new ArrayList<Method>();
    for (Method m : originalMethods) {
        if (wantThisMethod(m)) {
            methods.add(m);
        }
    }
    

Agora você pode fazer apenas:

    
    List<Method> methods = new Mirror().on(clazz).reflectAll()
                             .methodsMatching(new SeuMatcher());
    

Release notes completo pode ser encontrado [aqui][2]. 














 [1]: http://projetos.vidageek.net/mirror-pt
 [2]: http://projetos.vidageek.net/mirror-pt/projeto/release-notes/





