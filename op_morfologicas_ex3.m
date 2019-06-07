pkg load image

bw = imread('text.png');
se1 = strel('square',4)
se2 = strel('line',5,45)
bw_1 = imdilate(bw,se1);
bw_2 = imerode(bw,se2);
subplot(1,2,1),imshow(bw_1);
subplot(1,2,2),imshow(bw_2);