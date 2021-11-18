Fs = 1024;
L=1024;
t=(0:L-1)'/Fs;
fewt1=ewt{3};

%%%%%%%%%%%%%%%%%%%%%%%%% EWT%%%%%%%%%%%%%%%%
r=length(fewt1)
figure;
for jj=1:r
subplot(r,1,jj);
x=fewt1{jj};
plot(t,x(1:L));
end

for jj=1:r
    figure;
 x=fewt1{jj};
 envspectrum(x,Fs)
end