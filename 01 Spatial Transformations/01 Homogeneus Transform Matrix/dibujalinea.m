function [linea] = dibujarLinea(origen, fin, optional)
arguments
    origen
    fin
    optional.color = [0 0 1];
    optional.grosor = 2;
end
lineaX = [origen(1,4) fin(1,4)];
lineaY = [origen(2,4) fin(2,4)];
lineaZ = [origen(3,4) fin(3,4)];
linea =  line(lineaX, lineaY, lineaZ);

linea.Color = optional.color;
linea.LineWidth = optional.grosor;

end