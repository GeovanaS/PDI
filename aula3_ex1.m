pkg load image

A = imread('cameraman.tif');
subplot(1,2,1),imshow(A);
B = imcomplement(A);
subplot(1,2,2),imshow(B);