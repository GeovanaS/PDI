pkg load image

RM = imread('RM.jpg');

sel = strel('ball',5,5);
RM1 = imerode(RM,sel);
subplot(1,2,1),imshow(RM),title('Imagem original');
subplot(1,2,2),imshow(RM1),title('Imagem erosionada');