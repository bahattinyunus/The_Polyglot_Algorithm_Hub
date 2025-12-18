program QuickSort;
{$APPTYPE CONSOLE}
uses SysUtils;

type
  TIntegerArray = array of Integer;

procedure QuickSortRec(var Arr: TIntegerArray; Low, High: Integer);
var
  i, j, pivot, temp: Integer;
begin
  i := Low;
  j := High;
  pivot := Arr[(Low + High) div 2];
  
  repeat
    while Arr[i] < pivot do Inc(i);
    while Arr[j] > pivot do Dec(j);
    
    if i <= j then
    begin
      temp := Arr[i];
      Arr[i] := Arr[j];
      Arr[j] := temp;
      Inc(i);
      Dec(j);
    end;
  until i > j;
  
  if Low < j then QuickSortRec(Arr, Low, j);
  if i < High then QuickSortRec(Arr, i, High);
end;

var
  Arr: TIntegerArray;
  i: Integer;
begin
  SetLength(Arr, 6);
  Arr[0] := 10; Arr[1] := 7; Arr[2] := 8; 
  Arr[3] := 9;  Arr[4] := 1; Arr[5] := 5;
  
  Write('Original: ');
  for i := 0 to High(Arr) do Write(IntToStr(Arr[i]) + ' ');
  Writeln;
  
  QuickSortRec(Arr, 0, High(Arr));
  
  Write('Sorted: ');
  for i := 0 to High(Arr) do Write(IntToStr(Arr[i]) + ' ');
  Writeln;
end.
