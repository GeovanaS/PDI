pkg load image

B = imread('cell.tif');
%imview(B); %examina a imagem em escala de cinza com o visor interativo
imshow(B);
D = imread('onion.png');
imshow(B);
%imview(B); 

B(25,50) %imprime o valor do pixel na posição (25,50)
B(25,50)=255;
figure,imshow(B);

D(25,50,:) %imprime o valor do pixel RGB na posicao (25,50)
D(25,50,1) %imprime apenas o valor do vermelho
%D(25,50,2) %imprime apenas o valor do verde

D(25,50,:)=[255,255,255]; %especifica o valor do pixel como branco RGB
figure,imshow(D);