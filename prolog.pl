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

