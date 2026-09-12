clc; clear; close;

a = 10;
b = a;
c = a/3;
d = 3*a/4;
e = 2*c;
f = a/4;
hold on
rotate3d
grid on
view(119,22)
color = [0.5 0.6 0.4];
%Construye los marcos de referencia
T0 = eye(4);
T1 = T0*transl(0,a,f)*trotx(90)*trotz(180);

%Construye los vértices (son marcos de referencia sin dibujar)
V1 = T0*transl(0,c+e,0);

%Dibujo los marcos de referencia
trplot(T0, 'frame', '0');
trplot(T1, 'frame', '1');

%Dibulo las líneas
dibujarLinea(T0, V1,"color",color)