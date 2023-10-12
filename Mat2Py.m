function [output_1, output_2, output_3] = MatlabtoPython_1(input_1, input_2, input_3 , input_4)
                                                                           
    cd 'C:\Users\Filepath'

    commandStr = ['python PythonScript.py ',input_1,' ', num2str(input_2),' ',num2str(input_3),' ', input_4];                                                     
                                                                                                                               
    [status, commandOut] = system(commandStr);
       
    if status==0
    fprintf('worked');
    else
        disp("failed");
    end
    
Ergebnis = [commandOut];
    
out = regexp(Ergebnis,',','split');
%Output = cell2mat(out(1:3));
  
x1 = cell2mat(out(4));
x2 = cell2mat(out(5));
x3 = cell2mat(out(6));

output_1=str2num(x1);
output_2=str2num(x2);
output_3=str2num(x3); 

output_1
output_2
output_3
end
