pkg load image

I = imread('wally.jpg');

I = rgb2yiq(I);
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

R = R/155;
G = G/255;
B = B/255;

y = 0.299 * R + 0.587 * G + 0.114 * B;
i = 0.596 * R - 0.274 * G - 0.322 * B;
q = 0.211 * R - 0.523 * G + 0.312 * B;

I(:,:,1) = y*255;
I(:,:,2) = i*255;
I(:,:,3) = q*255;

yiq = uint8(I);

subplot(2,2,1), imshow(I),title("Imagem Original");
subplot(2,2,2), imshow(R), title("Red");
subplot(2,2,3), imshow(G), title("Green");
subplot(2,2,4), imshow(B), title("Blue");