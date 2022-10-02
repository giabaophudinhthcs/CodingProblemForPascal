{$mode objfpc}
{$coperators on}

program Back1;

var n: integer;
    a: array[1..22] of boolean;

procedure printPer;
var i: integer;
begin
    for i := 1 to n do if a[i] then write(i, ' ');
    writeln;
end;

procedure back(x: integer);
var j: integer;
begin
    if x = n + 1 then printPer;
    a[x] := false;
    back(x + 1);
    a[x] := true;
    back(x + 1);
end;

begin
    readln(n);
    back(1);
end.
