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

  def build_matrix
    @id = Array.new() { Array.new() { } }
   # id[0] = [4, 8 ,8 7]
    @edge_list.list.each do |edge|
      # @edge_list.list.length.times do |i|
        # @arr[edge[0].id] << edge[2]
      @id[edge[0].id][edge[1].id]<< edge[2]
    end


  end


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