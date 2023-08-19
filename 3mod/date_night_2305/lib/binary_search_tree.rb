require './lib/node'

class BinarySearchTree
  def initialize
    @root = nil
  end

  def insert(score, title)
    depth = 0
    if @root.nil?
      @root = Node.new(score, title)
    else
      current = @root
      done = false
      until done
        depth += 1
        if score < current.score
          if current.left.nil?
            current.left = Node.new(score, title)
            done = true
          else
            current = current.left
          end
        elsif score > current.score
          if current.right.nil?
            current.right = Node.new(score, title)
            done = true
          else
            current = current.right
          end
        else
          done = true
          return depth
        end
      end
    end
    depth
  end

  def include?(score)
    current = @root
    while current
      if score == current.score
        return true
      elsif score < current.score
        current = current.left
      else
        current = current.right
      end
    end
    false
  end

  def depth_of(score)
    current = @root
    depth = 0
    while current
      if score == current.score
        return depth
      elsif score < current.score
        current = current.left
      else
        current = current.right
      end
      depth += 1
    end
    nil
  end

  def max
    return nil if @root.nil?

    current = @root
    while current.right
      current = current.right
    end

    { current.title => current.score }
  end

  def min
    return nil if @root.nil?

    current = @root
    while current.left
      current = current.left
    end

    { current.title => current.score }
  end

  def sort
    result = []
    in_order_traversal(@root, result)
    result
  end

  private

  def in_order_traversal(node, result)
    return if node.nil?

    in_order_traversal(node.left, result)
    result << { node.title => node.score }
    in_order_traversal(node.right, result)
  end
end
  