function [v1]=lip(me,image,aaaaa)
v= image;
v1= image;
 a=[60,59,58,57,56,55,54,53,52,51,50,49,60];
[m n]=size(v);
%figure
%imshow(v)
%hold on
aa=aaaaa;
for i=1:12
    
    if(aa(a(i),1)<aa(a(i+1),1))
        x=[aa(a(i),1),aa(a(i+1),1)];
        y=[aa(a(i),2),aa(a(i+1),2)];
        check=1;
    else
        x=[aa(a(i+1),1),aa(a(i),1)];
        y=[aa(a(i+1),2),aa(a(i),2)];
        check=2;
    end
    polyfit(x,y,1);

z=x(1):x(2)+1;
q=ans(1)*z+ans(2);
   Q(i,1)=ans(1);
   Q(i,2)=ans(2);
%plot(z,q)

%pause
for j=x(1):x(2)+5
    j1=round(j);
  % v(round(Q(i,1)*j+Q(i,2)),round(j))=1;
   w(round(j))=Q(i,1)*j+Q(i,2);
   if(check==1)
       %if((i~=7)&&(i~=6))
       for p = w(j1):m
       v(round(p),j1)=1;
       end
       %end
   else
       
           w(j1)=w(j1);
      for p = 1:w(j1)+1
         v(round(p),j1-5)=1;
      end
       
       end
   end
end

for i=1:12
    aaa(i,1)=aa(a(i),1);
    aaa(i,2)=aa(a(i),2);
end
x_min=min(aaa(:,1));
x_max=max(aaa(:,1));

for j=1:round(x_min)
    v(:,j)=1;
    
    end
    for j=fix(x_max):n
    v(:,j)=1;
    end
 %   y_min=min(aaa(:,2))
%y_max=max(aaa(:,2))

    %for j=round(x_min):fix(x_max)
     %  for i=round(y_min):fix(y_max)
     %  v1(i-round(y_min)+1,j-round(x_min)+1)=v(i,j);
    %   end
   %end
%figure
%imshow(v)
for i=1:m
    for j=1:n
        if(v(i,j)~=1)
           v1(i,j)=me;
        end
    end
end
%image123=image_double;
%figure
%imshow(v1);
%shg
