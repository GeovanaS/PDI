pkg load image

I = imread('onion.png'); %lê a imagem RGB em cores de 8 bits
Canal1 = I(:,:,1);
figure(1),imshow(Canal1)
Canal2 = I(:,:,2);
figure(2),imshow(Canal2)
Canal3 = I(:,:,3);
figure(3),imshow(Canal3);

Ic = 0.2989 * I(:,:,1)+0.5870*I(:,:,2)+0.1140*I(:,:,3);
figure(4),imshow(Ic);
Bt = 0.2125 * I(:,:,1)+0.7154*I(:,:,2)+0.0721*I(:,:,3);
figure(5),imshow(Bt);
G = (3*Canal1+4*Canal2+2*Canal3)/9;
figure(6),imshow(G);
D = 1.3 * I(:,:,1)+1.3*I(:,:,2)+1.3*I(:,:,3);
figure(7),imshow(D);