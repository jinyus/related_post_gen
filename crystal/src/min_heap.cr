class MinHeap(T)
  @heap : Array(T)

  delegate :size, to: @heap
  delegate :empty?, to: @heap
  delegate :to_s, to: @heap
  delegate :map, to: @heap
  delegate :clear, to: @heap

  @comparator : (T, T -> Int32)

  def initialize(capacity : Int32, &block : T, T -> Int32)
    @heap = Array(T).new(initial_capacity: capacity)
    @comparator = block
  end

  def push(val : T)
    @heap << val
    sift_up(@heap.size - 1)
  end

  def peek_min
    @heap[0]
  end

  def pop
    return nil if @heap.empty?

    min = @heap[0]
    @heap[0] = @heap[@heap.size - 1]
    @heap.pop
    sift_down(0)

    min
  end

  def replace_min(val : T)
    return if @heap.empty?

    @heap[0] = val
    sift_down(0)
  end

  private def parent(idx)
    (idx - 1) // 2
  end

  private def left_child(idx)
    2 * idx + 1
  end

  private def right_child(idx)
    2 * idx + 2
  end

  private def has_left_child(idx)
    left_child(idx) < @heap.size
  end

  private def has_right_child(idx)
    right_child(idx) < @heap.size
  end

  private def swap(i, j)
    @heap[i], @heap[j] = @heap[j], @heap[i]
  end

  private def sift_up(idx)
    while idx > 0 && @comparator.call(@heap[idx], @heap[parent(idx)]) == -1
      swap(idx, parent(idx))
      idx = parent(idx)
    end
  end

  private def sift_down(idx)
    while has_left_child(idx)
      min_child_idx = left_child(idx)
      if has_right_child(idx) && @comparator.call(@heap[right_child(idx)], @heap[left_child(idx)]) == -1
        min_child_idx = right_child(idx)
      end
      if @comparator.call(@heap[idx], @heap[min_child_idx]) < 1
        break
      end
      swap(idx, min_child_idx)
      idx = min_child_idx
    end
  end
end
