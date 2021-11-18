L=length(AN4);
SegL=24000;
k=0;
Seg=L/SegL;
Fs=40e3;
jj=1;
DT=1/Fs;
vib=AN3(1:SegL);
time = 0:DT:(numel(vib)*DT)-DT;
params=struct;
params.N=10;
params.completion=0;
params.log=0;
params.globtrend='None';
params.reg='none';
params.globtrend='none';
params.detect='locmaxmin';
for j=1:Seg
    disp(j);
     vib=AN4(k+1:SegL+k);
     [ewt,mfb,boundaries]=EWT1D(vib,params);
     Fewt3{j}=ewt;
     Fmfb3{j}=mfb;
     FB3{j}=boundaries;
     Hilb=EWT_InstantaneousComponents(ewt,boundaries);
     for kk=1:length(Hilb)
        x{kk}=Hilb{kk}(1,1);
        y{kk}=Hilb{kk}(1,2);
     end
     FIAM3{j}=x;
     FIFM3{j}=y;
     k=SegL+k;
 end
