function kc_histEQ (inputImg)
%% kc, santosh (Ph.D.), department of computer science, the university of south dakota
%% for more information:
%% http://www.mathworks.com/help/images/ref/histeq.html
%% http://www.mathworks.com/help/images/ref/imhist.html
%% designed for image processing course, under csc:592
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all; 
close all; 
clc;
warning off; 

%% read a image file
imgName = '300pxNZ.jpg';
inputImg = imread(imgName);



%% perfom histogram equalization
outImg = histeq(inputImg);



%% write outout image.
out_imgName = strcat(imgName, 'out');
imwrite(outImg, strcat(out_imgName, '.jpg')); %% one can use any image format here.



%% check histogram before and after histogram equalization, and save them.
FigHandle = figure(1);
set(FigHandle, 'Position', [100, 100, 500, 300]);
figure(1), imhist(inputImg, 256); set(gca, 'fontsize', 16);

FigHandle = figure(2);
set(FigHandle, 'Position', [100, 100, 500, 300]);
figure(2), imhist(outImg, 256); set(gca, 'fontsize', 16);

saveas(figure(1), strcat(imgName, 'histo', '.pdf')); %% one can use any image format here.
saveas(figure(2), strcat(out_imgName, 'histo', '.pdf')); %% one can use any image format here.

%% done - You win ;) play with other images... 

end %% end of function.
