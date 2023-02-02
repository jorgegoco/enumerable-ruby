module MyEnumerable

  def all? 
    result = true
    each do |i| yield i 
    result = result && (yield i)
    end
    puts result
  end

  def any?
    result = false
    each do |i| yield i 
    result = result || (yield i)
    end
    puts result
  end

  def filter
  end

end