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
T3 = T2*transl(e,0,a)*troty(90);
T4 = T3*transl(d,0,c)*troty(-90)*trotz(90);
T5 = T4*transl(b,0,d)*trotz(90)*trotx(-90);


%Construye los vértices (son marcos de referencia sin dibujar)
V1 = T0*transl(0,c+e,0);
V2 = T1*transl(b,0,0);
V3 = T2*transl(e,0,f);
V4 = T3*transl(0,0,c);
V5 = T5*transl(c,0,0);
V6 = T1*transl(0,0,e);
V7 = T0*transl(0,0,f);

%Dibujo los marcos de referencia
trplot(T0, 'frame', '0');
trplot(T1, 'frame', '1');
trplot(T2, 'frame', '2');
trplot(T3, 'frame', '3');
trplot(T4, 'frame', '4');
trplot(T5, 'frame', '5');

%Dibulo las líneas
dibujarLinea(T0, V1,"color",color);
dibujarLinea(T1, V1,"color",color);
dibujarLinea(T1, V2,"color",color);
dibujarLinea(T2, V1,"color",color);
dibujarLinea(T2, V2,"color",color);
dibujarLinea(V3, V2,"color",color);
dibujarLinea(T3, V3,"color",color);
dibujarLinea(T3, V4,"color",color);
L1 = dibujarLinea(T4, V4,"color",color);
set(L1,'LineStyle','--');
L1 = dibujarLinea(T4, V3,"color",color);
set(L1,'LineStyle','--');
dibujarLinea(T5, V4,"color",color);
dibujarLinea(T5, V5,"color",color);
dibujarLinea(T3, V5,"color",color);
dibujarLinea(V6, V5,"color",color);
L1 = dibujarLinea(V6, V3,"color",color);
set(L1,'LineStyle','--');
dibujarLinea(V6, T1,"color",color);
dibujarLinea(T0, T5,"color",color);
L1 = dibujarLinea(V7, V6,"color",color);
set(L1,'LineStyle','--');
L1 = dibujarLinea(V7, T4,"color",color);
set(L1,'LineStyle','--');