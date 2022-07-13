module MyEnumerable
  def all?
    each do |item|
      return false unless yield item
    end
    true
  end

  def any? 
    each do |item|
      return true unless !yield item
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

end