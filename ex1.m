pkg load image

football1 = imread('football.jpg');

football = rgb2gray(football1);
imshow(football)

PQ = paddedsize(size(football));

D0 = 0.05*PQ(1);
H = hpfilter('gaussian', PQ(1), PQ(2), D0);

F = fft2(double(football),size(H,1),size(H,2));

HPFS_football = H.*F;

HPFS_football = real(ifft2(HPFS_football));

HPFS_football = HPFS_football(1:size(football,1),1:size(football,2));

figure,imshow(HPFS_football,[])

Fc =  fftshift(F);
Fcf =  fftshift(HPFS_football);

S1 = log(1+abs(Fc));
S2 = log(1+abs(Fcf));
figure,imshow(S1,[])
figure,imshow(S2,[])

