pkg load image

bw = imread('text.png');
se2 = strel('line',11,90);
bw2 = imdilate(bw,se2);
subplot(1,2,1),imshow(bw),title('Imagem original');
subplot(1,2,2),imshow(bw2),title('Imagem dilatada');

