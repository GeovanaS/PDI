%filtro da média
pkg load image

k = ones(3,3)/9; % define filtro da média
Im = imfilter(I,k); % aplica a imagem original
Ispm = imfilter(Isp,k); %aplica a imagem salt and pepper
Igm = imfilter(Ig,k); %aplica a imagem Gaussian
subplot(1,3,1),imshow(Im);
subplot(1,3,2),imshow(Ispm);
subplot(1,3,3),imshow(Igm);
