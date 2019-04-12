pkg load image

I = imread('cameraman.tif');

subplot(2,2,1),imshow(I);

Id = im2double(I);
Ouput1 = 2*(Id.^0.5);
Ouput2 = 2*(Id.^1.5);
Ouput3 = 2*(Id.^3.0);

subplot(2,2,2),imshow(Ouput1);
subplot(2,2,3),imshow(Ouput2);
subplot(2,2,4),imshow(Ouput3);

X = 0:255;
%X1=0:0.0039:1;
X2=mat2gray(X);

Y1 = uint8(255*(2*(X2.^0.5)));
Y2 = uint8(255*(2*(X2.^1.5)));
Y3 = uint8(255*(2*(X2.^3.0)));
figure, 
subplot(3,2,2), plot(X,Y1);
legend('2*(Id.^0.5)');
axis([0 255 0 255]);
subplot(3,2,1), imshow(Output1);

subplot(3,2,4), plot(X,Y2);
legend('2*(Id.^1.5)');
axis([0 255 0 255]);
subplot(3,2,3), imshow(Output2);

subplot(3,2,6), plot(X,Y3);
legend('2*(Id.^3.0)');
axis([0 255 0 255]);
subplot(3,2,5), imshow(Output3);
