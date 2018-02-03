%spname = dir(fullfile('G:', '6th_semester\ppp\project\program\points'));
siname = dir(fullfile('G:', '6th_semester\ppp\project\pai\New folder'));
for i=3:48
    A=imread( sprintf('%s', siname(i+1).name));
    [m,n,q]=size(A);
    if(q==1)
     image_double1=im2double(A);
    
    else
        image_double1=im2double(rgb2gray(A));
    end
    %figure
%imshow(image_double1); hold on;
 %image_double1=histeq(image_double1);
 [n1,m1]=size(image_double1);
        for r = 1:n1
            for j = 1:m1
            images(r,j,i-2)=image_double1(r,j);
            end
        end
   %uiimport(sprintf('%s', spname(i).name))

end
%for ii=1:68
 %  scatter(VarName1(ii),VarName2(ii));
       
%end
for sheet=1:46
    Img = xlsread('G:\6th_semester\ppp\project\pai\ronak.xlsx',sheet+1);

    aaaaa(:,1,sheet)=Img(:,1);
    aaaaa(:,2,sheet)=Img(:,2);
    
   % imshow(images(:,:,sheet));hold on;
    % scatter(Img(:,1),Img(:,2))
%pause
%for i=1:19
%    b(i,:)=aaaaa(i,:);
%end
% b(20,:)=aaaaa(25,:);
 % b(21,:)=aaaaa(24,:);
  % b(22,:)=aaaaa(23,:);
   %b(23,:)=aaaaa(22,:);
    % b(24,:)=aaaaa(1,:);

    for i=1:16
        b(i,:,sheet)=aaaaa(i,:,sheet);
    end
     b(17,:,sheet)=aaaaa(33,:,sheet);
     b(18,:,sheet)=aaaaa(36,:,sheet);
      b(19,:,sheet)=aaaaa(46,:,sheet);
      %b(20,:)=aaaaa(19,:);
      % b(21,:)=aaaaa(25,:);
      b(20,:,sheet)=aaaaa(38,:,sheet);
      b(21,:,sheet)=aaaaa(31,:,sheet);
       b(22,:,sheet)=aaaaa(28,:,sheet);
      b(23,:,sheet)=aaaaa(22,:,sheet);
     b(24,:,sheet)=aaaaa(1,:,sheet);
  %  figure;
  %   imshow(images(:,:,sheet));
  %  hold on;
%    scatter(aaaaa(:,1,sheet),aaaaa(aaaaa(:,2,sheet)))
            i123=images(:,:,sheet);
            b123=b(:,:,sheet);
%[me,v123] = corrected_chuck(i123,b123);
end 
main(images,b,aaaaa);

%for sheet=1:3
%figure;
%     imshow(images(:,:,sheet));
%    hold on;
%    scatter(aaaaa(:,1,sheet),aaaaa(aaaaa(:,2,sheet)))
%end