function [f11]=magnitude(images)
ii=1;
for jj = .45:.020:.65

figure;
for k=1:6
    BW(:,:,k)=im2bw(images(:,:,k),jj);%figure; 
    %figure
    subplot(2,3,k);
    imshow(BW(:,:,k))
    [m,n]=size(BW(:,:,k));
    f1(k)=0;f0(k)=0;
    for i=50:m-75
        for j=50:n-75
            result(i-49,j-49,k)=BW(i,j,k);
            if BW(i,j,k)==1
                f1(k)=f1(k)+1;
            else
                f0=f0+1;
            end
        end
    end
   % figure
   % imshow(result(:,:,k))
end
f0
f1
f1=f1/(m*n);
f11(:,ii)=f1;



ii=ii+1;
end
