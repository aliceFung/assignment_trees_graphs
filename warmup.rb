require_relative 'edge_list'

class AdjacencyMatrix
  attr_reader :edge_list, :id, :matrix

  def initialize(edge_list)
    @edge_list = edge_list
    @id = []
  end


  def print_matrix
    print "ID# \t"
    (0..@vertices-1).each do |id|
      print id
      print "\t"
    end
    print "\n"
    count = 0
   @matrix.each do |row|
    print "#{count} \t"
    row.each do |item|
      item.nil? ? (print "X") : (print item)
      print "\t"
    end
    print "\n"
    count += 1
   end
  end

  def build_matrix #undirected
    @matrix = Array.new(@vertices)
    (0..@vertices-1).each do |index|
      @matrix[index] = Array.new(@vertices)
    end
    @edge_list.list.each do |edge|
      @matrix[edge[0].id][edge[1].id] = edge[2]
      @matrix[edge[1].id][edge[0].id] = edge[2]
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

  def edge_weight(id1, id2)
    @matrix[id1][id2]
  end

end