#Motion blur (borramento de movimento)
pkg load image 

A = imread('peppers.png');
subplot(2,2,1),imshow(A),title('Imagem Original');
k = fspecial('motion',50,54); % Cria um nucleo de convolução do tipo motion(mancha de movimento)
f = fspecial('laplacian'); 
s = fspecial('sobel');

C = imfilter(A,f,'symmetric');
D = imfilter(A,s,'symmetric');

B = imfilter(A,k,'symmetric'); % Aplica filtro usando reflexão simétrica nas bordas
subplot(2,2,2),imshow(B),title('Filtro Motion Blur');

subplot(2,2,3),imshow(C),title('Filtro Laplacian');

subplot(2,2,4),imshow(D),title('Filtro Sobel');
