function  ShadePlot(Adrv, a, g, TgtAxes)
%MAKING THE SHADE PLOT

axes(TgtAxes);

Z= [-1 0 0;0 0 0;0 0 1];

% Ez = -2;%V/nm
% Ez = str2num(get(handles.editE,'String'));


% Pdrv = get(handles.editPdrv,'Value');



% Adrv = 1;

% Adrv = get(handles.editAdrv,'Value')

q = 1.602e-19;

% g = str2num(get(handles.editGamma,'String'));
% g=.05;
% H=zeros(3);

% a= str2num(get(handles.edita,'String'))*10^-9;
% a= 1e-9;
a1= sqrt(a^2 + (a^2)/4);


eps = 8.854e-12; %F/m



K=1/(4*pi*eps); 

nPd=100;
nEz=150;

NewH=zeros(3);
PtargetArray=zeros(nPd,nEz);


Ezv = linspace(-2.5,1,nEz);
Pd=linspace(-1,1,nPd);

for Pdidx = 1:nPd
    for Ezidx = 1 : nEz
        [q1 , q0] = FindQ(Pd(Pdidx),Adrv);%C
        NewH(1,1) = K*(q0/a - q0/a1 + q/a -q/a1 + q1/(a*sqrt(2)) - q1/a1);
        
        
        NewH(2,2) = -a*Ezv(Ezidx)*10^9/2;
        
        
        %  H(3,3) = ((q1*q)/(4*pi*eps*a)-(q1*q)/(4*pi*eps*a1)+(q*q)/(4*pi*eps*a)-(q*q)/(4*pi*eps*a1)+(q0*q)/(4*pi*eps*a*sqrt(2))-(q0*q)/(4*pi*eps*a1))/q
        NewH(3,3) = K*(q1/a - q1/a1 + q/a -q/a1 + q0/(a*sqrt(2)) - q0/a1);
        
        
        %filling in the 4 gamma spots
        NewH(2,1)=-g;
        NewH(3,2)=-g;
        NewH(1,2)=-g;
        NewH(2,3)=-g;
        
        [A,B] = eig(NewH);
        
        psi = A(:,1);
        
        Pt = psi' * Z * psi;
        
        Pn = [ 0 0 0; 0 1 0; 0 0 0 ];
        
        At = 1 - (psi' * Pn * psi);
        
        PtargetArray(Pdidx,Ezidx)=Pt;
        
    end

end

pcolor(Pd'*ones(1,nEz),ones(nPd,1)*Ezv,PtargetArray);
shading interp;
c=colorbar;
c.Label.String = 'Polarization of Target Cell';
end

