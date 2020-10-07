# Given a sorted array arr[] of n elements,
# write a function to search a given element x in arr[].

def binary_search(x, arr, n = 1)
  y = arr[arr.length / 2]

  if x == y
    n
  elsif x > y
    binary_search(x, arr.drop(arr.length / 2), n + 1)
  else
    binary_search(x, arr.take(arr.length / 2), n + 1)
  end
end

arr = [1,2,3,4,5]

p binary_search(4, arr)
