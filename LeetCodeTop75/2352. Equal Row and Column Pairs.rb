# @param {Integer[][]} grid
# @return {Integer}
def equal_pairs(grid)
  rows = grid.tally
  total = 0

  grid.transpose.each do |col|
      total += rows[col] if rows[col]
  end

  total
end