%generates posible suspects
suspects(Sus):- trait(Sus,greedy);hate(Sus,_).

% The murderer hates boddy and is greedyim
murderer(Sus1):- trait(Sus1,greedy),hate(Sus1,boddy).

%Given Clues
affair(boddy, green).
married(plum,green).
trait(mustard,greedy).
trait(boddy,rich).
affair(boddy,scarlett).

%custom fact
married(mustard,scarlett).

%detrmine hate motive throght affair with a couple
hate(X,Y):-married(X,Z),affair(Y,Z).
