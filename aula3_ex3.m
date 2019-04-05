pkg load image
%Transformada Logarítmica
I = imread('cameraman.tif');

subplot(2,2,2),imshow(I);

Id = im2double(I);
Output1 = 2*log(1+Id);
Output2 = 3*log(1+Id);
Output3 = 5*log(1+Id);

subplot(2,2,2),imshow(Output1);
subplot(2,2,3),imshow(Output2);
subplot(2,2,4),imshow(Output3);