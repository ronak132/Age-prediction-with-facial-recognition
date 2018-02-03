function [images]=gabor_filter(v)

%close all; clear ;%define the five parameters
theta=0*pi/4; %either 0 or pi/4 or pi/2 or 3pi/4
gamma=0.5;
lambda=6;

sigma=0.56*lambda;
psi=0;
%lambda=80;
%K_n=0;
sigma_x = sigma;
sigma_y = sigma/gamma;

nstds = 5;
xmax = max(abs(nstds*sigma_x*cos(theta)),abs(nstds*sigma_y*sin(theta)));
xmax = ceil(max(1,xmax));
ymax = max(abs(nstds*sigma_x*sin(theta)),abs(nstds*sigma_y*cos(theta)));
ymax = ceil(max(1,ymax));
xmin = -xmax; ymin = -ymax;
[x,y] = meshgrid(xmin:xmax,ymin:ymax);
%[x,y] = meshgrid(5:55,5:120);
x_theta=x*cos(theta)+y*sin(theta);
y_theta=-x*sin(theta)+y*cos(theta);

gb= exp(-.5*(x_theta.^2/sigma_x^2+y_theta.^2/sigma_y^2)).*cos(2*pi/lambda*x_theta+psi);

%figure(1);
%imshow(gb);
%title('theta=...');
%imagesc(gb);
%colormap(gray);
%A= imread('G:\6th_semester\ivp\project\code\Images\002A23.jpg');
%image_gray=rgb2gray(A);
%image_double=im2double(image_gray);
I=v;
figure
imshow(I);

%I=image_double;
 %figure
for i=1:6
    theta=(i-1)*pi/6;
    nstds = 5;
        xmax = max(abs(nstds*sigma_x*cos(theta)),abs(nstds*sigma_y*sin(theta)));
        xmax = ceil(max(1,xmax));
        ymax = max(abs(nstds*sigma_x*sin(theta)),abs(nstds*sigma_y*cos(theta)));
        ymax = ceil(max(1,ymax));
        xmin = -xmax; ymin = -ymax;
        [x,y] = meshgrid(xmin:xmax,ymin:ymax);

        x_theta=x*cos(theta)+y*sin(theta);
        y_theta=-x*sin(theta)+y*cos(theta);

        gb= exp(-.5*(x_theta.^2/sigma_x^2+y_theta.^2/sigma_y^2)).*cos(2*pi/lambda*x_theta+psi);
%        K_n= imresize(K_n,[500,500]);
        K_n= conv2(I,gb);
        [n1,m1]=size(K_n);
        for r = 1:n1
            for j = 1:m1
            images(r,j,i)=K_n(r,j);
            end
        end
        %a123(:,:,1)=K_n;
    %subplot(2,3,i);
    %    figure;
    %imshow(K_n);
end
%subplot(2,3,5);
%imshow(v1);

