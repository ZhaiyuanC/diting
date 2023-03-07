final=20;            %结束的行数

[wenjianming1,lujing1]=uigetfile('*');

filename=string([lujing1 wenjianming1]);

[wenjianming2,lujing2]=uigetfile('*');

source=string([lujing2 wenjianming2]);



rangesourceup='A1:A134';
rangesourcedown='B1:B134';
[~,sourceup]=xlsread(source,rangesourceup);
[~,sourcedown]=xlsread(source,rangesourcedown);
[~,btsname,~]=xlsread(filename,'C:C');


num=up(final,btsname,sourceup);

%num=down(final,btsname,sourceup);
xlswrite("1.xls",num);

function num=up(final,btsname,sourceup)

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


end


function num=down(final,btsname,sourcedown)

for i=1:final
    
    for j=1:133
        
        if strcmp(btsname(i,1),sourcedown(j,1))==1
            num(i,1)=j;
            break
        else
            num(i,1)="切换点不存在";
        end
    end
end


end
