%close all;
%clear all;
uiimport('G:\6th_semester\ivp\project\code\Points\040A06.pts')
%x= one_a_43_a(:,1);
A=imread('G:\6th_semester\ivp\project\code\Images\040A06.jpg');
%boxImage = imread('G:\6th_semester\ivp\project\code\Images\one_a_43_a.jpg');
%figure; imshow(boxImage);
%title('Image of a Box');
%boxPoints = detectSURFFeatures(boxImage);
%scenePoints = detectSURFFeatures(sceneImage);
%figure; imshow(A);
%title('100 Strongest Feature Points from Box Image');
%hold on;
%plot(boxPoints.selectStrongest(100));
%

figure
image_double=im2double(rgb2gray(A));
imshow(image_double); hold on;

imshow(image_double);
for i=1:68
    scatter(VarName1(i),VarName2(i));
       %
end
aaaaa(:,1)=VarName1;
aaaaa(:,2)=VarName2;

%for i=1:19
%    b(i,:)=aaaaa(i,:);
%end
% b(20,:)=aaaaa(25,:);
 % b(21,:)=aaaaa(24,:);
  % b(22,:)=aaaaa(23,:);
   %b(23,:)=aaaaa(22,:);
    % b(24,:)=aaaaa(1,:);

for i=1:16
    b(i,:)=aaaaa(i,:);
end
 b(17,:)=aaaaa(33,:);
  b(18,:)=aaaaa(36,:);
   b(19,:)=aaaaa(46,:);
    %b(20,:)=aaaaa(19,:);
    % b(21,:)=aaaaa(25,:);
     b(20,:)=aaaaa(38,:);
     b(21,:)=aaaaa(31,:);
     b(22,:)=aaaaa(28,:);
      b(23,:)=aaaaa(22,:);
       b(24,:)=aaaaa(1,:);
 
