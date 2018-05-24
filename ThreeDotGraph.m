function ThreeDotGraph( Pdrv,Adrv,Pt,At,TgtAxes )
%plot driven 3 dot cell
% model of how a 3 dot cell works under driver and E field circumstances
% f=figure;
% a=axes;
% a=1e-12;
% Adrv=1;
% Pdrv=.5;
% Ez=-1;
% Pt=.5;
% Dots
axes(TgtAxes);

circle(-1, 1, 1/4, [1 1 1], 'EdgeColor', [0 0 0],'Points',30);
circle(-1, 0, 1/4, [1 1 1], 'EdgeColor', [0 0 0],'Points',30);
circle(-1,-1, 1/4, [1 1 1], 'EdgeColor', [0 0 0],'Points',30);

circle(1, 1, 1/4, [1 1 1], 'EdgeColor', [0 0 0],'Points',30);
circle(1, 0, 1/4, [1 1 1], 'EdgeColor', [0 0 0],'Points',30);
circle(1,-1, 1/4, [1 1 1], 'EdgeColor', [0 0 0],'Points',30);

% Electrons: consider how the activation of driver and target affects it
rDrv0 = 0.5*(Pdrv-1);
% rDrvN = .5*(Pdrv);
rDrv1 = 0.5*(Pdrv+1);
circle(-1, 1, Adrv*rDrv0/5, [1 0 0], 'EdgeColor', [1 0 0]);
% circle(-1, 0, rDrvN/5, [1 0 0], 'EdgeColor', [1 0 0]);
circle(-1,-1, Adrv*rDrv1/5, [1 0 0], 'EdgeColor', [1 0 0]);


rTgt0 = 0.5*(Pt-1);
rTgt1 = 0.5*(Pt+1);
circle(1, 1, At*rTgt0/5, [1 0 0], 'EdgeColor', [1 0 0]);
% circle(1, 0, rTgt1/5, [1 0 0], 'EdgeColor', [1 0 0]);
circle(1,-1, At*rTgt1/5, [1 0 0], 'EdgeColor', [1 0 0]);

% line(-0.5*[1 1], 0.25*[-1 1], 'LineWidth', 2, 'Color', [0 0 0]);
% 
% line(0.5*[1 1], 0.25*[1 -1], 'LineWidth', 2, 'Color', [0 0 0]);

axis equal

set(gca, 'XTickLabel', []);
set(gca, 'YTickLabel', []);


end

