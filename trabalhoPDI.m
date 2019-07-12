I = imread("Placas/br_aih-2194_rear.jpg");
subplot(1,2,1),imshow(I);
title('Imagem Original');

IG = rgb2gray(I);

msk = [0 0 0 0 0;
       0 1 1 1 0;
       0 1 1 1 0;
       0 0 0 0 0;];

IM = medfilt2(IG);
%imshow(IM);

s = fspecial('sobel');
sf = imfilter(IM,s,'symmetric');
%imshow(sf);

cc = bwconncomp(sf);

BWdfill = imfill(IM,'holes');
%imshow(BWdfill)

BWnobord = imclearborder(BWdfill,4);
%imshow(BWnobord)

seD = strel('diamond',1);
BWfinal = imerode(BWnobord,seD);
BWfinal = imerode(BWfinal,seD);
%imshow(labeloverlay(I,BWfinal))

f = imsubtract(BWfinal,IG);
subplot(1,2,2),imshow(f);
title('Número da Placa');