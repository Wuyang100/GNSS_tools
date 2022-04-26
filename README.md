    # GNSS_tools
    some tools for GNSS written in MATLAB

    function XYZ=BLH2XYZ(BLH)
    %input: BLH(WGS-84)/rad
    %output: XYZ(WGS-84)
    %function:convert blh(n*3 vector) to xyz(n*3 vector)

    function ins=CheckInsfile(filename,T)
    %input: T (the sampling interval)
    %output: 
    %data matrix(Seconds X Y Z VX VY VZ Pitch Roll Yaw GyBiasX GyBiasY GyBiasZ AcBiasX AcBiasY AcBiasZ)
    %function: read and check .ins file, complete interrupted epoch, delete the repeated epoch whose interval is less than T

    %input: XYZ(WGS-84)
    %output: BLH(WGS-84) B,L/rad
    %function: convert xyz(n*3 vector) to blh(n*3 vector)
    function BLH=XYZ2BLH(XYZ)

    function Clear()
    %function: clear all the variables, windows, and figures

    function ComAng(tPRY1,tPRY0,lag,tmode,savepath,scale)
    %input:
    %tPRY(t Pitch Roll Yaw/deg)
    %lag(the figure's name)
    %tmode('epoch'or'hour')
    %savepath(the saving path)
    %scale(the maximum number in the vertical axis)
    %function:draw the attitude comparison picture(.tif and .fig)

    %input: data(TIME  E N U); flag('IF-RA' 'NO-FIX' 'same')
    %function: compare ppplsq enu results and draw pictures
    function ComEnu(data1,data2,flag,scale)

    function com_ins(dir,real_file,real_form,pos_bias,res_file,option,scale,beg_end,dt)
    %input: dir,real_file,real_form,pos_bias,res_file,option,scale,beg_end,dt
    %output: 
    %data matrix(Seconds X Y Z VX VY VZ Pitch Roll Yaw GyBiasX GyBiasY GyBiasZ AcBiasX AcBiasY AcBiasZ)
    %function: read and check .ins file, complete interrupted epoch, delete the repeated epoch whose interval is less than T

    function com_lsq(dir,real_file,real_form,pos_bias,res_file,scale)
    %input: T (the sampling interval)
    %output: 
    %data matrix(Seconds X Y Z VX VY VZ Pitch Roll Yaw GyBiasX GyBiasY GyBiasZ AcBiasX AcBiasY AcBiasZ)
    %function: read and check .ins file, complete interrupted epoch, delete the repeated epoch whose interval is less than T

    %input: Txyz(TIME  X Y Z); tmode('hour' 'epoch')
    %function: draw Txyz1-Txyz0 series and save pictures in .tif and .fig
    function ComXyz(Txyz1,Txyz0,lag,tmode,savepath,scale)

    function time=Converge(data,limit,series,flag)
    %input: 
    % data(.enu or ratio file data); 
    % series(the judgment epoch number of convergence)
    % flag('enu' or 'ratio')
    %output: convergence time/s(1*3)
    %function: 
    %Get the time of first convergence in the three directions (the absolute value of continuous seris epoch is less than limit)
    %Get the first fixed success time in three directions (the ratio value of continuous seris elements is greater than limit)

    %input: begT,T,endT(seconds of day)
    %function: cut the data matrix according to the time
    function data=CutT(data,begT,T,endT)

    %input: data0(1st col is time);t(n*1)
    %function: delete rows(not in t) in data0
    function data=CutT2(data0,t)

    function data=del_repeat(data)
    %input: data(data matrix)
    %output: 
    %data
    %function: delete the elements that appear repeatedly 

    %input: in(n*3 matrix) 
    %output: out(n*1 matrix)
    %function: transfer dms to deg 
    function out=dms2deg(in)

    %input: X(upd matrix,(n+1)*nsat,1st col is time)
    %function: draw nl upd series and save pictures(7 sats in one figure) as .tif and .fig
    function draw_nl_upd( X, pic_title,figsavepath)

    %input: X(upd matrix,(n+1)*nsat,1st col is time)
    %function: draw nl upd series and save pictures(1 system in one figure) as .tif and .fig
    function draw_nl_upd2( X,sys,pic_title,savepath)

    %input: xlist(station list, eg['08:00';'08:30]); yvalue(n*3); flag('enu'or'converge'or'fix')
    %function: draw bars according to the xlist and yvalue
    function DrawBar(xlist,yvalue,lag,flag)

    %input: xlist(time list, eg['08:00';'08:30])
    %function: draw enu comparison in different moments 
    function DrawBar2(xlist,enu1,enu2,lag)

    function DrawRatio(filename,limit)
    %function: draw raio pictures

    function DrawRes(Tres,sys,lag,tmode,savepath,scale)
    %功能：绘制残差序列图
    %需配合ReadRes使用，figsavepath为保存路径，format为图片格式.tif''.fig'等
    %lag为搜索残差名'LC''PC'，tmode为历元图还是小时图epoch''hour'

    %input: in(B,L,H(B,L/rad) or XYZ)
    %function: draw track graphs
    function DrawTrack(in,tag)

    function enu=EndEnu(enufile,n)
    %得到静态解最后n个历元的enu的rms

    function time=EnuConverge(enufile,limit,series)
    %Input:limit为收敛的三维判定阈值（m），seris为收敛的判定历元数
    %Output：time为首次收敛的时间，三维向量（s）
    %Funciton：得到三个方向上首次收敛的时间（连续seris个历元绝对值小于limit）

    function FileReplace(filename,oldstr,newstr)
    % Input:eg.
    % oldstr={'Float','Fixed','Kinematic','Static','E212!'};
    % newstr={'    0','    1','0','1','22122'};
    % function:"replace oldstr with newstr in a file"

    function out=GetMean(in,dim)
    %去掉数组最大值和最小值取平均,dim=1对列取平均，dim=2对行取平均

    function out=GetMean2(in,dim)
    %去掉数组n个最大值和最小值取平均,dim=1对列取平均，dim=2对行取平均

    function enu=GetNodeEnu(data,node)
    %得到一个站各个时间节点/s的enu,data(Tenu)

    %input: weeksecond(GPS weeksecond, GPS time begins at 19800106(Sunday) 00:00:00
    %output: seconds of day
    function t=Gpst2Utc(weeksecond)

    function t=hms2s(h,m,s)
    %function: transfer hms to s

    function list=ListSub(list1,list2)
    %list1减去list2

    function list=NoData(site_list,endstr)
    %get the list of stations that doesn't have .o data 

    function list=NoSnx(site_list,site_xyz)
    %snx中没有坐标真值的站列表

    %function: print the percentage increase or decrease of the new value over the old value
    function Per(old,new)

    %input: site_list(n*4 char matrix); begstr,endstr(strings around the site name)
    %function: n stations in a row printing parameters for the xml of great
    function PrintXmlPar(begstr,site_list,endstr,n)

    %function: print sites' xyz for the xml of ppplsq
    function PrintXmlXyz(site_list,site_xyz)

    function [time,percentage]=Ratio(ratiofile,limit,series,T)
    %filename为enu或ratio文件，第一列为时间/s
    %Input:limit为ratio阈值
    %Output：time为首次固定成功的时间/s
    %Funciton：
    %得到三个方向上首次固定成功时间（连续seris个历元ratio值大于limit）和固定百分比

    %input: .ins file name 
    %function: read .ins file and return a data matrix
    function data=read_ins(file)

    %input: sys(G''R''E''C')
    %function: read NL UPD 
    function upd_nl = read_upd_nl_file( filename, sys )

    %input: 文件名，索引
    %function: 读取文件并调整数据格式t x y z vx vy vz ptich roll yaw
    function upd_nl = read_IE_file( file, form )

    %function: get Tenu matrix(TIME  E N U) from .enu file
    function Tenu = ReadEnufile(filename)

    %input: flag('lsq','flt'); t(corresponding time needed in 'lsq')
    %output: 
    %'flt'(GPSt x y z vx vy vz xrms yrms zrms vxrms vyrms vzrms nsat pdop m0)
    %'lsq'(LSQ= TIME  x y z clk sigma0 sigma_x sigma_y sigma_z GDOP PDOP)
    %function: get flt matrix from .flt file
    function flt = ReadFltfile(filename,flag,t)

    function Tres=ReadRes(filename,sys,flag,t,endTs)
    %filename为Great生成的Resfile文件路径名称，sys为GNSS系统号，flag为搜索残差名'LC' 'PC'
    %t为时间向量，endTs为文件里出现的第一个时间的最后两个数字,如2:00:00到23:00:00，
    %eg：ReadRes('HKSL_resfile-fix.txt','G','LC',7200:30:82800,00);
    %Output：
    %行数为历元数，第一列为时间/s，后面列数为各卫星残差的数据矩阵

    function site_list=ReadSitelist(filename)
    %get the site list(lower) from the file

    %input: daysec(seconds of day); GPSday(weekday begins from 0;eg.18540 18541 18542...  18546)
    %output: GPSs(GPS weeksecond, GPS time begins at 19800106(Sunday) 00:00:00)
    function GPSs=s2GPSs(daysec,GPSday)

    function [h,m,s]=s2hms(daysec)
    %天内秒转换为时分秒

    %input: BL(n*2)
    %function: draw stations layout
    function ShowSta(BL,lag)

    %input: site_list(n*4 char matrix,eg['HKSL';'BAKO']) blh,xyz(n*4 matrix)
    %function: get sites' blh and xyz from .snx file
    function [blh,xyz]=SnxXyzBlh(site_list,Snxname)

    function t=StaticTime(Txyz)
    %检测静止时间，以便于后面初对准

    %input: 
    % doy(the number of in a year); 
    % sys1('G''E''C''GC''GEC'); 
    % sys2(G''E''C'); 
    % begT(eg' 1770',refers to the seconds of the 1st row)
    %function: merge the NL UPD, and write a UPD file in upd_nl_yrdoy_sys format
    function UpdAddNl(yr,doy,sys1,sys2,begT)

    %input: 
    % doy(the number of in a year); 
    % sys1('G''E''C''GC''GEC'); 
    % sys2(G''E''C')
    %function: merge the WL UPD, and write a UPD file in upd_wl_yrdoy_sys format
    function UpdAddWl(yr,doy,sys1,sys2)

    %input: XYZ(WGS-84)
    %output: BLH(WGS-84) B,L/rad
    %function: convert xyz(n*3 vector) to blh(n*3 vector)
    function BLH=XYZ2BLH(XYZ)

    %input: 
    % A(center point's XYZ,n*3); 
    % B(XYZ,n*3);
    % a(center point's BLH/rad,n*3);
    %function: transfer XYZ(cartesian coordinate system) to ENU
    function ENU=XYZ2ENU(A,B,a)

    function XyzComEnu(Txyz1,Txyz0,lag,tmode,savepath,scale)
    %功能：绘制ENU精度比较图
    %figsavepath为保存路径，format为图片格式.tif''.fig'等
    %lag为图名，tmode为历元图还是小时图'epoch''hour'
