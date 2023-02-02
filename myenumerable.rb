module MyEnumerable

  def all? 
    result = true
    each do |i| yield i 
    result &&= yield i
    end
    puts result
  end

  def any?
    result = false
    each do |i| yield i 
    result ||= yield i
    end
    puts result
  end

  def filter
    result = []
    each do |i| yield i 
     result.push(i) if(yield i)
    end
    p result
  end

end