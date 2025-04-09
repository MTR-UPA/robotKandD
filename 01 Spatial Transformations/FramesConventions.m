clc; clear; close;

%Dextro Rotatory Systems
%Right Handed Systems

%Here it's represented a dextrorotative framework
I = eye(4);
subplot(1,2,1)
trplot(I,'frame', '0','thick',2,'rgb',...
      'text_opts',{'FontSize',20})
view(58,16)

%Here it's represented a levorotative framework
I = eye(4)*trotx(pi);
subplot(1,2,2)
trplot(I,'frame', '0','thick',2,'rgb',...
      'text_opts',{'FontSize',20},'lefty')
view(-58,16)






