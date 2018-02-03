for sheet=1:45
      if((sheet~=9)&&(sheet~=16)&&(sheet~=14)&&(sheet~=13)&&(sheet~=37))
        Data = xlsread('G:\6th_semester\ppp\project\program\featurevector1234.xlsx',sheet);
        y_data(sheet,:)= Data(1,:);
      end
end

%load fisheriris
%xdata = meas(51:end,3:4);
%group = species(51:end);
group= ['a';'a';'a';'a';'c';'c';'a';'c';'c';'c';'c';'a';'a';'a';'c';'c';'c';'a';'c';'a';'c';'a';'a';'c';'a';'a';'c';'a';'c';'c';'c';'c';'c';'c';'a';'c';'a';'a';'a';'c';'c';'a';'c';'c';'a'];
svmStruct = svmtrain(y_data',group);
%xdata
%group
%svmStruct = svmtrain(y_data,group);
%shg
%species = svmclassify(svmStruct,[5 2],'showplot',true)
%hold on;plot(5,2,'ro','MarkerSize',12);hold off
%species = svmclassify(svmStruct,[0.045918516 0 0.00000374949 0.00000731697 0.00000935552 0.00000283942])
%species = svmclassify(svmStruct,[0.055643721 0.000433942 0.000471137 0.001297692 0.001682041 0.000276896 ])

%hold on;plot(3,1,'ro','MarkerSize',12);hold off
%size(xdata)