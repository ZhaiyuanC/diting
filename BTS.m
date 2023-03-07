
final=10000;            %结束的行数
filename1='F:\桌面\C3\zyc\test.xlsx';
source='F:\桌面\C3\zyc\source.xlsx';
rangesourceup='A1:A134';
rangesourcedown='B1:B134';
[~,sourceup]=xlsread(source,rangesourceup);
[~,btsname,~]=xlsread(filename1,'C:C');

for i=1:final
    
    for j=1:133
        
        if strcmp(btsname(i,1),sourceup(j,1))==1
            num(i,1)=j;
            break
        else
            num(i,1)="切换点不存在";
        end
    end
end
