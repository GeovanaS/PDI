pkg load image

RM = imread('RM.jpg');

sel = strel('ball',5,5);
RM1 = imerode(RM,sel);
RM2 = imdilate(RM,sel);

subplot(1,3,1),imshow(RM),title('Imagem original');
subplot(1,3,2),imshow(RM1),title('Imagem erosionada');
subplot(1,3,3),imshow(RM2),title('magem dilatada');

