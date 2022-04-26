function data=del_repeat(data)
    len=length(data0);
    j=[];
    for i=1:(len-1)
        if data0(i,1)==data0(i+1,1)
            j=[j,i+1];
        end
    end
    data(j,:)=[];
end