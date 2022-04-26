%input: data0(1st col is time);t(n*1)
%function: delete rows(not in t) in data0
function data=CutT2(data0,t)
[row,col]=size(data0);

for i=1:row
    %if ~any(t==data0(i,1))
    if ~ismember(data0(i,1),t)
        data0(i,:)=nan(1,col);
    end
end
data=data0(all(~isnan(data0),2),:);
end