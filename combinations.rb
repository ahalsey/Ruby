def combinations(arr)
  outerarr = []
  innerarr = []
  i = 0
  j = 1
  while i < (arr.length - 1) do
    while j < arr.length do
      innerarr << arr[i]
      innerarr << arr[j]
      j += 1
      outerarr << innerarr
      innerarr = []
    end
    i += 1
    j = i + 1
  end
  return outerarr
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts
