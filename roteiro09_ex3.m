pkg load image

A = imread('circles.png');
se2 = strel('disk',10,0);
ACLO = imclose(A,se2);
subplot(1,2,1),imshow(A),title('Imagem original');
subplot(1,2,2),imshow(ACLO),title('Imagem "fechada"');