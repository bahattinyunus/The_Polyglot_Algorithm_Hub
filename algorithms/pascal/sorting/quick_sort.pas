program QuickSortDemo;
type
  TArray = array of Integer;

procedure QuickSort(var A: TArray; Low, High: Integer);
var
  Pivot, I, J, Temp: Integer;
begin
  if Low < High then
  begin
    Pivot := A[High];
    I := Low - 1;
    for J := Low to High - 1 do
    begin
      if A[J] < Pivot then
      begin
        Inc(I);
        Temp := A[I];
        A[I] := A[J];
        A[J] := Temp;
      end;
    end;
    Temp := A[I + 1];
    A[I + 1] := A[High];
    A[High] := Temp;
    
    QuickSort(A, Low, I);
    QuickSort(A, I + 2, High);
  end;
end;

var
  Arr: TArray;
  I: Integer;
begin
  SetLength(Arr, 6);
  Arr[0] := 10; Arr[1] := 7; Arr[2] := 8; Arr[3] := 9; Arr[4] := 1; Arr[5] := 5;
  
  Write('Original: ');
  for I := 0 to High(Arr) do Write(Arr[I], ' ');
  Writeln;
  
  QuickSort(Arr, Low(Arr), High(Arr));
  
  Write('Sorted: ');
  for I := 0 to High(Arr) do Write(Arr[I], ' ');
  Writeln;
end.
