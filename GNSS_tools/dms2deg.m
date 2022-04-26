%input: in(n*3 matrix) 
%output: out(n*1 matrix)
%function: transfer dms to deg 
function out=dms2deg(in)
out=in(:,3)/3600.0+in(:,2)/60.0+in(:,1);
end