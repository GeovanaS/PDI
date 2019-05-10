#Motion blur (borramento de movimento)
pkg load image 

A = imread('peppers.png');
subplot(1,2,1),imshow(A);
k = fspecial('motion',50,54); % Cria um nucleo de convolução do tipo motion(mancha de movimento)

B = imfilter(A,k,'symmetric'); % Aplica filtro usando reflexão simétrica nas bordas
subplot(1,2,2),imshow(B);
