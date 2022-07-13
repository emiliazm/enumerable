# require_relative 'MyEnumerable'

class MyList
  # include MyEnumerable
  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each do |e|
      yield e 
    end
  end
end

list = MyList.new(1, 2, 3, 4)
