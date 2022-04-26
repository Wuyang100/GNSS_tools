%input: XYZ(WGS-84)
%output: BLH(WGS-84) B,L/rad
%function: convert xyz(n*3 vector) to blh(n*3 vector)
function BLH=XYZ2BLH(XYZ)
[row,~]=size(XYZ);
BLH=nan*ones(row,3);
%WGS84 parameters
a = 6378137.0;
e2 = 0.00669437999013;
% Aell=6378137.0;bell=6356752.314245179296;
% e2 = (Aell * Aell - bell * bell) / (Aell * Aell);
for i=1:row
    X = XYZ(i,1); Y = XYZ(i,2); Z = XYZ(i,3);
    B_old = 0.0;H_old=0.0;
    B0 = atan(Z / sqrt(X*X + Y*Y));
    blh(1) = B0;blh(3) = 1e5;
    while (abs(B_old - blh(1))>1e-11)||(abs(H_old - blh(3))>1e-5)
        B_old = blh(1);H_old=blh(3);
        blh(1)= atan((Z + a*e2*tan(blh(1)) / sqrt(1 + (1 - e2)*tan(blh(1))*tan(blh(1)))) / sqrt(X*X + Y*Y));
        N = a / sqrt(1 - e2*sin(blh(1))*sin(blh(1))); %radius of curvature in prime vertical
        blh(3)= sqrt(X*X + Y*Y) / cos(blh(1)) - N;
    end
    blh(2) = acos(X / sqrt(X*X + Y*Y));
    BLH(i,:)=blh;
end
%BLH(:,1:2)=BLH(:,1:2)*180.0/pi;
end