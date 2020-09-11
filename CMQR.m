%%% geometria
clear all 

x=-1:.01:1;

f=2*x.^2+2*x.*sqrt(1-x.^2)+2*(1-x.^2);

[a M]=max(f)
[b m]=min(f)

%%% calculo de CM  MV=N  funciones poinomicas
M= [ 1 -1;1 0 ;1 1; 1 2; 1 3]; N=[3; 0;-2;2 ; -4];
MM=M'*M;
V=(MM)^(-1)*(M'*N);
x=[-1; 0; 1;2;3];
xx = -3:.1:3;
r=V(1)+xx.*V(2);
[u S V]=svd(M);
[Q R]=qr(M);
plot(x,N,'o',xx,r)


%%% Cuadrados minimos funcionales
X=[-pi:.001:0 .01:.001:pi];
Y=[-1*ones(1,3150) ones(1,3124)];X=X';
size(X)
size(Y)
A1=sin(X);A2=cos(X);A3=sin(2.*X);A4=cos(2.*X);A5=sin(3.*X);A6=cos(3.*X);
A=1/2*pi*horzcat(A1,A2,A3,A4,A5,A6);
P=A'*A;
B=P\A'*Y';
y=B(1).*sin(X)+B(2).*cos(X)+B(3).*sin(2.*X)+B(4).*cos(2.*X)+B(5).*sin(3.*X)+B(6).*cos(3.*X);
plot(X,y)
