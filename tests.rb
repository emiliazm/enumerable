require_relative 'my_list'
list = MyList.new(1, 2, 3, 4)
list.all? { |e| e < 5 }
list.all? { |e| e > 5 }
list.any? { |e| e == 2 }
list.any? { |e| e == 5 }
list.filter(&:even?)
list.max { |a, b| a <=> b }
list.min { |a, b| a <=> b }
list.sort { |a, b| a <=> b }
