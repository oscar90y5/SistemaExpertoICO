/*estado(entrada,pila).*/
analiza(X):-inicio(X,[]).

fin([],[]):-write(exito).

inicio([X|Y],[]):-inicio(Y,[X]).
inicio([a|X],[P]):-inicio(X,[a|P]).
inicio([b|X],[_|P]):-fin(X,P).

fin([b|X],[_,P]):-fin(X,P).
fin([b|X],P):-fin(X,[]).
