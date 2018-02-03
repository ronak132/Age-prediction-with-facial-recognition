function [me,v123] = corrected_chuck(image_double,b)
v= image_double;
mean1=mean(v);
mean1=mean1';
me=mean(mean1);
[m n]=size(v);
%figure(2)
%imshow(v)
%hold on
for i=1:23
    if(b(i,1)<=b(i+1,1))
        x=[b(i,1),b(i+1,1)];
        y=[b(i,2),b(i+1,2)];
        check=1;
    else
        x=[b(i+1,1),b(i,1)];
        y=[b(i+1,2),b(i,2)];
        check=2;
    end
polyfit(x,y,1);

z=x(1):x(2)+1;
q=ans(1)*z+ans(2);
   Q(i,1)=ans(1);
   Q(i,2)=ans(2);
%if(i~=19)
for j=x(1):x(2)+1
    j1=round(j);
  % v(round(Q(i,1)*j+Q(i,2)),round(j))=1;
   w(round(j))=Q(i,1)*j+Q(i,2);
   value=v(round(w(round(j))),round(j));
   if(check==1)
   for p = w(j1):m
       v(round(p),j1)=value;
   end
   else
       for p = 1:w(j1)
           v(round(p),j1)=value;
       end
   end
end
%i
%pause
%pause
%imshow(v)
%shg
%end

%plot(z,q)
%shg
%i
%pause
end
x_min=min(b(:,1));
x_max=max(b(:,1));
%value=v(xmin,round(j))
for j=1:round(x_min)
    
   v(:,j)=me;
end
for j=fix(x_max):n
    v(:,j)=me;
end

%figure(4)
%imshow(v)
v123=v;