pkg load image

A = imread('cameraman.tif'); %Lê a imagem
subplot(1,2,1),imshow(A);  %Exibe a imagem
func = @(x)max(x(:)); %Especifica o filtro a ser aplicado
B = nlfilter(A,[3 3],func); %Aplica o filtro na vizinhança 3x3
subplot(1,2,2),imshow(B); %Exibe a imagem resultante B