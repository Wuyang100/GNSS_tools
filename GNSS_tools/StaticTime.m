function t=StaticTime(Txyz)
%��⾲ֹʱ�䣬�Ա��ں������׼
n=length(Txyz);
limit=0.5;
for i=2:n
    temp=abs(Txyz(i,2:4)-Txyz(i-1,2:4));
    if max(temp)>limit
        t=Txyz(i,1)-Txyz(1,1);
        break;
    end        
end
end