for j=101:1000
    temp=FIAM3{j};
    for jj=1:10
        tr=temp{jj};
        ts(:,jj)=tr{1};
    end
    amps(:,:,j)=ts;
end
for jh=101:1000
    tsw=amps(:,:,jh);
    disp(jh);
for h=1:10
     yt=tsw(:,h);
    r=0.2*std(yt);
    dim=2;
    SE=SampEn(yt,dim,r);
    SET(1,h)=SE;
    PE=PermEn(yt',dim);
    PET(1,h)=PE;
    RMS(1,h)=rms(yt);
    P2P(1,h)=peak2peak(yt);
    P2R(1,h)=peak2rms(yt);
    Mean(1,h)=mean(yt);
    Std(1,h)=std(yt);
    Var(1,h)=var(yt);
    Kurt(1,h)=kurtosis(yt);
    Skewn(1,h)=skewness(yt);
    F=[RMS',P2P',P2R',Mean',Std',Var',Kurt',Skewn',PET',SET'];
end
    if jh==1
        Healthy_EWTF1=F;
    else
        Healthy_EWTF1=[Healthy_EWTF1;F];
    end
end

    