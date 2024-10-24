clc; clear all; close all;

image=imread('davis_hall_building.jpeg');
image= rgb2gray(image); %colorfull to black and white
image= double(image); %as the image is unsigned integer so for apply carnel blur we need to double the image

K= [1 0 -1; 2 0 -2;1 0 -1];
f_im1=filter2(K,image); % vertical
f_im2=filter2(K',image);  %transpose Horizontal

f_im= ((f_im1).^2+(f_im2).^2).^(0.5);
f_im= (f_im - min(min(f_im)))/(max(max(f_im))- min(min(f_im)));
f_im = f_im*255;
imshow(uint8(f_im));