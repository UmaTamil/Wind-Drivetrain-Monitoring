F1=EWTF{1};
F2=HEWTF{1};
for j=2:100
    t=EWTF{j};
    t1=HEWTF{j};
    F1=[F1;t];
    F2=[F2;t1];
end
FETSET=[F1;F2];
tar=[ones(1000,1);zeros(1000,1)];
FETSET_Tar=FETSET;
FETSET_Tar(:,11)=tar;
filename='EWTFETSET.xlsx';
xlswrite(filename,FETSET_Tar);

