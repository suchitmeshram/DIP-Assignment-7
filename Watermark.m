clear all;
close all; 
clc;
image1=imread('N1.jpg');
%imshow(image1);
title('Original image');
% orginal image for watermarking
[ori_row,ori_col]=size(image1);
host_length=ori_row*ori_col;
i=1;
j=1;
wmimage=imread('N2.jpg');
[wm_row,wm_col] = size(image);
%imshow(wmimage); 
title('Watermark image');
wm=dec2bin(wmimage);
wm_length=wm_row*wm_col*8;
host=dec2bin(image1);
counter=0; 
while i < host_length
          counter=counter+1;
          if counter > wm_length
              break;
          end
          host(i,8)=wm(i,j);
                j=j+1;
            i=i+1;
   end
im1=bin2dec(host);
display 'After embed';
imshow(image1);
title('Watermarked image');
imwrite(image1,'watermarked.jpg');
