function [h,m,s]=s2hms(daysec)
%������ת��Ϊʱ����
h=0;m=0;s=daysec;
while s>=3600.0
    s=s-3600.0;
    h=h+1;
end
while s>=60.0
    s=s-60.0;
    m=m+1;
end    
end