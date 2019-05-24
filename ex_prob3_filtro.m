pkg load image

I = imread('Babuino.jpg');

subplot(4,2,1),imshow(I),title('Imagem Original');

M = fspecial("average",3); 
Med = imfilter(I,M,'symmetric');
C = fspecial("motion",3);
C2 = imfilter(I,C,'symmetric');
G = fspecial("gaussian",3);
G2 = imfilter(I,G,'symmetric');
Lap = fspecial("laplacian");
Lap2 = imfilter(I,Lap,'symmetric');
L = fspecial("log",3); 
L2 = imfilter(I,L,'symmetric');
S = fspecial("sobel"); 
S2 = imfilter(I,S,'symmetric');
P = fspecial("prewitt");
P2 = imfilter(I,P,'symmetric');

subplot(4,2,2),imshow(Med),title('Filtro Média 3x3');
subplot(4,2,3),imshow(C2),title('Filtro Contraste 3x3');
subplot(4,2,3),imshow(G2),title('Filtro Gaussiano 3x3');
subplot(4,2,4),imshow(Lap2),title('Filtro Laplaciano 3x3');
subplot(4,2,5),imshow(L2),title('Filtro Logaritmo 3x3');
subplot(4,2,6),imshow(S2),title('Filtro Sobel 3x3');
subplot(4,2,7),imshow(P2),title('Filtro Prewitt 3x3');