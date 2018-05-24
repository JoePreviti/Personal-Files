function GroundState3DotPrac(handles)

Z= [-1 0 0;0 0 0;0 0 1];

% Ez = -2;%V/nm
Ez = str2num(get(handles.editE,'String')); 


Pdrv = get(handles.editPdrv,'Value');

% Pdrv = 1;

% Adrv =1;

Adrv = get(handles.editAdrv,'Value');

q = 1.602e-19;

g = str2num(get(handles.editGamma,'String'));
% g=.05;
H=zeros(3);

a= str2num(get(handles.edita,'String'))*10^-9;
% a= 1e-9;
a1= sqrt(a^2 + (a^2)/4);


eps = 8.854e-12; %F/m


[q1 , q0] = FindQ(Pdrv,Adrv);%C


%filling H
%  H(1,1) = ((q0*q)/(4*pi*eps*a)-(q0*q)/(4*pi*eps*a1)+(q*q)/(4*pi*eps*a)-(q*q)/(4*pi*eps*a1)+(q1*q)/(4*pi*eps*a*sqrt(2))-(q1*q)/(4*pi*eps*a1))/q
K=1/(4*pi*eps); 
H(1,1) = K*(q0/a - q0/a1 + q/a -q/a1 + q1/(a*sqrt(2)) - q1/a1);

 
H(2,2) = -a*Ez*10^9/2;

 
%  H(3,3) = ((q1*q)/(4*pi*eps*a)-(q1*q)/(4*pi*eps*a1)+(q*q)/(4*pi*eps*a)-(q*q)/(4*pi*eps*a1)+(q0*q)/(4*pi*eps*a*sqrt(2))-(q0*q)/(4*pi*eps*a1))/q
H(3,3) = K*(q1/a - q1/a1 + q/a -q/a1 + q0/(a*sqrt(2)) - q0/a1);


 %filling in the 4 gamma spots
 H(2,1)=-g;
 H(3,2)=-g;
 H(1,2)=-g;
 H(2,3)=-g;

 [A,B] = eig(H);

psi = A(:,1);

Pt = psi' * Z * psi;

Pn = [ 0 0 0; 0 1 0; 0 0 0 ];

At = 1 - (psi' * Pn * psi);

ThreeDotGraph( Pdrv,Adrv,Pt,At,handles.MainAxes );
ShadePlot(Adrv, a, g, handles.SecondAxes);
% c=colorbar;
% c.Label.String = 'Polarization of Target Cell';
end