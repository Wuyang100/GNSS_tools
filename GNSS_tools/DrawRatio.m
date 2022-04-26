function DrawRatio(filename,limit)
%function: draw raio pictures
fid=importdata(filename);
fid=fid.data;
t=fid(:,1);
nepoch=length(fid);
lim=ones(nepoch,1)*limit;
figure;
plot(t,[fid(:,2),lim],'.');
xlabel('epoch');ylabel('ratio value');
title('ratio');
legend('ratio value','ratio limit');
set(gca,'FontSize',20,'FontName','Times New Roman');
set(gcf,'outerposition',get(0,'screensize')); %´òÓ¡È«ÆÁÍ¼
end