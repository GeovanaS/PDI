pkg load image

M = imread('mamo.jpeg');
sel = strel('line',10,0);
MF1 = imclose(M,sel);
sel1 = strel('disk',10,0);
MF2 = imclose(M,sel1);
subplot(1,3,1),imshow(M),title('Imagem original');
subplot(1,3,2),imshow(MF1),title('Fechamento por line');
subplot(1,3,3),imshow(MF2),title('Fechamento por disk');
