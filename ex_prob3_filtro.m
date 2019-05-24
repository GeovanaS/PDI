pkg load image

I = imread('Babuino.jpg');

subplot(4,4,1),imshow(I),title('Imagem Original');

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

M5 = fspecial("average",5);
Med5 = imfilter(I,M5,'symmetric');
C5 = fspecial("motion",5);
Cont5 = imfilter(I,C5,'symmetric');
G5 = fspecial("gaussian",5);
Ga5 = imfilter(I,G5,'symmetric');
Lap5 = fspecial("laplacian");
La5 = imfilter(I,Lap5,'symmetric');
L5 = fspecial("log",5); 
Log5 = imfilter(I,L5,'symmetric');

subplot(4,4,2),imshow(Med),title('Filtro Média 3x3');
subplot(4,4,3),imshow(C2),title('Filtro Contraste 3x3');
subplot(4,4,4),imshow(G2),title('Filtro Gaussiano 3x3');
subplot(4,4,5),imshow(Lap2),title('Filtro Laplaciano 3x3');
subplot(4,4,6),imshow(L2),title('Filtro Logaritmo 3x3');
subplot(4,4,7),imshow(S2),title('Filtro Sobel 3x3');
subplot(4,4,8),imshow(P2),title('Filtro Prewitt 3x3');

subplot(4,4,9),imshow(Med5),title('Filtro Média 5x5');
subplot(4,4,10),imshow(Cont5),title('Filtro Contraste 5x5');
subplot(4,4,12),imshow(Ga5),title('Filtro Gaussiano 5x5');
subplot(4,4,12),imshow(La5),title('Filtro Laplaciano 5x5');
subplot(4,4,13),imshow(Log5),title('Filtro Logaritmo 5x5');
