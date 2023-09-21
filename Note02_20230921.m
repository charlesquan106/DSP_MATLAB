% Let f be some image. For instance, f=zeros(400,400);
% f(48:52,48:52)=1,  or other images. 
% f=zeros(400,400)
% f(48:52,48:52)=1

f=zeros(1000,1000)
f(48:56,48:50)=1
F=fft2(f);
S=abs(F); imshow(S,[])
% 加上 Log
S1=log(1+abs(F));
% 加上 Log，再把低頻放在中央，高頻放在四個角（比較接近物理上）
figure, imshow(S1,[])
Fc=fftshift(F); %低頻位置放在中央
figure, imshow(abs(Fc),[])
 
S2=log(1+abs(Fc)); 
figure, imshow(S2,[])
 
phi=angle(F);
figure, imshow(phi,[])


% 傅立葉轉換主要關注 絕對值 和 相位角；
% 相位角 主要應用在雷達波確定位置；