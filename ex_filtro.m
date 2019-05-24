pkg load image

I = imread('Babuino.jpg');

G = imnoise(I,"gaussian",0,0.005);
G2 = imnoise(I,"gaussian",0,0.05);
S = imnoise(I,"salt & pepper",0.1);
S2 = imnoise(I,"salt & pepper",0.3);
M = imnoise(I,"speckle",0.01);
M2 = imnoise(I,"speckle",0.05);

subplot(3,3,1),imshow(I),title('Imagem Original');
subplot(3,3,2),imshow(G),title('Gaussian 0.005');
subplot(3,3,3),imshow(G2),title('Gaussian 0.05');
subplot(3,3,4),imshow(S),title('Salt & Pepper 0.1');
subplot(3,3,5),imshow(S2),title('Salt & Pepper 0.3');
subplot(3,3,6),imshow(M),title('Speckle 0.01');
subplot(3,3,7),imshow(M2),title('Speckle 0.05');