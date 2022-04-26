function time=Converge(data,limit,series,flag)
%input: 
% data(.enu or ratio file data); 
% series(the judgment epoch number of convergence)
% flag('enu' or 'ratio')
%output: convergence time/s(1*3)
%function: 
%Get the time of first convergence in the three directions (the absolute value of continuous seris epoch is less than limit)
%Get the first fixed success time in three directions (the ratio value of continuous seris elements is greater than limit)

switch flag
    case 'enu'
        if size(data,2)==5
            data=data(:,2:5);
        end
        dim=3;
        T=data(2,1)-data(1,1);
    case 'ratio'
        dim=1;
end
time=nan(dim,1);
n=length(data);
for j=1:dim
    flag2=0;
    for i=1:n-series+1
        temp=data(i:i+series-1,j+1);
        switch flag
            case 'enu'
                Max=max(abs(temp));
                if Max<=limit(j)&&data(i,1)+T*(series-1)==data(i+series-1,1)
                    flag2=1;
                end
            case 'other'
                Min=min(temp);
                if Min>limit(j)
                    flag2=1;
                end
        end
        if flag2==1 
            time(j)=data(i,1)-data(1,1);
            break;
        end
    end      
end
end