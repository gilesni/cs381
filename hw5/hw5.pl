% Group Members
% Chris Breniser
% Nick Giles
% Ryan Howerton
% Quinn Thompson

when(275,10).
when(261,12).
when(381,11).
when(398,12).
when(399,12).
where(275,owen102).
where(261,dear118).
where(381,cov216).
where(398,dear118).
where(399,cov216).
enroll(mary,275).
enroll(john,275).
enroll(mary,261).
enroll(john,381).
enroll(jim,399).

schedule(S,P,T) :- enroll(S,C), where(C,P), when(C,T).

usage(P,T) :- where(C,P), when(C,T).

conflict(X,Y) :- where(X,A), when(X,B), where(Y,A), when(Y,B), X\=Y.

meet(X,Y) :- schedule(X,P,T), schedule(Y,P,T); schedule(X,P,T), schedule(Y,P,T+1).
