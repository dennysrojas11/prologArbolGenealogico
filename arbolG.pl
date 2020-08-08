padre(gerardo,morayma).
padre(gerardo,william).
madre(esther,morayma).
madre(esther,william).
padre(pablo,adriana).
padre(pablo,mateo).
madre(morayma,adriana).
madre(morayma,mateo).
padre(william,will).
padre(william,sofia).
madre(maribel,will).
madre(maribel,sofia).
esposo(gerardo,esther).
esposo(pablo,morayma).
esposo(william,maribel).
genero(masculino,gerardo).
genero(masculino,pablo).
genero(masculino,william).
genero(masculino,mateo).
genero(masculino,will).
genero(femenino,esther).
genero(femenino,morayma).
genero(femenino,maribel).
genero(femenino,adriana).
genero(femenino,sofia).

abuelo(X,Y):-((padre(Z,Y), padre(X,Z));(madre(Z,Y),padre(X,Z))),not(X=Y).
abuela(X,Y):-((padre(Z,Y), madre(X,Z));(madre(Z,Y),madre(X,Z))),not(X=Y).

hermanos(X,Y):-((padre(Z,X),padre(Z,Y));(madre(W,X),madre(W,Y))),not(X=Y).

tio(X,Y):-(not(X=Y)),(genero(masculino,X)),not(padre(X,Y)),((padre(Z,Y);madre(W,Y)),((hermanos(X,Z);hermanos(X,W));((esposo(X,V)),(hermanos(V,Z);hermanos(V,W))))).
tia(X,Y):-(not(X=Y)),(genero(femenino,X)),not(madre(X,Y)),((padre(Z,Y);madre(W,Y)),((hermanos(X,Z);hermanos(X,W));((esposo(V,X)),(hermanos(V,Z);hermanos(V,W))))).
