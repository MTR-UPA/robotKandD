clear; close; clc;

%% Y Rotation
%-------------------------------------------------%

%First lets create a base framework with an identity matrix_type
base = eye(3);
trplot(base,'frame', '0','thick',2,'rgb',...
      'text_opts',{'FontSize',20})
hold on
% Now lets create a X rotation over the base framework
% 30 degrees, remember that the angle must be in radians
yRot = base*roty(pi/6)
trplot(yRot,'frame', '1','thick',2,'rgb',...
      'text_opts',{'FontSize',20})
view(146, 10)
