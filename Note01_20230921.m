% One example of piecewise function
 
% f(x)=x,  for pi>x>0, 
% f(x)=-pi, for -pi<x<0
 
% Code for computing Fourier series.
 
% Fourier method
figure(1)
n=256;
x=[1:n]/n*2*pi;
f=x.*(x<=pi)+(-pi).*(x>pi);
plot(x,f)
figure(2)
N=20;
a0=sum(f)*(2*pi/n)/pi;
for ii=1:N
    a(ii)=sum(f.*cos(ii*x)*2*pi/n)/pi;
    b(ii)=sum(f.*sin(ii*x)*2*pi/n)/pi;
    
end
for ii=1:20
    u=zeros(1,n)+a0/2;
    for jj=1:ii
    u=u+a(jj)*cos(jj*x)+b(jj)*sin(jj*x);
    end
    plot(x,u);
    axis([0 2*pi -pi*1.5 pi*1.5])
    title(ii)
    ginput(1)
end