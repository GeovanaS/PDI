pkg load image

A=imread('toycars1.png'); 
B=imread('toycars2.png'); 

Abw=im2bw(A);   %convert to binary
Bbw=im2bw(B);    %convert to binary

subplot(1,5,1), imshow(Abw);  
subplot(1,5,2), imshow(Bbw);   

Output = xor(Abw,Bbw);        
Output1 = and(Abw,Bbw);
Output2 = or(Abw,Bbw);

subplot(1,5,3),imshow(Output); 
subplot(1,5,4),imshow(Output1);
subplot(1,5,5),imshow(Output2);