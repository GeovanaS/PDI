pkg load image

I = imread('snowflakes.png');
se = strel('disk',3,0);
IOPEN = imopen(I,se);
subplot(1,2,1),imshow(I),title('Imagem original');
subplot(1,2,2),imshow(IOPEN),title('Imagem aberta');