pkg load image

bw = imread('text.png');
se = [0 1 0; 1 1 1; 0 1 0];
bw_out = imdilate(bw,se);
subplot(1,2,1),imshow(bw);
subplot(1,2,2),imshow(bw_out); 

