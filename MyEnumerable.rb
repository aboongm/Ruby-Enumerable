module MyEnumerable

  def all?(&block)
    result = true
    self.each { |item| result = false unless block.call(item) }
    result
  end

  def any?(&block)
    result = false
    self.each { |item| result = true if block.call(item) }
    result
  end


  def filter; end
end
