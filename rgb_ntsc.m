pkg load image

I = imread('wally.jpg');
info = imfinfo('wally.jpg');

I = rgb2ntsc(I);
R = I;
G = I;
B = I;

for i = 1: info.Height
  for j = 1:info.Width
    if(!((I(i,j,2) < 0.35) && (I(i,j,3) > -0.2 || (I(i,j,3) < 0.2) )))
      R(i,j,2) = 0;
      R(i,j,3) = 0;
    endif
    if(!((I(i,j,3) < -0.15) && (I(i,j,2) > -0.4 || (I(i,j,2) < 0.2))))
      G(i,j,2) = 0;
      G(i,j,3) = 0;
    endif
    if(!((I(i,j,2) < -0.35) && (I(i,j,3) > -0.2 || (I(i,j,3) < 0.2) )))
      B(i,j,2) = 0;
      B(i,j,3) = 0;
    endif
  endfor
endfor

I = ntsc2rgb(I);
R = ntsc2rgb(R);
G = ntsc2rgb(G);
B = ntsc2rgb(B);

subplot(2,2,1), imshow(I),title("Imagem Original");
subplot(2,2,2), imshow(R), title("Red");
subplot(2,2,3), imshow(G), title("Green");
subplot(2,2,4), imshow(B), title("Blue");