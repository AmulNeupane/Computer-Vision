function [] = circle_detection()

%find circle using circular Hough transform

%%

clear all, close all;

%input working directory 
work_dir = pwd;
img_folder = 'in_img';
img_dir = fullfile(work_dir, img_folder);  
img_list = dir(fullfile(img_dir, '*.jpg'));
img_length = length(img_list);

for no = 1 : img_length
    % input image read
    file_name = img_list(no).name;
	[pathstr, name, ext] = fileparts(file_name);
	display(['Processing ' file_name]);      
	input_img = fullfile ( img_dir, strcat (name, ext) );
    img = imread(input_img);
    
    % find circle position using circular Hough Transform
    [centersBright, radiiBright] = imfindcircles(img,[25 60],'ObjectPolarity','bright', 'EdgeThreshold', 0.02);  
    
    
    figure(no), imshow(img);     
    hold on;
    %plot circle on original image
    viscircles(centersBright, radiiBright,'EdgeColor','g','LineWidth',1.6);
    
    %save output
    saveas(gcf,['out_img/' name '.png']);
end