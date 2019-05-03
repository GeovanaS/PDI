pkg load image

D = imread('onion.png'); %lê a imagem RGB em cores de 8 bits

Dred = D(:,:,1); %extrai o canal vermelho(primeiro canal)
Dgreen = D(:,:,2); %extrai o canal verde(segundo canal)
Dblue = D(:,:,3); %extrai o canal azul(terceiro canal)

subplot(2,2,1);imshow(D);axis image; %exibe todos em um grafico 2x2
subplot(2,2,2);imshow(Dred);title('red');
subplot(2,2,3);imshow(Dgreen);title('green'); 
subplot(2,2,4);imshow(Dblue);title('blue');