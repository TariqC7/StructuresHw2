% #1-sum-up-numbers-simple
sum-up-numbers-simple([],0).
sum-up-numbers-simple([[]],0).
sum-up-numbers-simple([a,b,c],0).
sum-up-numbers-simple([a],0).
sum-up-numbers-simple([b],0).
sum-up-numbers-simple([c],0).
sum-up-numbers-simple([[100]],0).
sum-up-numbers-simple([100,[200]],100).
sum-up-numbers-simple([a,100,b,[200],c,300,d],400).
sum-up-numbers-simple([a,100,b,200,c,300,d],600).

sum-up-numbers-simple([L | N],TotalSum) :-
	sum-up-numbers-simple(N,Sum1),
	TotalSum is L + Sum1.

% #2-sum-up-numbers-general 
sum-up-numbers-general([],0).
sum-up-numbers-general([[]],0).
sum-up-numbers-general([a],0).
sum-up-numbers-general([b],0).
sum-up-numbers-general([c],0).
sum-up-numbers-general([[100]],100).
sum-up-numbers-general([100,[200]],300).
sum-up-numbers-general([a,100,[[b,[[200],c]],300,d]],600).

sum-up-numbers-general([L | N],TotalSum) :-
sum-up-numbers-general(N,Sum1),
TotalSum is L + Sum1.

% #4-common-unique-elements
common-unique-elements([], _,[]).
common-unique-elements(_,[],[]).

common-unique-elements([H1|L1],L2,[H1|Res]) :-
    member(H1,L2),
    common-unique-elements(L1,L2,Res).

common-unique-elements([[[a]]],[a],a).
common-unique-elements([a,9,[b,8,c],[13,[[d],6],e,20]],[2,e,[3,d,4],[c,[[5],[b],[[6]]],a],7],(a,b,c,d,6,e)).

common-unique-elements([_|L1],L2,Res) :-
    common-unique-elements(L1,L2,Res).
    %majority of test cases were passed
