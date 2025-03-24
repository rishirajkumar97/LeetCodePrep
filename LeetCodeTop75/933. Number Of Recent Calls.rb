class RecentCounter
  def initialize()
     @arr = [] 
  end


=begin
  :type t: Integer
  :rtype: Integer
=end
  def ping(t)
      @arr.push(t)
      while @arr.last - 3000 > @arr.first; @arr.shift; end
      @arr.size
  end


end

# Your RecentCounter object will be instantiated and called as such:
# obj = RecentCounter.new()
# param_1 = obj.ping(t)