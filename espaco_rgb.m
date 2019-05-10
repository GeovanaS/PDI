pkg load image

I = imread('wally.jpg');
info = imfinfo('wally.jpg');

R = I;
G = I;
B = I;

for i = 1: info.Height
  for j = 1:info.Width
    if( (I(i,j,1) < 80) || (I(i,j,2) > 80) || (I(i,j,3) > 100) )
      R(i,j,:) = I(i,j,1) * 0.299 + I(i,j,2) * 0.587 + I(i,j,3) * 0.114;
    endif
    if( (I(i,j,1) > 120) || (I(i,j,2) < 80) || (I(i,j,3) > 140) )
      G(i,j,:) = I(i,j,1) * 0.299 + I(i,j,2) * 0.587 + I(i,j,3) * 0.114;
    endif
    if( (I(i,j,1) > 100) || (I(i,j,2) > 120) || (I(i,j,3) < 80) )
      B(i,j,:) = I(i,j,1) * 0.299 + I(i,j,2) * 0.587 + I(i,j,3) * 0.114;
    endif
  endfor
endfor

subplot(2,2,1), imshow(I),title("Imagem Original");
subplot(2,2,2), imshow(R), title("Red");
subplot(2,2,3), imshow(G), title("Green");
subplot(2,2,4), imshow(B), title("Blue");