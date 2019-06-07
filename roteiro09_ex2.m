pkg load image
M = imread('mamo.jpeg');
%M = rgb2gray(M);
sel = strel('line',10,0);
M1 = imopen(M,sel);
sel1 = strel('disk',10,0);
M2 = imopen(M,sel1);
subplot(1,3,1),imshow(M),title('Imagem original');
subplot(1,3,2),imshow(M1),title('abertura por line');
subplot(1,3,3),imshow(M2),title('abertura por disk');
