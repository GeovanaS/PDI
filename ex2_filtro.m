pkg load image

I = imread('Babuino.jpg');

M = medfilt2(I,[3 3]);
M2 = medfilt2(I,[5 5]);

subplot(1,3,1),imshow(I),title('Imagem original');
subplot(1,3,2),imshow(M),title('Mediana 3x3');
subplot(1,3,3),imshow(M2),title('Mediana 5x5');