pkg load image

D = imread('onion.png'); %lê a imagem RGB em cores de 8 bits
Dgray = rgb2gray(D); %converte-a em uma imagem em escala de cinza
subplot(1,2,1);imshow(D);axis image; %exibe as duas lado a lado
subplot(1,2,2);imshow(Dgray);