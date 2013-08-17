rp=zeros(28,4);
for i=1:size(X,2)
    %[r,p] = corrcoef(X(:,i),y);
    %rp(i,1:2)=[r(1,2) p(1,2)];
    %theta=normalEqn([ones(28,1) X(:,i)],y);
    [b, bint,r,rint,stats]=regress(y,[ones(28,1) X(:,i)]) ;
    rp(i,:)=stats(:);
end
