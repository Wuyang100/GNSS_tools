%input: 
% A(center point's XYZ,n*3); 
% B(XYZ,n*3);
% a(center point's BLH/rad,n*3);
%function: transfer XYZ(cartesian coordinate system) to ENU
function ENU=XYZ2ENU(A,B,a)
[row,~]=size(A);
ENU=nan*ones(row,3);
for i=1:row
    dXAB = B(i,1) - A(i,1);
	dYAB = B(i,2) - A(i,2);
	dZAB = B(i,3) - A(i,3);
	cos_lat = cos(a(i,1));
    sin_lat = sin(a(i,1));
    cos_long = cos(a(i,2));
    sin_long = sin(a(i,2));
    C_e_n = [-sin_long,          cos_long,            0;...
             -sin_lat * cos_long,-sin_lat * sin_long, cos_lat;...                
              cos_lat * cos_long, cos_lat * sin_long, sin_lat];
	ENU(i,:)=C_e_n*[dXAB;dYAB;dZAB];
end	
end