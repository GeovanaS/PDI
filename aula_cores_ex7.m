pkg load image

I = imread('onion.png'); %lê a imagem RGB em cores de 8 bits
CanalR = I(:,:,1);
CanalG = I(:,:,2);
CanalB = I(:,:,3);

%CanalC = 1 - CanalR;
%CanalM = 1 - CanalG;
%CanalY = 1 - CanalB;

CanalC = 255 - CanalR;
CanalM = 255 - CanalG;
CanalY = 255 - CanalB;

figure,imshow(CanalC);
figure,imshow(CanalM);
figure,imshow(CanalY);