%
rose = imread('rosa.jpg');

%Visualize Red, Green and Blue
imR= rose(:,:,1);
imG= rose(:,:,2);
imB= rose(:,:,3);

figure, subplot(1,4,1),imshow(rose),title('color'),subplot(1,4,2),imshow(imR),title ('Red'),
    subplot(1,4,3),imshow(imG),title ('Green'),subplot(1,4,4),imshow(imB),title ('Blue')

%Delete Red level
roseNoRed = rose;
roseNoRed(:,:,1) = 0;
figure, subplot(1,2,1), imshow(rose), subplot(1,2,2), imshow(roseNoRed)

%
synthetic = imread('sintetica.jpg');

%Change levels
imR= synthetic(:,:,1);
imG= synthetic(:,:,2);
imB= synthetic(:,:,3);
%Red<-->Blue
syntheticRB(:,:,1) = imB;
syntheticRB(:,:,2) = imG;
syntheticRB(:,:,3) = imR;
%Flip Green level horizontal
syntheticG(:,:,1) = imR;
syntheticG(:,:,2) = fliplr(imG);
syntheticG(:,:,3) = imB;
%Flip Blue level vertical
syntheticB(:,:,1) = imR;
syntheticB(:,:,2) = imG;
syntheticB(:,:,3) = flipud(imB);
figure, subplot(1,4,1),imshow(synthetic),title('Original'),
    subplot(1,4,2),imshow(syntheticRB),title ('Red<-->Blue'),
    subplot(1,4,3),imshow(syntheticG),title ('Green Flip X'),
    subplot(1,4,4),imshow(syntheticB),title ('Blue Flip Y')


