function XYZ=BLH2XYZ(BLH)
%input: BLH(WGS-84)/rad
%output: XYZ(WGS-84)
%function:convert blh(n*3 vector) to xyz(n*3 vector)

a = 6378137.0;
e2 = 0.00669437999013;
[row,~]=size(BLH);
XYZ=nan*ones(row,3);
for i=1:row
    B=BLH(i,1);L=BLH(i,2);H=BLH(i,3);
    N = a / sqrt(1 - e2*sin(B)*sin(B)); %radius of curvature in prime vertical
    XYZ(i,1)= (N + H)*cos(B)*cos(L);
    XYZ(i,2) =(N + H)*cos(B)*sin(L);
    XYZ(i,3) =(N*(1-e2)+ H)*sin(B);
end
end