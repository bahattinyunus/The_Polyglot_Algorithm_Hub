actor Main
  new create(env: Env) =>
    let arr: Array[I64] = [10; 7; 8; 9; 1; 5]
    env.out.print("Original: " + _array_to_string(arr))
    
    let sorted = _quick_sort(arr)
    env.out.print("Sorted:   " + _array_to_string(sorted))

  fun _quick_sort(arr: Array[I64]): Array[I64] =>
    if arr.size() <= 1 then
      return arr
    end
    
    try
      let pivot = arr(0)?
      let less = Array[I64]
      let greater = Array[I64]
      
      for i in Range(1, arr.size()) do
        let item = arr(i)?
        if item < pivot then less.push(item) else greater.push(item) end
      end
      
      let res = _quick_sort(less)
      res.push(pivot)
      res.append(_quick_sort(greater))
      res
    else
      arr
    end

  fun _array_to_string(arr: Array[I64]): String =>
    var s = ""
    for item in arr.values() do
      s = s + item.string() + " "
    end
    s
