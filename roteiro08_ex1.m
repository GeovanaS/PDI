pkg load image

ORIGBW = imread('circles.png');
se = strel('disk',11,0);
EROSBW = imerode(ORIGBW,se);
subplot(1,2,1),imshow(ORIGBW);title('Imagem Original');
subplot(1,2,2),imshow(EROSBW);title('Imagem Erosionada');
