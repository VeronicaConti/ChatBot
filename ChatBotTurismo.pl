% Hechos sobre Destinos turísticos

destino(roma, italia, historia, arquitectura, gastronomia, primavera).
destino(paris, francia, arte, cultura, moda, invierno).
destino(new_york, estados_unidos, modernidad, teatro, compras, otono).
destino(tokio, japon, tradicion, templos, jardines, otono).
destino(rio_de_janeiro, brasil, playas, carnaval, cultura, verano).
destino(londres, inglaterra, cultura, musica, historia, invierno).
destino(atenas, grecia, historia, tradicion, comida, verano).
destino(miami, ee_uu, playas, moda, juventud, verano).

% Reglas

% Regla para obtener una lista aleatoria de destinos turísticos
destinos_aleatorios([Destinos]) :-
    findall(Destino, destino(Destino, _, _, _, _, _), Destinos),
    random_permutation(Destinos, DestinosAleatorios).