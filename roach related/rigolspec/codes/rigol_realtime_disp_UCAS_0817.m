%RIGOL DSA832E
%tcpip;fprintf;query


clear all;
close all;
home
!mkdir data

%%
fa = 0      %Hz
fb = 200E6  %Hz
rbw =  1E6  %Hz
vbw = 1E6   %Hz
npt = 201
istest = 0 %0 or 1
nsub = 50;
nsave = 10000 ;
% ATTEN = '6'; %dB, use with care
RLEV = '-20'    %dBm
% rbw_str = [num2str(rbw/1000) 'kHz']
% vbw_str = [num2str(vbw) 'Hz']
rbw_str = [num2str(rbw) 'Hz']
vbw_str = [num2str(vbw) 'Hz']
DET = 'VAVerage';
% DET = 'QPE';

%%
remotehost='10.37.127.111';
mxa = tcpip(remotehost,5555)

set(mxa,'InputBufferSize',1024000)  %maximum tried:128M,64M,32M
set(mxa,'Timeout',100);
%get(mxa)   %disp mxa properities
tic
fopen(mxa);

identity = query(mxa, '*IDN?')
fprintf(mxa,'*RST');   %RESTART

fprintf(mxa,':DISPlay:ENABle ON');
% if exist('ATTEN')
%     fprintf(mxa,[':POWer:RF:ATTenuation' ATTEN]);  %????? DOES NOT WORK
% end
ATTEN_read = query(mxa,':POWer:RF:ATTenuation?')

fprintf(mxa,[':FREQ:STARt ' num2str(fa)]);   %start freq
fprintf(mxa,[':FREQ:STOP '  num2str(fb)]);  %stop freq
query(mxa,':FREQ:STARt?')
query(mxa,':FREQ:STOP?')

%RBW
fprintf(mxa,[':BAND ' rbw_str]);
%VBW
fprintf(mxa,[':BAND:VID ' vbw_str]);

fprintf(mxa,'INIT:CONT OFF');   %continuous in measurment status
% fprintf(mxa,'INIT:CONT ON');   %CONTINUOUS

fprintf(mxa,':SWEep:TIME:AUTO:RULes NORMal');    %NORMal|ACCuracy
fprintf(mxa,':SWEep:COUNT 1' );  %zhx
fprintf(mxa,'TRACe1:AVERage:TYPE RMS')   %RMS|VIDeo

fprintf(mxa,[':DET ' DET]);     %NEGative|NORMal|POSitive|RMS|SAMPle|VAVerage|QPEak
fprintf(mxa,[':DISPlay:WINdow:TRACe:Y:RLEVel ' RLEV]);   % Set the reference level to RLEV dBm
fprintf(mxa,':FORMat:BORDer SWAP')  %!!!zhx,the transmission starts with the LSB and ends with the MSB.so Little Endian??
fprintf(mxa,':FORMat:DATA REAL,32');    % Set the data trace format to REAL, 32 bits

fprintf(mxa,[':SWEep:POINts ' num2str(npt)]);   %trace to 1001 points
% Get the nr of trace points
nr_points = str2double(query(mxa,':SWE:POIN?'))
% Get the reference level
ref_lev = str2num(query(mxa,'DISP:WIN:TRAC:Y:RLEV?'))
t_init = toc
pause(.1)

%%
data = zeros(nr_points,nsub)*nan;
freq = linspace(fa,fb,nr_points);
h=figure('name','4.5m telescope in NAOC');
set(h,'IntegerHandle','off');
set(0,'defaultfigurecolor','w');
set(gcf,'Position',[700,300,600,500])

for i=1:nsub*nsave
    i
    % Get the trace data
    % set to wait until it completes
    fprintf(mxa,':INIT:IMM;*WAI');
    %pause(int32(query(mxa,'SWE:TIME?')))  %or set wait time longer
    %start a sweep
    fprintf(mxa,':TRAC? TRACE1');
    tic
    a = binblockread(mxa,'float32');
    if size(data,1) == length(a)
%         data(:, mod(i-1,nsub)+1 ) = a;  %zhx
        data=[data(:,2:end),a];    %wave,zy
        temp = fliplr(data);
        subplot(2,1,1)
        time = query(mxa,':SYST:TIME?')
        ylabel_text = regexp(time,',','split')
        pcolor(temp')
        shading flat
        ylabel(colorbar,'dBm');
        title([num2str(i),' spectrums'],'FontSize',8)
%         ylabel('Time domain','FontSize',8,'FontWeight','bold')
        ylabel([num2str(ylabel_text{1}),':',num2str(ylabel_text{2}),':',num2str(ylabel_text{3})],'FontSize',8)
        set(gca,'ytick',[],'FontSize',8)
        set(gca,'xtick',[],'FontSize',8)
        pause(.1)
        
%         subplot(2,1,2)
%         set(gca,'Position',[0.13,0.226,0.662,0.355])
%         set(gca,'xtick',[1:20:200],'FontSize',8)
%         plot(a(1:(end-1)))
%         xlabel('Frequency domain (MHz)','FontSize',8,'FontWeight','bold')
%         ylabel('Power (dBm)','FontSize',8,'FontWeight','bold')      
%         box off
%         grid on
%         
        subplot(2,1,2)
        plot(mean(temp))
        set(gca,'Position',[0.13,0.226,0.662,0.355])
        axis([1 50 (min(mean(temp))-5) (max(mean(temp))+5)])
        set(gca,'xtick',[])
        xlabel('Time domain','FontSize',8,'FontWeight','bold')
        ylabel('Power (dBm)','FontSize',8,'FontWeight','bold')  
        box off
        
    end
    
    
end
pause(.00001)
if istest
    break
end

fprintf(mxa,':INIT:CONT ON')
fclose(mxa)
break

plot(freq, mean(data'))
xlim([fa fb])
xlabel('freq (MHz)')
ylabel('dBm')
% %%%%%%%

% std_a = std(a)
% std_a_diff = std(diff(a))/1.414
% hist(a,100)
% t_int = t_read/npt
% %%
% a_ = 10.^(a/10);
% hist(a_,100)
% std_a_ = std(a_)
% snr_a_ = mean(a_)/std(a_)
% %%
% b_ = diff(a_);
% hist(b_,100)
% std_b_ = std(b_);
% snr_b_ = mean(a_)/(std(b_)/1.414)
% snr_theo = (rbw*t_int)^0.5
%
% snr_b_/snr_theo
% %so sweep int time t/npt
% %diff snr is close to theory