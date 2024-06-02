class Matrix
  def initialize(matrix)
    @rows = matrix.split("\n").map(&:split)
  end 

  def row(index)
    @rows[index - 1].map(&:to_i)
  end

  def column(index)
    the_column = @rows.map { |row| row.at(index - 1) }
    the_column.map(&:to_i)
  end

end
