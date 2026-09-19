function cilindro(r, h, T)
[x,y,z] = cylinder(r, 80);

z = z * h - h/2;    % va de -h/2 a +h/2

p = T(1:3,1:3) * [x(:)'; y(:)'; z(:)'] + T(1:3,4);

surf(reshape(p(1,:),size(x)), ...
    reshape(p(2,:),size(y)), ...
    reshape(p(3,:),size(z)), ...
     'FaceColor',[0.2 0.7 0.9], ...
          'EdgeColor','none')


%     camlight
%     lighting gouraud
end
