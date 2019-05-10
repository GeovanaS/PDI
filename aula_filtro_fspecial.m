#Motion blur (borramento de movimento)
pkg load image 

A = imread('peppers.png');
subplot(3,2,1),imshow(A),title('Imagem Original');
k = fspecial('motion',50,54); % Cria um nucleo de convolução do tipo motion(mancha de movimento)
f = fspecial('laplacian'); 
s = fspecial('sobel');
g = fspecial('kirsch');
p = fspecial('prewitt');

C = imfilter(A,f,'symmetric');
D = imfilter(A,s,'symmetric');
E = imfilter(A,g,'symmetric');
F = imfilter(A,p,'symmetric');
B = imfilter(A,k,'symmetric'); % Aplica filtro usando reflexão simétrica nas bordas
subplot(3,2,2),imshow(B),title('Filtro Motion Blur');
subplot(3,2,3),imshow(C),title('Filtro Laplacian');
subplot(3,2,4),imshow(D),title('Filtro Sobel');
subplot(3,2,5),imshow(E),title('Filtro Kirsch');
subplot(3,2,6),imshow(F),title('Filtro Prewitt');