pkg load image

#Thresholdi automático 

f = imread('texto.bmp');
hf = imhist(f);
figure,imshow(f),figure,plot(hf)
T1 = 0.5*(double(min(f(:)))+double(max(f(:))));
done = false;
while ~done
  g = f>=T1;
  T1next = 0.5*(mean(f(g)) + mean(f(~g)));
  done = abs(T1-T1next)<0.05;
  T1 = T1next;
 end
 T2 = T1/255
 sl = im2bw(f,T2);
 figure,imshow(sl)