clear; close; clc;

%% X Rotation
%-------------------------------------------------%

%First lets create a base framework with an identity matrix_type
base = eye(3);
trplot(base,'frame', '0','thick',2,'rgb',...
      'text_opts',{'FontSize',20})
hold on
% Now lets create a X rotation over the base framework
xRot = base*rotx(pi/6) % 30 degrees
trplot(xRot,'frame', '1','thick',2,'rgb',...
      'text_opts',{'FontSize',20})
view(60, 20)
