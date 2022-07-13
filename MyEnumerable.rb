module MyEnumerable
  def all?
    each do |item|
      return false unless yield item
    end
    true
  end
end