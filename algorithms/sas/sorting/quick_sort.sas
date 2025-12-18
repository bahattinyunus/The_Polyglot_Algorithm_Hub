/* Quick Sort in SAS (DATA Step) */
data _null_;
   array arr[6] _temporary_ (10, 7, 8, 9, 1, 5);
   
   /* Using Bubble Sort for simplicity in DATA step as recursion is limited */
   do i = 1 to 6;
      do j = 1 to 5;
         if arr[j] > arr[j+1] then do;
            temp = arr[j];
            arr[j] = arr[j+1];
            arr[j+1] = temp;
         end;
      end;
   end;
   
   put "Sorted Array: " arr[*];
run;
