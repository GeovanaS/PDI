pkg load image

I = imread('football.jpg');

IR = I(:,:,1);
IG = I(:,:,2);
IB = I(:,:,3);

IR = 255 - I(:,:,1);
IG = 255 - I(:,:,2);
IB = 255 - I(:,:,3);

subplot(2,2,1),imshow(I);axis image;

subplot(2,2,2),imshow(IR);
subplot(2,2,3),imshow(IG);
subplot(2,2,4),imshow(IB);