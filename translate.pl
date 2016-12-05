%facts used to check input.
translation(ling, zero).
translation(yi, one).
translation(er, two).
translation(san, three).
translation(si, four).
translation(wu, five).
translation(liu, six).
translation(qi, seven).
translation(ba, eight).
translation(jiu, nine).
translation(shi, ten).

%methd
translate([],[]).
translate([CH|CT],[EH|ET]) :-
	translation(CH,EH),
	translate(CT,ET).

















