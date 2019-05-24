pkg load image

I = imread('Babuino.jpg');

W = wiener2(I,[3 3]);
W2 = wiener2(I,[5 5]);

subplot(1,3,1),imshow(I),title('Imagem original');
subplot(1,3,2),imshow(W),title('Wiener 3x3');
subplot(1,3,3),imshow(W2),title('Wiener 5x5');