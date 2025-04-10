# @param {Integer[][]} rooms
# @return {Boolean}
def can_visit_all_rooms(rooms)
  visited = Set.new()
  q = Queue.new()
  rooms.first.each do |k|
      q.push(k)
  end
  visited.add(0)

  while !q.empty? do
      element = q.shift()
      unless visited.include?(element) 
          rooms[element].each do |k|
              unless visited.include?(k)
                  q.push(k)
              end
          end
          visited.add(element)
      end
  end

  visited.length == rooms.length
end