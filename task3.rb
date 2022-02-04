arr = [ nil, 2, :foo, "bar", "foo", "apple", "orange", :orange, 45, nil, :foo, :bar, 25, 45, :apple, "bar", nil]

puts Hash[*arr.map { |val| [val, arr.count(val)] }.uniq.flatten]