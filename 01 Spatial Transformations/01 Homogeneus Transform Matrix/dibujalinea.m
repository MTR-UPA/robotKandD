%% Funcion para dibujar una línea a partir de dos vectores de entrada
% origen : Vector de x, y, z del punto de origen de la linea
% fin : Vector de x, y, z del punto final de la linea
% Options: 
%    'color', c
%    'grosor', valor
% Ej.  dibujalinea([0 0 0], [1 1 1], 'color',[0 1 0], 'grosor',1)
%Retorna el manejador de la linea dibujada

function [linea] = dibujalinea(origen, fin, options)

arguments
    origen 
    fin 
    options.color (1,3) {mustBeVector} = [0 0 0]
    options.grosor (1,1) double = 0.5
%     options.estilo (1,2) char = '-'
end
    
    if ( size(origen, 1) == 1 && size(fin,1) == 1)
        linea = line([origen(1) fin(1)],...
            [origen(2) fin(2)],[origen(3) fin(3)],...
            'color', options.color,...
            'LineWidth', options.grosor);
    elseif (size(origen,1) == 4 && size(fin,1) == 4)
        linea = line([origen(1,4) fin(1,4)],...
            [origen(2,4) fin(2,4)],...
            [origen(3,4) fin(3,4)],...
            'color', options.color,...
            'LineWidth', options.grosor);
    end
    

