def binary_search(target, list, idx = (0...list.length).to_a)
  position = (list.length / 2).floor
  mid = list[position]
  indx = idx[position]
  return "The element is at position #{indx}." if mid == target
  return 'No data found.' if position == 0
  if target < mid
    binary_search(target, list[0...position], idx[0...position])
  else
    binary_search(target, list[position..-1], idx[position..-1])
  end
end

puts binary_search(9, [1,2,3,4,5,6,7,8,10])
puts binary_search(9, [1,2,3,4,5,6,7,8,9,10])
