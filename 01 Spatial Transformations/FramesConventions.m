clc; clear; close;

%Dextro Rotatory Systems
%Right Handed Systems

I = eye(4);
figure()
trplot(I,'frame', '0','thick',2,'rgb',...
      'text_opts',{'FontSize',20})
view(58,16)

I = eye(4)*trotx(pi);
figure()
trplot(I,'frame', '0','thick',2,'rgb',...
      'text_opts',{'FontSize',20},'lefty')
view(-58,16)

