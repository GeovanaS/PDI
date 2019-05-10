pkg load image

I = imread('eight.tif');
subplot(1,3,1),imshow(I);
Isp = imnoise(I,'salt & pepper',0.03);
subplot(1,3,2),imshow(Isp);
Ig = imnoise(I,'gaussian',0.02);
subplot(1,3,3),imshow(Ig);