pkg load image

I = imread('cameraman.tif');

subplot(1,2,1),imshow(I);

I(:,:,1) = 255 - I(:,:,1);

subplot(1,2,2),imshow(I);

%Output = max(A)-A;
%subplot(1,2,2),imshow(Output);
