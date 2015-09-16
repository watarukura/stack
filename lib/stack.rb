class Stack
  def initialize
    @nodes = []
  end

  def push(node)
    @nodes << node
  end

  def empty?
    @nodes.empty?
  end

  def size
    @nodes.size
  end

  def top
    @nodes[@nodes.size - 1]
  end
end
