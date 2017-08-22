clear
home
!mkdir data
% fa =  10;  %MHz
% fb =  1000; %MHz
% fa =  1000;  %MHz
% fb =  1800; %MHz
%fa =  98.5;  %MHz
%fb =  100.5; %MHz
fa =  1;  %MHz
fb =  200; %MHz

rbw = 10*1000;%Hz
vbw = 10*1;%Hz
% rbw = 10*1000;%Hz
% vbw = 10*1000;%Hz
%npt = 10001;  %40001 max, 4001/2001 good for plot
npt = fix((fb-fa)*1000000/rbw) +1 
istest = 0 %0 or 1

nsub = 10 ; % >=2
nsave = 10000 ;

ATTEN = '6'; %dB, use with care
RLEV = '-20'; %dBm
rbw_kHz = rbw/1000
rbw_ref_kHz = (fb-fa)*1000/(npt-1)

%%
%DET = 'POS'
DET = 'AVER';

rbw_str = [num2str(rbw/1000) 'kHz'];
vbw_str = [num2str(vbw) 'Hz'];
mxa = tcpip('localhost',5025);
% remotehost='169.254.100.64';    %zhx
% mxa = tcpip(remotehost,5555)    %zhx
set(mxa,'InputBufferSize',1024000)
set(mxa,'Timeout',100);
%set(mxa,'Timeout',100);

tic
fopen(mxa);
identity = query(mxa, '*IDN?');
fprintf(mxa,'*RST');

%do not save visible time
%fprintf(mxa,':DISPlay:ENABle OFF')
fprintf(mxa,':DISPlay:ENABle ON');

%min atten step is 2dB
if exist('ATTEN')
fprintf(mxa,[':POWer:RF:ATTenuation ' ATTEN]);
end
ATTEN_read = query(mxa,':POWer:RF:ATTenuation?')

% Set the center frequency to 1 GHz using a SCPI command
%fprintf(mxa,':FREQ:CENT 100 MHz');
% Set the span to 20 MHz
%fprintf(mxa,':FREQ:SPAN 20 MHz');
fprintf(mxa,[':FREQ:START ' num2str(fa) ' MHz']);
fprintf(mxa,[':FREQ:STOP '  num2str(fb) ' MHz']);

%RBW
fprintf(mxa,[':BAND ' rbw_str]);
%VBW
fprintf(mxa,[':BAND:VID ' vbw_str]);

%SNGLS
fprintf(mxa,':INIT:CONT OFF');
%continues
%fprintf(mxa,':INIT:CONT ON');

%FFT, fast sweep
fprintf(mxa,':SWEep:TYPE:AUTO:RULes SPEed') %will have saw on trace botton
%fprintf(mxa,':SWEep:TYPE:AUTO:RULes DRANge') %more accurate, slow, default
fprintf(mxa,':AVER:TYPE RMS'); 
% NORM              =Normal
% AVER               =Average / RMS
% POS                  =Positive peak
% SAMP              =Sample
% NEG                 =Negative peak
fprintf(mxa,[':DET:TRAC ' DET]); 

% Set the reference level to +10 dBm
% set to 0 dBm, ADC may overange for 4.5m
fprintf(mxa,[':DISP:WIND:TRAC:Y:RLEV ' RLEV]);

% Set the data trace format to REAL, 32 bits
fprintf(mxa,':FORM:DATA REAL,32');

%trace to 1001 points
fprintf(mxa,[':SWE:POIN ' num2str(npt)]);
% Get the nr of trace points
nr_points = str2double(query(mxa,':SWE:POIN?'))
% Get the reference level
ref_lev = str2num(query(mxa,'DISP:WIND:TRAC:Y:RLEV?'));
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
%start a sweep
fprintf(mxa,':TRAC? TRACE1');
tic
% read the trace data
a = binblockread(mxa,'float32'); 
%size_a = size(a)
t_read = toc
%not responding if add this
%tmp = fscanf(mxa); %removes the terminator character
if size(data,1) == length(a)
   data(:, mod(i-1,nsub)+1 ) = a;
   plot(freq,a)
   xlim([fa fb])
   grid on
   p  = 10.^(a/10);
   p1 = sum(p)
   p1_dBm = 10*log10(p1)
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
fprintf(mxa,':INIT:CONT ON');
%%
fclose(mxa)

break
%%
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



