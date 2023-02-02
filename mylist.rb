$LOAD_PATH << '.'

require 'myenumerable'

class MyList
include MyEnumerable
  def initialize(*values)
    @list = values
  end
  def each
    @list.each { |i| yield i }
 end
end
 list = MyList.new(1, 2, 3, 4)
 list.all? {|e| e < 5}
 list.all? {|e| e > 5}
 list.all? {|e| e <= 2}