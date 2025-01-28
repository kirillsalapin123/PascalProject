program calc;
var
    x, y, z: real;
    sign: char;
 
begin
    while True do begin
 
        write('sign: '); 
        readln(sign);
 
        if sign = '0' then 
            break;
 
        if sign in ['+','-','*','/'] then begin
 
            write('x = '); 
            readln(x);
            write('y = '); 
            readln(y);
 
            case sign of
 
                '+': begin 
                    z := x + y; 
                    writeln(z:5:2) 
                end;
 
                '-': begin 
                    z := x - y; 
                    writeln(z:5:2); 
                end;
 
                '*': begin 
                    z := x * y; 
                    writeln(z:5:2); 
                end;
 
                '/': 
                    if y <> 0 then begin
                        z := x / y;
                        writeln(z:5:2)
                    end
                    else
                        writeln('На 0 делить нельзя!');
            end;
        end
        else 
            writeln('Ошибка неверный символ!');
        writeln;
    end;
end.
