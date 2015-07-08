require_relative 'edge_list'

class AdjacencyMatrix
  attr_reader :edge_list, :id, :matrix

  def initialize(edge_list)
    @edge_list = edge_list
    @id = []
  end


  def print_matrix
    (0..@vertices-1).each do |id|
      print id
      print "\t"
    end
    print "\n"

   @matrix.each do |row|
    row.each do |item|
      item.nil? ? (print "X") : (print item)
      print "\t"
    end
    print "\n"
   end
  end

  def build_matrix
    @matrix = Array.new(@vertices)
    (0..@vertices-1).each do |index|
      @matrix[index] = Array.new(@vertices)
    end
   # id[0] = [4, 8 ,8 7]
    @edge_list.list.each do |edge|
      # @edge_list.list.length.times do |i|
        # @arr[edge[0].id] << edge[2]
      @matrix[edge[0].id][edge[1].id] = edge[2]
    end
  end


  def num_vertex
    @edge_list.list.each do |connection|
      id1 = connection[0].id
      id2 = connection[1].id
      @id << id1 unless @id.include?(id1)
      @id << id2 unless @id.include?(id2)
    end
    @vertices = @id.length
  end


end