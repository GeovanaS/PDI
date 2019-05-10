#Filtro da mediana

Im = medfilt2(I,[3 3]); % aplica a imagem original
Ispm = medfilt2(Isp,[3 3]);%aplica a imagem salt and pepper
Igm = medfilt2(Ig,[3 3]); %aplica a imagem Gaussian
subplot(1,3,1),imshow(Im); 
subplot(1,3,2),imshow(Ispm);
subplot(1,3,3),imshow(Igm);