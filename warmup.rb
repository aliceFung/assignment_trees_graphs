require_relative 'edge_list'

class AdjacencyMatrix
  attr_reader :edge_list

  def initialize(edge_list)
    @edge_list = edge_list
  end
  
  def print_matrix
   @edge_list.list.each do |person|
     puts person[0][1] 
  end 


  end
end