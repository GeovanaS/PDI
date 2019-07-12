I = imread("Placas/br_lbm-4000.jpg");
subplot(2,2,1),imshow(I);
%title('Imagem Original');

%Escala cinza
IG = rgb2gray(I);

%Aplica o filtro de sobel para detectar as bordas
s = fspecial('sobel');
sf = imfilter(IM,s,'symmetric');
subplot(2,2,2),imshow(sf);

%Binariza a imagem
B = im2bw(sf,0.4);

% Aplica o filtro da media
IM = medfilt2(IG);
subplot(2,2,2),imshow(IM);

% Filtro
BWdfill = imfill(IM,'holes');
%imshow(BWdfill)

% Limpa as bordas
BWnobord = imclearborder(BWdfill,4);
%imshow(BWnobord)

%Erosão
seD = strel('diamond',1);
BWfinal = imerode(BWnobord,seD);
BWfinal = imerode(BWfinal,seD);
subplot(2,2,3),imshow(BWfinal);

% Retorna a diferença entre a imagem erosada e a imagem filtrada
f = imsubtract(BWfinal,IM);

subplot(2,2,4),imshow(f);
%title('Número da Placa');
