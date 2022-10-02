{$mode objfpc}
{$coperators on}

program Back1;

var n: integer;
    a: array[1..12] of integer;
    used: array[1..12] of boolean;

procedure printPer;
var i: integer;
begin
    for i := 1 to n do write(a[i], ' ');
    writeln;
end;

procedure back(x: integer);
var j, y: integer;
begin
    for j := 1 to n do
        begin
            if not used[j] then
                begin
                    a[x] := j;
                    used[j] := true;
                    if x = n then printPer
                    else back(x + 1);
                    used[j] := false;
                end;
        end;
end;

begin
    readln(n);
    back(1);
end.
