   function [species,xyz] = findgeomgjf(filename)
%  filename='simpleP.gjf' 
fid=fopen(filename,'r');
 while 1
 
   iline= fgetl(fid);
   if iline==-1
     disp(  'ERROR reading file');
    break
   end
    geominfo=strcmp(iline,'') ;%读到空行就万料
   if  geominfo
         break
   end
   
end
fgetl(fid) ;fgetl(fid) ;fgetl(fid);
iy=1;
while 1
currentdataline=  fgetl(fid);
isend=regexp(currentdataline,'') ;% check whether ended
   if strcmp(currentdataline,'')%读到空行就万料
     
      break
  end
   data=strsplit(currentdataline);
   
   species(iy)=data{2};
   
   xyz(iy,1)=str2double(data{3});
   xyz(iy,2)=str2double(data{4});
   xyz(iy,3)=str2double(data{5});
   iy=iy+1;
   
end

fclose(fid);
 end