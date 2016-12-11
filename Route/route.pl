%flight plans
path(fresno, seattle).
path(fresno, albany).
path(fresno, boston).
path(seattle, omaha).
path(seattle, dallas).
path(omaha, albany).
path(omaha, atlanta).
path(albany, dallas).
path(albany, seattle).
path(atlanta, dallas).
path(atlanta, boston).
path(atlanta, albany).
path(dallas, albany).
path(dallas, seattle).

%method for flight
flight(From,TO):- path(From,TO).
flight(From,TO):- path(From,Stop),flight(Stop,TO).
