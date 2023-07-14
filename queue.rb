class Queue
  def initialize(max_size)
    @queue_array = Array.new(max_size)
    @rear = -1
    @front = 0
    @max_size = max_size
    @size = -1
  end

  def enqueue(element)
    if full?
      puts "overflow detected"
      return
    end
    if @front != 0 && @rear == @max_size - 1
      @rear = 0
    else
      @rear += 1
    end

    @queue_array[@rear] = element
    puts "element #{element} has been pushed to  queue and now queue is something like this #{@queue_array}"
    @size += 1
    if queue_last_element?
      puts "queue has inserted its last element and now its look like this #{@queue_array}"
    end
  end

  def dequeue
    if empty?
      puts "queue is empty"
    else
      value_to_be_deleted = @queue_array[@front]
      @queue_array[@front] = nil
      @front += 1
      puts "element #{value_to_be_deleted} has been deleted and now queue look like this #{@queue_array}"
      @size -= 1

    end
  end

  private
  def empty?
    @size + 1 == 0
  end

  def queue_last_element?
    (@rear + 1) % @max_size == @front
  end

  def full?
    @size == @max_size - 1
  end

end

queue = Queue.new(5)

queue.enqueue(1)
queue.enqueue(2)

queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(2)
# queue.enqueue(2)
queue.dequeue
queue.dequeue
# queue.dequeue
queue.enqueue(19)
queue.enqueue(209)
