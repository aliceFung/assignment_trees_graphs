require_relative 'edge_list'

class AdjacencyMatrix
  attr_reader :edge_list, :id

  def initialize(edge_list)
    @edge_list = edge_list
    @id = []
  end


  # def print_matrix
  #  @edge_list.list.each do |person|
  #    puts person[0][1]
  # end




  # def collect_id
  #   @edge_list.list.each do |edge|
  #     id1= edge[0].id
  #     puts "#{id1} + 0,0"
  #     id2= edge[1].id
  #     puts "#{id2} + 0,1"
  #     @id << id1 unless @id.include?(id1)
  #     @id << id2 unless @id.include?(id2)
  #   end
  #   p @id
  # end


end