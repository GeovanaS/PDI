pkg load image

bw = imread('text.png');
se = ones(6,1);
bw_out = imerode(bw,se);
subplot(1,2,1),imshow(bw);
subplot(1,2,2),imshow(bw_out);