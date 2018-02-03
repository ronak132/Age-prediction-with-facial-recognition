filename = 'featurevector.xlsx';
%F_w (:)= {'Density';f1(:)};
sheet =1;
xlRange1 = 'A1:A1';
xlRange2 = 'B2';
%xlswrite(filename,'003A58',sheet,xlRange1);
xlswrite(filename,f1',sheet,xlRange2);