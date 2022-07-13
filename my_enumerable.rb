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
end
