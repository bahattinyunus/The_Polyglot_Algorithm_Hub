functor
import
   System
define
   fun {QuickSort Xs}
      case Xs
      of nil then nil
      [] Pivot|Xr then
         fun {IsSmaller X} X < Pivot end
         fun {IsLarger X} X >= Pivot end
         {Append {QuickSort {Filter Xr IsSmaller}}
          Pivot|{QuickSort {Filter Xr IsLarger}}}
      end
   end

   Arr = [10 7 8 9 1 5]
   {System.showInfo "Original: "}
   {System.show Arr}
   {System.showInfo "Sorted:   "}
   {System.show {QuickSort Arr}}
   {System.exit 0}
end
