pkg load image

I = imread('Babuino.jpg');

OMin = ordfilt2(I,1,ones(3,3));
OMed = ordfilt2(I,5,ones(3,3));
OMax = ordfilt2(I,9,ones(3,3));


OMin5 = ordfilt2(I,1,ones(5,5));
OMed5 = ordfilt2(I,13,ones(5,5));
OMax5 = ordfilt2(I,24,ones(5,5));


subplot(4,2,1),imshow(I),title('Imagem original');
subplot(4,2,2),imshow(OMin),title('Ordfilt2 Min 3x3');
subplot(4,2,3),imshow(OMed),title('Ordfilt2 Med 3x3');
subplot(4,2,4),imshow(OMax),title('Ordfilt2 Max 3x3');
subplot(4,2,5),imshow(OMin5),title('Ordfilt2 Min 5x5');
subplot(4,2,6),imshow(OMed5),title('Ordfilt2 Med 5x5');
subplot(4,2,7),imshow(OMax5),title('Ordfilt2 Max 5x5');