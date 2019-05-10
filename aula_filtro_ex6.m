#Filtro por ranking
pkg load image

Im = ordfilt2(I,25,ones(5,5));
Ispm = ordfilt2(Isp,25,ones(5,5));
Igm = ordfilt2(Ig,25,ones(5,5));
subplot(1,3,1),imshow(Im);
subplot(1,3,2),imshow(Ispm);
subplot(1,3,3),imshow(Igm);