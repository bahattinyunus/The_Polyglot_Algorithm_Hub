with Ada.Text_IO; use Ada.Text_IO;

procedure Quick_Sort is
   type Int_Array is array (Integer range <>) of Integer;
   Arr : Int_Array (1 .. 6) := (10, 7, 8, 9, 1, 5);

   procedure Sort (A : in out Int_Array; Left, Right : Integer) is
      I, J : Integer;
      Pivot : Integer;
      Temp : Integer;
   begin
      I := Left;
      J := Right;
      Pivot := A ((Left + Right) / 2);

      while I <= J loop
         while A (I) < Pivot loop
            I := I + 1;
         end loop;
         while A (J) > Pivot loop
            J := J - 1;
         end loop;

         if I <= J then
            Temp := A (I);
            A (I) := A (J);
            A (J) := Temp;
            I := I + 1;
            J := J - 1;
         end if;
      end loop;

      if Left < J then
         Sort (A, Left, J);
      end if;
      if I < Right then
         Sort (A, I, Right);
      end if;
   end Sort;

begin
   Put_Line ("Sorting Array...");
   Sort (Arr, Arr'First, Arr'Last);
   for I in Arr'Range loop
      Put (Integer'Image (Arr (I)));
   end loop;
   New_Line;
end Quick_Sort;
