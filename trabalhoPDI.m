I = imread("Placas/br_lbm-4000.jpg");
subplot(2,2,1),imshow(I);
%title('Imagem Original');

IG = rgb2gray(I);

msk = [0 0 0 0 0;
       0 1 1 1 0;
       0 1 1 1 0;
       0 0 0 0 0;];

IM = medfilt2(IG);
%imshow(IM);

s = fspecial('sobel');
sf = imfilter(IM,s,'symmetric');
subplot(2,2,2),imshow(sf);

%imshow(sf);

cc = bwconncomp(sf);
hold on
[c,h] = contour(IG); 

B = im2bw(sf,0.4);

IM = medfilt2(IG);
subplot(2,2,2),imshow(IM);

BWdfill = imfill(IM,'holes');
%imshow(BWdfill)

BWnobord = imclearborder(BWdfill,4);
%imshow(BWnobord)

seD = strel('diamond',1);
BWfinal = imerode(BWnobord,seD);
BWfinal = imerode(BWfinal,seD);
subplot(2,2,3),imshow(BWfinal);

%imshow(labeloverlay(I,BWfinal))

%f = imsubtract(BWfinal,IG);
%subplot(1,2,2),imshow(f);
f = imsubtract(BWfinal,IM);

subplot(2,2,4),imshow(f);
%title('Número da Placa');
