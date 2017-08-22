%RIGOL DSA832E
%tcpip;fprintf;query
%data reading problem:fprintf(mxa,':FORMat:BORDer SWAP')  %zhx,the transmission starts with the LSB and ends with the MSB.


clear all;
close all;
home
!mkdir data
fa =  1;  %MHz
fb =  200; %MHz
fa =  0;  %MHz
fb =  3200; %MHz

rbw = 10*1000  %Hz
vbw = 10   %Hz
rbw = 10*1000  %Hz
vbw = 100000   %Hz
npt = fix((fb-fa)*1000000/rbw) +1    %npt = 10001;  %40001 max, 4001/2001 good for plot
istest = 0 %0 or 1

nsub = 10;
nsave = 10000 ;

% ATTEN = '6'; %dB, use with care
RLEV = '-20'    %dBm
rbw_str = [num2str(rbw/1000) 'kHz']
vbw_str = [num2str(vbw) 'Hz']
%%
DET = 'VAVerage';

remotehost='169.254.100.64';
mxa = tcpip(remotehost,5555)
set(mxa,'InputBufferSize',1024000)
set(mxa,'Timeout',100);

tic
%fopen(mxa);
fopen(mxa);

identity = query(mxa, '*IDN?')
fprintf(mxa,'*RST');   %RESTART 

fprintf(mxa,':DISPlay:ENABle ON');

% if exist('ATTEN')
%     fprintf(mxa,[':POWer:RF:ATTenuation' ATTEN]);  %????? DOES NOT WORK
% end
ATTEN_read = query(mxa,':POWer:RF:ATTenuation?')

fprintf(mxa,[':FREQ:STARt ' num2str(fa) ' MHz']);   %rigol
fprintf(mxa,[':FREQ:STOP '  num2str(fb) ' MHz']);
% query(mxa,':FREQ:STARt?');
% query(mxa,':FREQ:STOP?');

%RBW
fprintf(mxa,[':BAND ' rbw_str]);
%VBW
fprintf(mxa,[':BAND:VID ' vbw_str]);

fprintf(mxa,'INIT:CONT OFF');   %SINGLE
% fprintf(mxa,'INIT:CONT ON');   %CONTINUOUS

fprintf(mxa,':SWEep:TIME:AUTO:RULes NORMal');    %NORMal|ACCuracy
% fprintf(mxa,':SWEep:TIME:AUTO:RULes ACCuracy');    %NORMal|ACCuracy
fprintf(mxa,'TRACe1:AVERage:TYPE RMS')   %RMS|VIDeo

fprintf(mxa,[':DET ' DET]);     %NEGative|NORMal|POSitive|RMS|SAMPle|VAVerage|QPEak
fprintf(mxa,[':DISPlay:WINdow:TRACe:Y:RLEVel ' RLEV]);   % Set the reference level to RLEV dBm
fprintf(mxa,':FORMat:BORDer SWAP')  %zhx,the transmission starts with the LSB and ends with the MSB.
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
for i=1:nsub*nsave
    i
% Get the trace data
% set to wait until it completes
fprintf(mxa,':INIT:IMM;*WAI'); 
%pause(int32(query(mxa,'SWE:TIME?')))  %or set wait time longer
%start a sweep
fprintf(mxa,':TRAC? TRACE1');
tic
% a = binblockread(mxa,'float32'); 
%a = binblockread(mxa,'float32');
%a = fread(mxa,nr_points,'int32') 
a = binblockread(mxa,'float32')
%a = fread(mxa,INF,'float','b') 
t_read = toc
if size(data,1) == length(a)
   data(:, mod(i-1,nsub)+1 ) = a;
   plot(freq,a)
   xlim([fa fb])
   grid on
%    p  = 10.^(a/10); %dbm-->power
%    p1 = sum(p)
%    p1_dBm = 10*log10(p1)
end

if mod(i,nsub)==0
    t_now = now;
    save(['data/data_' datestr(now,30) '.mat']);
end
pause(.00001)
if istest
    break
end
end
fprintf(mxa,':INIT:CONT ON')
fclose(mxa)
break

plot(freq, mean(data'))
xlim([fa fb])
xlabel('freq (MHz)')
ylabel('dBm')
%%
std_a = std(a)
std_a_diff = std(diff(a))/1.414
hist(a,100)
t_int = t_read/npt
%%
a_ = 10.^(a/10);
hist(a_,100)
std_a_ = std(a_)
snr_a_ = mean(a_)/std(a_)
%%
b_ = diff(a_);
hist(b_,100)
std_b_ = std(b_);
snr_b_ = mean(a_)/(std(b_)/1.414)
snr_theo = (rbw*t_int)^0.5

snr_b_/snr_theo
%so sweep int time t/npt
%diff snr is close to theory