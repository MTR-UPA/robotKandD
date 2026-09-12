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
T2 = T1*troty(-90)*trotx(90)*transl(0,-b,-(a-d));

%Construye los vértices (son marcos de referencia sin dibujar)
V1 = T0*transl(0,c+e,0);
V2 = T1*transl(b,0,0);

%Dibujo los marcos de referencia
trplot(T0, 'frame', '0');
trplot(T1, 'frame', '1');
trplot(T2, 'frame', '2');

%Dibulo las líneas
dibujarLinea(T0, V1,"color",color)
dibujarLinea(T1, V1,"color",color)
dibujarLinea(T1, V2,"color",color)