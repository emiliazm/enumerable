module MyEnumerable
  def all?
    each do |item|
      return false unless yield item
    end
    true
  end

  def any?
    each do |item|
      return true if yield item
    end
    false
  end

  def filter
    new_list = []
    each do |item|
      new_list << item if yield item
    end
    new_list
  end

  # { |a, b| a <=> b }
  def max
    maxnum = nil
    each do |item|
      maxnum = item if maxnum.nil?
      maxnum = item if yield(maxnum, item) == -1 && !maxnum.nil?
    end
    maxnum
  end

  def min
    minnum = nil
    each do |item|
      minnum = item if minnum.nil?
      minnum = item if yield(minnum, item) == 1 && !minnum.nil?
    end
    minnum
  end

  def sort(&block)
    sorted_array = []
    each do |item|
      sorted_array << item
    end
    i = 0
    while i < sorted_array.length do
      j = 0
      while j < sorted_array.length do
        if yield(sorted_array[j], sorted_array[j + 1]) == -1
          aux = sorted_array[j]
          sorted_array[j] = sorted_array[j + 1]
          sorted_array[j + 1] = aux
        end
        j+=1
      end
      i+=1
    end
    sorted_array
  end
end
