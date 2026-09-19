%%Esta función sirve para dibujar un robot según sus parámetros DH.
%DibujoRobot(d, Tam, color)
%Donde:
%          d es la matriz de los parámetros DH
%          Tam es el tamaño de los marcos de referencia
%          color es el color de la línea en RGB [1 0 0] es rojo
%Retorna:
%       out es la MTH del origen al final del robot.
%       l es la instancia de las líneas del robot
%       t es la instancia de los textos

function [out,l,s] = DibujoRobot(d,Tam,color)
n = size(d,1);  %Z azul Y verde X rojo
r = eye(4);
Ejes = [Tam 0 0; 0 Tam 0; 0 0 Tam; 1 1 1];
trplot(eye(4),'rgb','thick',4,...
    'length',5*Tam, 'frame','O');

for i = 1:n
    m = transformA(d(i,:));
    r_1 = r;
    r = r*m;
    l(i) =line([r_1(1,4) r(1,4)],[r_1(2,4) r(2,4)],[r_1(3,4) r(3,4)]);
    set(l(i), 'LineWidth', 3,'Color',color);
    s(i) = trplot(r, 'length',1.5*Tam, 'frame', num2str(i),...
        'rgb','thick',1);
    if i ~= n+1
        if d(i,5) == 0
            cilindro(Tam/4, Tam, r_1);
        else if d(i,5) == 1
                cubo(Tam,r_1);
            end
        end
        
    end
end
l(n+1) = line([0 r(1,4)],[0 r(2,4)],[0 r(3,4)]);
set(l(n+1),'LineStyle','--')

[xs,ys,zs] = sphere(20);      % resolución de la esfera
radio = Tam/5;                % tamaño de la esfera
xs = xs*radio + r(1,4);
ys = ys*radio + r(2,4);
zs = zs*radio + r(3,4);
surf(xs,ys,zs,'FaceColor',[1 0 0],'EdgeColor','none');

out = r;

