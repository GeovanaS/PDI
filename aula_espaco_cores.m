pkg load image

B = imread('cell.tif');
C = imread('spine.tif');
D = imread('onion.png');

figure,imagesc(B);
%subplot(3,1,1);imagesc(B);axis image;
axis off; colormap(gray);
figure,imagesc(C);
%subplot(3,1,2);imagesc(C);axis image;
axis off; colormap(jet); %especifica jet como mapa de cor(falsa cor)
figure,imagesc(D);
%subplot(3,1,3);imshow(D);