defmodule QuickSort do
  def sort([]), do: []
  def sort([pivot | tail]) do
    {left, right} = Enum.split_with(tail, &(&1 < pivot))
    sort(left) ++ [pivot] ++ sort(right)
  end
end

arr = [10, 7, 8, 9, 1, 5]
IO.puts "Original array: #{inspect(arr)}"
sorted_arr = QuickSort.sort(arr)
IO.puts "Sorted array: #{inspect(sorted_arr)}"
