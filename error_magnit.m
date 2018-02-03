i=1;
for j = .45:.020:.65

f1(i)=magnitude(images,j)



i=i+1;
end
 %f1=magnitude(images2);
    filename = 'featurevector1234.xlsx';
%F_w (:)= {'Density';f1(:)};
    sheet =i+6;
    xlRange1 = 'A1:K6';
%xlRange2 = 'J2';
%xlswrite(filename,'003A58',sheet,xlRange1);
    xlswrite(filename,f1',1);