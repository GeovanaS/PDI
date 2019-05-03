pkg load image

D = imread('onion.png'); %lê a imagem RGB em cores de 8 bits

Dh = D(:,:,1); %extrai o canal de matiz(primeiro canal)
Ds = D(:,:,2); %extrai o canal de saturação(segundo canal)
Dv = D(:,:,3); %extrai o canal de valor(terceiro canal)

rgb2hsv(D);

subplot(2,2,1);imshow(D);axis image; %exibe todos em um grafico 2x2
subplot(2,2,2);imshow(Dh);title('Canal de matiz');
subplot(2,2,3);imshow(Ds);title('Canal de saturação'); 
subplot(2,2,4);imshow(Dv);title('Canal de valor');