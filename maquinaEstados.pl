inicio([]):-write('no cuadra').
estado1([]):-write('si cuadra').
estado2([]):-write('no cuadra').
estado3([]):-write('no cuadra').

inicio([a|X]):-estado2(X).
inicio([b|X]):-estado1(X).

estado1([a|X]):-inicio(X).
estado1([b|X]):-estado3(X).

estado2([a|X]):-estado2(X).
estado2([b|X]):-estado3(X).

estado3([a|X]):-inicio(X).
estado3([b|X]):-estado3(X).

