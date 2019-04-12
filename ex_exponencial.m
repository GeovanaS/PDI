pkg load image

I = imread('cameraman.tif');
subplot(2,2,1),imshow(I);
Id = im2double(I);

Ouput1 = 4*(((1+0.3).^(Id))-1);
Ouput2 = 4*(((1+0.4).^(Id))-1);
Ouput3 = 4*(((1+0.6).^(Id))-1);

subplot(2,2,2),imshow(Ouput1);
subplot(2,2,3),imshow(Ouput2);
subplot(2,2,4),imshow(Ouput3);

X = 0:255;
%X1=0:0.0039:1;
X2=mat2gray(X);

Y1 = uint8(255*(4*(((1+0.3).^(X2))-1)));
Y2 = uint8(255*(4*(((1+0.4).^(X2))-1)));
Y3 = uint8(255*(4*(((1+0.6).^(X2))-1)));

figure, 
subplot(3,2,2), plot(X,Y1);
legend('4*(((1+0.3).^(X))-1)');
axis([0 255 0 255]);
subplot(3,2,1), imshow(Output1);

subplot(3,2,4), plot(X,Y2);
legend('4*(((1+0.4).^(X))-1)');
axis([0 255 0 255]);
subplot(3,2,3), imshow(Output2);

subplot(3,2,6), plot(X,Y3);
legend('4*(((1+0.6).^(X))-1)');
axis([0 255 0 255]);
subplot(3,2,5), imshow(Output3);