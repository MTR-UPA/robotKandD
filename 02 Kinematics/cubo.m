function cubo(a, T)

    % Vértices del cubo centrado en el origen
    V = a/2 * [
        -1 -1 -1;
         1 -1 -1;
         1  1 -1;
        -1  1 -1;
        -1 -1  1;
         1 -1  1;
         1  1  1;
        -1  1  1
    ];

    % Caras
    F = [
        1 2 3 4;
        5 6 7 8;
        1 2 6 5;
        2 3 7 6;
        3 4 8 7;
        4 1 5 8
    ];

    % Transformación homogénea
    Vt = (T(1:3,1:3) * V' + T(1:3,4))';

    % Dibujo
    patch('Vertices', Vt, 'Faces', F, ...
          'FaceColor',[0.8 0.2 0.2], ...
          'EdgeColor','k');


    camlight
    lighting gouraud
end
