%%%Informacion de una imagen en disco
imfinfo ('disney.png')


%%Obtener los formatos que permite matlab
imformats

%%Leer una imagen de disco
I=imread('disney.png')

%%saber las dimensiones y tipo de la imagen
whos I

%%Visualizar la imagen  con imshow
imshow (I)

%%Decirle que abra en una figura la imagen
figure, imshow(I)

%%rotar la imagen 
a=imrotate(I,90); %le indicas los grados

%%mostrar la original y la rotada
figure, subplot(1,2,1), imshow(I),title 'original',subplot(1,2,2),imshow(a), title('rotada')


%%escribir en disco la imagen
imwrite(I,'kk.png');


%% 
%Conversiones de tipos de imagenes
%%Una imagen double está en el rango [0,1] y una imagen uint8 esta es
%%[0,255]


%Convertir con double
Id1=double(I); %rango sigue en [0,255] pero ahora cada dato ocupa un double
Id2=im2double(I); %rango en [0,1] y cada dato se almacena en double
figure, subplot(1,2,1), imshow(Id1,[]),title '[0-255]',subplot(1,2,2),imshow(Id2), title('[0-1]') 
%cuidado con la visualizacion de Id1 si pones solo imshow(Id1) se vera todo
%blanco

%Convertir a uint8
Iu1=uint8(Id2); %o 0 o 1 numel(find(Iu1~=0 & Iu1~=1))
Iu2=im2uint8(Id2);


figure, subplot(1,2,1), imshow(Iu1),title 'con uint8',subplot(1,2,2),imshow(Iu2), title('con im2uint8')

%Se puede sacar una imagen que no sea 0-255 con imagesc

figure,imagesc(Id2) %En edit>colormap tenemos la posibilidad de decirle la paleta para visualizar 
figure,colormap('gray'), imagesc(Id2); 

%EN QUE DIFIERE CON LO SIGUIENTE
figure,colormap('gray'), imagesc(Iu1); 
%%Pasar una imagen de color a niveles de gris rgb2gray
Icolor=imread('rosa.jpg');
Igris = rgb2gray(Icolor);
figure, subplot(1,2,1), imshow(Icolor),title 'Color',subplot(1,2,2),imshow(Igris), title('Gris')


%%Obtener las bandas de una imagen en color
imR= Icolor(:,:,1);
imG= Icolor(:,:,2);
imB= Icolor(:,:,3)


figure, subplot(1,4,1),imshow(Icolor),title('color'),subplot(1,4,2),imshow(imR),title ('Roja'), ...
    subplot(1,4,3),imshow(imG),title ('Verde'),subplot(1,4,4),imshow(imB),title ('Azul')



%Para obtener a partir de las bandas la imagen en color
Icnew = cat(3,imG, imR,imB); % he puesto la banda verde en la roja g-r y b-b
imshow(Icnew)
%% 
%MAPA DE COLOR (PALETA)
%%Es un vector que indexa los diferentes colores.
gray %da 64 tonos 
mapa=jet


rgbplot(mapa) %dibuja graficas con la proporcion de rgb para cada tono

%Imagenes de falso color--> para destacar aspectos interesante /para
%interpretar mejor los datos
colormap(hot),imagesc(I);


%%
%imtool:
%permite ver el valor de cada pixel (tools>pixel_region)
%zoom
%ajustar contraste
%no funciona con RGB


Ilowcon=imread('moon.tif');
imtool(Ilowcon);

