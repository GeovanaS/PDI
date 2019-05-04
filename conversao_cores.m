pkg load image

I = imread('onion.png');

%RGB
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);
subplot(4,4,1); imshow(I); title('RGB');
subplot(4,4,2); imshow(R); title('Red');
subplot(4,4,3); imshow(G); title('Green');
subplot(4,4,4); imshow(B); title('Blue');

%CMY
C = (255 - R);
M = (255 - G);
Y = (255 - B);

IC(:,:,1) = C;
IC(:,:,2) = M;
IC(:,:,3) = Y;
subplot(4,4,5); imshow(IC); title('CMY')
subplot(4,4,6); imshow(C); title('C');
subplot(4,4,7); imshow(M); title('M');
subplot(4,4,8); imshow(Y); title('Y');

%HSV
IH = rgb2hsv(I);
H = IH(:,:,1);
S = IH(:,:,2);
V = IH(:,:,3);
subplot(4,4,9); imshow(IH); title('HSV');
subplot(4,4,10); imshow(H); title('H');
subplot(4,4,11); imshow(S); title('S');
subplot(4,4,12); imshow(V); title('V');

%LAB
IL = rgb2lab(I);
L = IL(:,:,1);
A = IL(:,:,2);
Bl = IL(:,:,3);
subplot(4,4,13); imshow(IL); title('LAB');
subplot(4,4,14); imshow(L); title('L');
subplot(4,4,15); imshow(A); title('A');
subplot(4,4,16); imshow(Bl); title('B');
