/* operacoes atimiméticas básicas com elemetos de uma lista */
somarElementosLista([], 0).
somarElementosLista([H|T], Resultado) :- somarElementosLista(T, Resto) , Resultado is H + Resto.

multiplicarElementosLista([], 0).
multiplicarElementosLista([H|T], Resultado) :- multiplicarElementosLista(T, Resto) , 
    												Resultado is H * Resto.

/* remover elementos da lista */
removePrimeiro([], 0).
removePrimeiro([_|T], T).

removeSegundo([], 0).
removeSegundo([H,_|T], [H|T]).

removeTerceiro([], 0).
removeTerceiro([H1,H2,_|T], [H1,H2|T]).

removeQualquerPosicao(X, [X], []).
removeQualquerPosicao(X, [X|T], T).
removeQualquerPosicao(X, [H|T], [H|T1]) :- removeQualquerPosicao(X, T, T1).

/* verificar se determinado elemento esta na lista */
estaNaLista(X, [H|T]) :- X = H ; estaNaLista(X, T).

/* exercicios lifes */
/* Calcule o quadrado de N somando números ímpares, segundo a fórmula:
N² = 1 + 3 + 5 + ... + 2*N-1
*/
quadrado(N,S) :- N >= 0, soma_impares(N,S).
quadrado(N,S) :- N =< 0, M is - N, soma_impares(M,S).

soma_impares(0,0) :- !.
soma_impares(N,S) :-
	N1 is N - 1,
	soma_impares(N1,S1),
	S is S1 + 2*N -1.

/* Retorne o último elemento de uma lista dada. */
retornaUltimo([],[]).
retornaUltimo([X],X).
retornaUltimo([_|T],L) :- retornaUltimo(T,L).

/* Retorne a sublista contendo todos menos o último elemento de uma lista dada. */
naoRetornaUltimo([_],[]).
naoRetornaUltimo([H|T],[H|T2]) :- naoRetornaUltimo(T,T2).

/* Retorne a concatenação de duas listas dadas. */

append_([],L,L).
append_([H|T],L,[H|R]) :- append_(T,L,R).

/* Retorne o reverso de uma lista. */
reverse_(L,R) :- revacc_(L,[],R).

revacc_([],L,L).
revacc_([H|T],L,R) :- revacc_(T,[H|L],R).

/* Verifique se um elemento está numa lista dada. */
membro(A,[A|_]).
membro(A,[_|T]) :- membro(A,T).

/* Acrescente um elemento a uma lista se ele já não estiver nela. */
acres(A,[],[A]).
acres(A,[A|T],[A|T]) :- !.
acres(A,[H|T],[H|R]) :- acres(A,T,R).

/* Faça a união de duas listas.  Suponha que as listas vêm sem
elementos repetidos, e devolva uma solução sem elementos repetidos. */
uniao([],A,A).
uniao([H|T],A,U) :-
	uniao(T,A,X),
	acres(H,X,U).

/* Faça a intersecção de duas listas.  Suponha que as listas vêm sem
elementos repetidos, e devolva uma solução sem elementos repetidos. */
inter([],_,[]).
inter([H|T],A,[H|I]) :-
	select(H,A,R), !,
	inter(T,R,I).
inter([_|T],A,I) :-
	inter(T,A,I).

/* Dadas duas listas, retorne os elementos que estão na primeira lista
mas não estão na segunda. */
set_difference([],_,[]).
set_difference([H|T],S,R) :-
	member(H,S), !,
	set_difference(T,S,R).
set_difference([H|T],S,[H|R]) :-
	set_difference(T,S,R).
