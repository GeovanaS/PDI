%pkg load image
%b = rand(256)*1000;
%imshow(b);

%imagesc(b);
%axis image; axis off;
%colormap(gray);colorbar;
%imshow(b,[0 1000]);

%b=imread('cell.tif');
%imview(b);
%d=imread('onion.png');
%imview(d);
%b(25,50);
%b(25,50)=255;
%imshow(b);

%d(25,50,:);
%d(25,50,1);
%d(25,50,:)=[255,255,255];
%imshow(d);

%a = imread('cameraman.tif');
%ad = im2double(a);
%x = ad;
%[r ,c] = size(x)
%factor = 1
%for i = 1:r
%    for j = 1:c
%      x(i,j) = factor*log(1+ad(i,j));
%    endfor
%endfor
%subplot(1,2,1);imshow(ad);title('Before');
%subplot(1,2,2);imshow(x);title('After');
