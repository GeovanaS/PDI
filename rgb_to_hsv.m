pkg load image

I = imread('wally.jpg');
info = imfinfo('wally.jpg');

I = rgb2hsv(I);
R = I;
G = I;
B = I;

for i = 1: info.Height
  for j = 1: info.Width
   if(I(i,j,1) > 0.05 && I(i,j,1) < 0.95)
      R(i,j,2) = 0;
   endif
   if(I(i,j,1) < 0.22 || I(i,j,1) > 0.47)
      G(i,j,2) = 0;
   endif
   if(I(i,j,1) < 0.54 || I(i,j,1) > 0.74)
      B(i,j,2) = 0;   
   endif
  endfor
endfor

I = hsv2rgb(I);
R = hsv2rgb(R);
G = hsv2rgb(G);
B = hsv2rgb(B);

subplot(2,2,1),imshow(I), title("Imagem original");
subplot(2,2,2),imshow(R),title("Red");
subplot(2,2,3),imshow(G),title("Green");
subplot(2,2,4),imshow(B),title("Blue");
