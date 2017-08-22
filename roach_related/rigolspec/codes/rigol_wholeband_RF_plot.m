clear
home
filelist = dir('data/data_*.mat');
nfiles = length(filelist)
LO = 1520; %MHz
LO = 0
IFRF = '';
%xyradec = '_dec_40deg';
xyradec = '';
%%
load(['data/' filelist(1).name],'freq','fa','fb','rbw','rbw_str','ATTEN_read','data');
fa_str = num2str(fa);
fb_str = num2str(fb);

nchan = size(data,1);
b     = zeros(nchan,nfiles);
bmax  = zeros(nchan,nfiles);
bmin  = zeros(nchan,nfiles);
bmean = zeros(nchan,nfiles);
t     = zeros(1    ,nfiles);
pause(.1)

%%
tic
%for i=1:nfiles
for i=1:nfiles    
    load(['data/' filelist(i).name],'t_now','data');
    b(:,i)     = mean(data,2);    
    bmax(:,i)  = max(data')' ;
    bmin(:,i)  = min(data')' ;
    bmean(:,i) = 10*log10(mean(10.^(data'/10)))';
    t(:,i)     = t_now; 
    if mod(i,20)==0
        disp([num2str(i) ' of ' num2str(length(filelist))])
        plot(freq, mean(data'))
        %ylim([-102 -95])
        grid on
        pause(.00001)
    end
end
t_loaddata = toc
%% max multi
plot(freq, bmax','linew',.1)
bmeanmean = 10*log10( mean(10.^(bmean'/10)) );
hold on
plot(freq, bmeanmean,'color',[1 1 1]*.5)
%plot(freq, bmeanmean,'linew',.3)
% p300 = 10*log10(freq./freq*1.38e-23*300*rbw*1000)/2;
% plot(freq, p300,'linew',.2)
% text(freq(1),p300(1),' 300K','VerticalAlignment','bottom')
% %plot(freq, p300-10*log10(3)/2,'linew',.2)
hold off
grid on
%xlim([LO-fb LO-fa])
%xlim([fa fb])
xlabel('RF freq (MHz)')
ylabel('dBm per RBW')
title(['RBW=' rbw_str ', ATTEN=' ATTEN_read(1:end-1)])
%set(gca,'xd','rev')
basename = ['spec_' IFRF fa_str '-' fb_str 'MHz' xyradec];
tic
print('-dpng',[basename '_max_multi.png']);
t_png = toc
%tic
%print('-dpdf',[basename '.pdf']);
%t_pdf = toc

%% mean multi
%plot(LO-freq, b','linew',.3)
plot(freq, bmeanmean,'b')
hold on
%set(gca,'ColorOrder',jet( size(bmean,2))*.9 )
%set(gca,'ColorOrder',jet(128))
%get(gca,'ColorOrder')
plot(freq, bmean','linew',.1)
%get(gca,'ColorOrder')
%hold on
%plot(freq, bmeanmean,'r','linew',.2)
plot(freq, bmeanmean,'color',[1 1 1]*.5)
grid on
%xlim([LO-fb LO-fa])
%xlim([fa fb])
xlabel('RF freq (MHz)')
ylabel('dBm per RBW')
title(['RBW=' rbw_str ', ATTEN=' ATTEN_read(1:end-1)])
%set(gca,'xd','rev')
hold off
tic
print('-dpng',[basename '_mean_multi.png']);
t_png2 = toc
%tic
%print('-dpdf',[basename '.pdf']);
%t_pdf = toc
%saveas(gcf,[basename '.fig']);

%% mean
%plot(LO-freq, mean(b'),'linew',.3)
plot(freq, bmeanmean,'linew',.02)
%hold on
%plot(freq, p300,'linew',.2)
%text(freq(1),p300(1),' 300K','VerticalAlignment','bottom')
%GPS L1 1575.42 L2 1227.60
%plot(freq, p300-10*log10(3)/2,'linew',.2)
%hold off
grid on
%xlim([LO-fb LO-fa])
%xlim([fa fb])
xlabel('freq (MHz)')
ylabel('dBm per RBW')
title(['RBW=' rbw_str ', ATTEN=' ATTEN_read(1:end-1)])
%set(gca,'xd','rev')
tic
print('-dpng',[basename '_mean.png']);
print('-dpdf',[basename '_mean.pdf']);
saveas(gcf,[basename '_mean.fig']);
t_png3 = toc
%% mean RF
plot(LO-freq, bmeanmean)
xlim([LO-fb LO-fa])
set(gca,'xd','rev')
grid on
xlabel('freq (MHz)')
ylabel('dBm per RBW')
print('-dpdf',[basename '_mean_RF.pdf']);


%%
spec = bmeanmean;
save([basename '_mean.mat'],'spec','freq');

%%
p  = 10.^(spec/10);
p1 = sum(p)
p1_dBm = 10*log10(p1)
p_max = max(p)
%%
p  = 10.^(spec(fix(length(spec)/2):end)/10);
p1 = sum(p)
p1_dBm = 10*log10(p1)
p_max = max(p)


