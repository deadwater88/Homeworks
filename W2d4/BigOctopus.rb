def greateststring(array)
  array.each do |string|
    array.all? {|string2| string >= string2 }
  end
end

# O(n^2) implementation

def gsort(array)
  return array if array.length == 1
  pivot = array.length / 2
  first = array[0...pivot]
  second = array[pivot..-1]
  greater(gsort(first), gsort(second))
end

def greater(arr1, arr2)
  arr1.first > arr2.first ? arr1 : arr2
end

#O(nlogn) Implementation of gsort

def gbest(array)
  greatest = array.first
  array[1..-1].each do |el|
    greatest = el if el > greatest
  end
  greatest
end

# (O(n)) implementation

def slowdance(dir, array)
  array.each_with_index {|el, idx| return idx if el == dir}
end

tilehash = {}
tarray.each_with_index do |el, idx|
  tilehash[el] = idx
end

def fastdance(dir)
  tilehash[dir]
end
