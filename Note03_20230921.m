close all
tw=imread('twins.jpg');
t=rgb2gray(tw);
t_sp=imnoise(t,'salt & pepper'); % default is 10% of its pixels corrupted by noise
%t_sp=imnoise(t,'salt & pepper',0.2);
figure(1)
imshow(t_sp) % salt-and-pepper noise
t_ga=imnoise(t,'gaussian'); % Gaussian noise
figure(2)
imshow(t_ga)
t_spk=imnoise(t,'speckle'); % speckle noise
figure(3)
imshow(t_spk)
%% cleaning Salt Pepper noise
% low pass filtering
a3=fspecial('average'); % 3x3
t_sp_a3=filter2(a3,t_sp);
figure(4)
imshow(t_sp_a3,[]) % Is it good? Please compare with figure 1
a7=fspecial('average',[7 7]);
t_sp_a7=filter2(a7,t_sp);
figure(5)
imshow(t_sp_a7,[]) % Is it good?
% median filtering
t_sp_m3=medfilt2(t_sp);
figure(6)
imshow(t_sp_m3,[]) % Is it good?