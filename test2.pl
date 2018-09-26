/* First Program */


/* Clauses about parents */
parent(juan, graciela).
parent(juan, angelo).
parent(juan, taty).
parent(juan, carlos).
parent(shirley, graciela).
parent(shirley, angelo).
parent(shirley, taty).
parent(shirley, carlos).
parent(graciela, chili).
parent(graciela, nano).
parent(carlos, capo).

/* Clauses about gender */

male(juan).
male(angelo).
male(carlos).
male(nano).
male(capo).
female(graciela).
female(taty).
female(chili).
female(shirley).

/* Rules about family relations */

offspring(Y, X) :- parent(X, Y).
mother(X, Y) :- parent(X, Y), female(X).
father(X, Y) :- parent(X, Y), male(X).
sister(X, Y) :- parent(Z, X), parent(Z, Y), female(X).
brother(X, Y) :- parent(Z, X), parent(Z, Y), male(X).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
grandfather(X, Y) :- grandparent(X, Y), male(X).
grandmother(X, Y) :- grandparent(X, Y), female(X).
