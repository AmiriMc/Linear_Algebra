% 2D input vector
v = [ 3 -2 ]';
thetas = linspace(0,2*pi,100);

% initialize
vecmags = zeros(length(thetas),2);

for i=1:length(thetas)

  % rotation angle (specify in radians)

  theta = thetas(i);

  % 2x2 impure transformation matrix
  A = [ 2*cos(theta) -sin(theta);
        sin(theta) cos(theta) ];

  % 2x2 pure transformation matrix
  B = [ cos(theta) -sin(theta);
        sin(theta) cos(theta) ];

  % output vector is Av (convert v to column)
  vecmags(i,1) = norm(A*v);
  vecmags(i,2) = norm(B*v);
 end
% plotting
clf
plot(thetas,vecmags,'linew',3)
ylabel('Av magnitude'), xlabel('Angle (rad.)')
legend({'impure rotation'; 'pure rotation'})
% RUN CORRESPONDING PLOT ON LINE 109 of PROVIDED WKBK FOR THIS SECTION!!

