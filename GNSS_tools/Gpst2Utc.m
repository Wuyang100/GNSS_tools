%input: weeksecond(GPS weeksecond, GPS time begins at 19800106(Sunday) 00:00:00
%output: seconds of day
function t=Gpst2Utc(weeksecond)
t=weeksecond;
for i=1:length(t)
    while t(i)>=86400.0
     t(i)=t(i)-86400.0;
    end
end
end