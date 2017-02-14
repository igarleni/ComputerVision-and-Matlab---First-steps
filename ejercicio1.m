%
disney = imread('disney.png');

%Visualize with imshow, imtool and imagesc
imshow(disney)
imtool(disney)
imagesc(disney)

%Convert to double and visualize again
disneyDouble1 = double(disney);
imshow(disneyDouble1)

%Convert to double correctly and visualize again
disneyDouble2 = im2double(disney);
imshow(disneyDouble2)