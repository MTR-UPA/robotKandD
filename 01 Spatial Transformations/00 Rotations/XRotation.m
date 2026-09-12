clear; close; clc;

%% X Rotation
%-------------------------------------------------%

%First lets create a base framework with an identity matrix_type
base = eye(3);
trplot(base,'frame', '0','thick',2,'rgb',...
      'text_opts',{'FontSize',15}, 'length',1.3)
hold on
% Now lets create a X rotation over the base framework
% 30 degrees, remember that the angle must be in radians
xRot = base
trplot(xRot,'thick',2,'frame', '1','rgb','arrow','length',0.8,...
      'text_opts',{'FontSize',15}, 'framelabeloffset',-1.5)
view(60, 20)
