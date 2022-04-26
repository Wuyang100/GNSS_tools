%input: daysec(seconds of day); GPSday(weekday begins from 0;eg.18540 18541 18542...  18546)
%output: GPSs(GPS weeksecond, GPS time begins at 19800106(Sunday) 00:00:00)
function GPSs=s2GPSs(daysec,GPSday)
GPSs=daysec+GPSday*86400.0;
end


