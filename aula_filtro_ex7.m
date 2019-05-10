#Remoção de ruido
pkg load image

k = fspecial('gaussian',[5 5],2);
Ig = imfilter(I,k);
Ispg = imfilter(Isp,k);
Igg = imfilter(Ig,k);
subplot(1,3,1),imshow(Ig);
subplot(1,3,2),imshow(Ispg);
subplot(1,3,3),imshow(Igg);