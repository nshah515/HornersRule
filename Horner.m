%open file
function root=Horner(file)
fID=fopen('Horner1.txt','r');
%read as row
[D,length]=fscanf(fID, '%f', [1 Inf]);
fclose(fID);

%declare variables to be used
der=0;
x0=D(1,D(1,1)+3);
fn=0.0;

%compute function
for i=1:D(1,1)+1
    fn=fn+((D(1,i+1)*((x0)^(i-1))));
end

%compute derivative
for i=1:D(1,1)
    der=der+(D(1,i+2)*((x0)^(i-1))*i);
end
%print function and derivative
disp(fn);
disp(der);
end
