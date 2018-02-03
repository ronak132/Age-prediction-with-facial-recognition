function []= main(image123,b123,aaaaa123)
for i=1:46
    if((i~=9)&&(i~=16))
    image_double=image123(:,:,i);
    b=b123(:,:,i);
    aaaaa=aaaaa123(:,:,i);
    i
    [me,image]=corrected_chuck(image_double,b);
    me;
    %figure
%imshow(image);
image1=lip(me,image,aaaaa);
%figure
%imshow(image1)
images2=gabor_filter(image1);
    f11=magnitude(images2);
    filename = 'featurevector1234.xlsx';
%F_w (:)= {'Density';f1(:)};
    sheet =i+6;
    xlRange1 = 'A1:K6';
%xlRange2 = 'J2';
%xlswrite(filename,'003A58',sheet,xlRange1);
    xlswrite(filename,f11',i);
    end
end