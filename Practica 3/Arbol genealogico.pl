padre(manuel,nelson).
padre(manuel,edith).
padre(manuel,carlos).
padre(manuel,rene).
padre(manuel,samuel).
padre(ignacio,teresa).
padre(ignacio,hugo).
padre(ignacio,daniel).
padre(ignacio,dolores).
padre(ignacio,claudia).
padre(ignacio,martin).
padre(ignacio,raymundo).
padre(ignacio,vianey).
padre(nelson,victor).
padre(nelson,glorybell).
padre(nelson,valeria).
madre(salvadora,nelson).
madre(salvadora,edith).
madre(salvadora,carlos).
madre(salvadora,rene).
madre(salvadora,samuel).
madre(rosario,teresa).
madre(rosario,hugo).
madre(rosario,daniel).
madre(rosario,dolores).
madre(rosario,claudia).
madre(rosario,martin).
madre(rosario,raymundo).
madre(rosario,vianey).
madre(teresa,victor).
madre(teresa,glorybell).
madre(teresa,valeria).
abuelo(X,Y):-padre(X,Z),padre(Z,Y).
abuelo(X,Y):-padre(X,Z),madre(Z,Y).
abuela(X,Y):-madre(X,Z),padre(Z,Y).
abuela(X,Y):-madre(X,Z),madre(Z,Y).
hermano(X,Y):-padre(Z,Y),padre(Z,X), not(X=Y).
tios(X,Z):-hermano(X,Y),padre(Y,Z).
tios(X,Z):-hermano(X,Y),madre(Y,Z).
primer_elemento([ C | R ]):-write(C).
imprimir_lista([C | R]):-imprimir_lista(R), write(C).
imprimir_lista([]).
lista_con([], Ys, Ys).
lista_con([X|Xs],Ys,[X|Zs]):-lista_con(Xs, Ys, Zs).

