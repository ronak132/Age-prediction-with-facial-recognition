for sheet=1:10
    Data1 = xlsread('G:\6th_semester\ppp\project\code\featurevector123.xlsx',sheet);
    y1_data(:,sheet)= Data1;
end
error = 0;
x_data= y1_data';
known = ['c';'a';'a';'c';'a';'c';'a';'a';'c';'c'];
for sheet=1:10

    species=svmclassify(svmStruct,x_data(sheet,:));
    s(sheet)=species;
    if (s(sheet)~=known(sheet))
        error= error+1;
    end
end

error = error/10
