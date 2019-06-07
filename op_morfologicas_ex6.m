pkg load image

bw = imread('blobs.png');
[L,num] = bwlabel(bw);

subplot(1,2,1),imagesc(bw);axis image, axis off;
colorbar('North');subplot(1,2,2),imagesc(L);
axis image;axis off;colormap(jet);colorbar('North')