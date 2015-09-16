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
end
