clc,clear

red1=xlsread('¸½¼ş1-ÆÏÌÑ¾ÆÆ·³¢ÆÀ·Ö±í.xls',1);
red1=[red1; NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN  NaN   NaN;
  NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN];
Xred1=zeros(10,27);
for i=1:27
    block=red1((i-1)*14+1:i*14,:);
    num=block(1,1);
    Xred1(:,num)=sum(block(3:12,3:12))';
end

write1=xlsread('¸½¼ş1-ÆÏÌÑ¾ÆÆ·³¢ÆÀ·Ö±í.xls',2);
write1=[write1;NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN;
   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN];
Xwrite1=zeros(10,28);
for i=1:28
    block=write1((i-1)*13+1:i*13,:);
    num=block(1,1);
    Xwrite1(:,num)=sum(block(2:11,4:13))';
end

red2=xlsread('¸½¼ş1-ÆÏÌÑ¾ÆÆ·³¢ÆÀ·Ö±í.xls',3);
red2=[red2; NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN  NaN   NaN;
  NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN];
Xred2=zeros(10,27);
for i=1:27
    block=red2((i-1)*14+1:i*14,:);
    num=block(1,1);
    Xred2(:,num)=sum(block(3:12,3:12))';
end  

write2=xlsread('¸½¼ş1-ÆÏÌÑ¾ÆÆ·³¢ÆÀ·Ö±í.xls',4);
write2=[write2; NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN;
   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN];
Xwrite2=zeros(10,28);
for i=1:28
    block=write2((i-1)*12+1:i*12,:);
    num=block(1,1);
    Xwrite2(:,num)=sum(block(1:10,5:14))';
end

X=[Xred1 Xwrite1;
   Xred2 Xwrite2];

[h,sig,ci]=ttest2([Xred1 Xwrite1],[Xred2 Xwrite2]);
std1=std([Xred1 Xwrite1],0,1);
std2=std([Xred2 Xwrite2],0,1);
 [h' std1' std2' (std1'>std2')+1]
 
 