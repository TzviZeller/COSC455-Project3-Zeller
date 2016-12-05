%half subtrator method
half(A,B,Dif,Barrow) :-
	xor(A,B,Dif),
	not(A, NotA),
	and(NotA,B,Barrow),
	write(_),
	fail.

%1-2 method
onetotwo(A,IN,Out1, Out2) :-
	not(A, NotA),
	and(NotA,IN,Out1),
	not(NotA,A),
	and(A,IN,Out2),
	write(_),
	fail.

%2-4 method
twotofour(A,B,IN,Out1,Out2,Out3,Out4) :-
	not(A,NotA),
	not(B,NotB),
	and(NotA,NotB,IN,Out1),
	and(A,NotB,IN,Out2),
	and(NotA,B,IN,Out3),
	and(A,B,IN,Out4),
	write(_),
	fail.

%two input method
twoinput(A,X1,X2,X):-
	not(A,NotA),
	and(NotA,X2,Out1),
	not(NotA,A),
	and(A,X1,Out2),
	or(Out1,Out2,X),
	write(_),
	fail.
%for input method
fourinput(A,B,X1,X2,X3,X4,X):-
	not(A,NotA),
	not(B,NotB),
	and(NotA,NotB,X1,Out1),
	and(A,NotB,X2,Out2),
	and(NotA,B,X3,Out3),
	and(A,B,X4,Out4),
	or(Out1,Out2,Out3,Out4,X),
	write(_),
	fail.



%facts for methods
%not
not(0,1).
not(1,0).

%and /2
and(0, 0, 0).
and(0, 1, 0).
and(1, 0, 0).
and(1, 1, 1).

%and /3
and(0, 0, 0, 0).
and(0, 0, 1, 0).
and(0, 1, 0, 0).
and(0, 1, 1, 0).
and(1, 0, 0, 0).
and(1, 0, 1, 0).
and(1, 1, 0, 0).
and(1, 1, 1, 1).

%or /2
or(0, 0, 0).
or(0, 1, 1).
or(1, 0, 1).
or(1, 1, 1).

%or /4
or(0,0,0,0,0).
or(0,0,0,1,1).
or(0,0,1,0,1).
or(0,0,1,1,1).
or(0,1,0,0,1).
or(0,1,0,1,1).
or(0,1,1,1,1).
or(1,0,0,0,1).
or(1,0,0,1,1).
or(1,0,1,0,1).
or(1,0,1,1,1).
or(1,1,0,0,1).
or(1,1,0,1,1).
or(1,1,1,1,1).


%xor
xor(0,0,0).
xor(0,1,1).
xor(1,0,1).
xor(1,1,0).
