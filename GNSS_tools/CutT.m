%input: begT,T,endT(seconds of day)
%function: cut the data matrix according to the time
function data=CutT(data,begT,T,endT)
n=length(data);
for i=1:n
    if abs(data(i,1)-begT)<T/100
        n1=i;
    end
    if abs(data(i,1)-endT)<T/100
        n2=i;
    end
end
data=data(n1:n2,:);
% n1=(begT-data(1,1))/T;n2=(data(n,1)-endT)/T;
% data=data(n1+1:n-n2,:);
%data(1:n1,:)=[];data((n-n2-n1+1):(n-n1),:)=[];
end