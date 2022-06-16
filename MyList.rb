require_relative 'MyEnumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    for item in @list do
        yield item
    end
  end

end

list = MyList.new(1, 2, 3, 4)
# All method
p list.all? {|e| e < 5}
p list.all? {|e| e > 5}

# Any method
p list.any? {|e| e == 2}
p list.any? {|e| e == 5}