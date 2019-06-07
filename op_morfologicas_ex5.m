pkg load image
A = imread('circles.png');
bw = bwperim(A);
se = strel('disk',5,0);bw1=A-imerode(A,se);
subplot(1,3,1),imshow(A);
subplot(1,3,2),imshow(bw);
subplot(1,3,3),imshow(bw1);