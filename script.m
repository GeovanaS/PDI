pkg load image

toycar1 = imread('toycars1.png');
toycar2 = imread('toycars2.png');
toycar3 = imread('toycars3.png');

soma1 = imadd(toycar1/3, toycar2/3);
soma2 = imadd(soma1, toycar3/3);

imshow(soma2);