# class Node
#   attr_accessor :data, :next
#   def  initialize(data)
#     @data = data
#     @next = nil
#   end
# end

#   #simple link list
# # node1 = Node.new(5)
# # node2 = Node.new(4)
# # node3 = Node.new(3)
# # node4 = Node.new(2)
# # node5 = Node.new(1)

# # node1.next = node2
# # node2.next = node3
# # node3.next = node4
# # node4.next = node5

# # current = node1
# # while current
# #   puts "#{current.data} => #{current.next&.data}"
# #   current = current.next
# # end

#   class LinkList
#     attr_accessor :head

#     def initialize
#       @head = nil
#     end

#     def search_value(value)
#       current = @head
#       while current
#         if current.data == value
#           return true
#         end
#         current = current.next
#       end
#       return false
#     end

#     def counting_nodes
#       current = @head
#       total = 0
#       while current
#         total = total + 1
#         current = current.next
#       end
#       puts "total  nodes are #{total}"
#     end

#     def reversing
#       current = @head
#       prev = nil

#       while current
#         next_node = current.next
#         current.next = prev
#         prev = current
#         current = next_node
#       end
#       @head = prev
#       current = @head
#       while current
#         puts "#{current.data} => #{current.next&.data}"
#         current = current.next
#       end
#     end
#     def inserting(value)
#       node = Node.new(value)
#       if @head.nil?
#         @head = node
#       else
#         current = @head

#         while current.next
#           current = current.next
#         end
#         current.next = node
#         current = @head
#         while current
#         puts "#{current.data} => #{current.next&.data}"
#         current = current.next
#         end
#       end
#     end

#     def deletion

#       if @head.nil?

#         puts "list is empty"

#       elsif @head.next.nil?
#         @head = nil
#         puts "node has been deleted"
#       else
#         current = @head
#         while current.next.next
#           current = current.next
#         end
#         current.next = nil
#         current = @head
#         while current
#             puts "node #{current.data} => #{current.next&.data}"
#             current = current.next
#         end
#       end

#     end

#     def delete_value(value)
#       if @head.nil?
#         puts "list is empty"
#       elsif @head.data == value
#         @head = @head.next
#         puts "delete from head"

#       else
#         current = @head
#         while current.next && current.next.data != value
#           current.next = current.next.next
#         end
#         if current.next
#           current.next = current.next.next
#           puts "delete from middle"
#         else
#           puts "not found"
#         end
#       end
#       current = @head
#       while current
#         puts "node #{current.data} => #{current.next&.data}"
#         current = current.next
#       end
#     end


#   end



#   list = LinkList.new
#   list.head = Node.new(10)
#   list.head.next = Node.new(20)
#   list.head.next.next = Node.new(30)
#   list.head.next.next.next = Node.new(40)
#   list.head.next.next.next.next = Node.new(50)

#   element_to_search = 50
#   if list.search_value(element_to_search)
#     puts "Element #{element_to_search} found in list"

#   else
#     puts "Elment #{element_to_search} not found in list"
#   end

# list.counting_nodes
# # list.inserting(100)
# # list.deletion
# # list.delete_value(20)
# list.delete_value(10)

















































class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

class LinkList
  attr_accessor :head
  def initialize()
    @head = nil
  end

  def display
    current = @head
    while current
      puts "#{current.data} => #{current.next&.data}"
      current = current.next
    end
  end

  def search(target)
    current = @head

    while current && current.data != target

        current = current.next
    end
    if current
      puts "node #{current.data} => #{current.next&.data}"
    else
      puts "node not found"
    end


  end

  def count_node

    current = @head
    total = 0
    while current
      total += 1
      current = current.next
    end
    puts "total nodes are #{total}"
  end

  def insertion(target)
    current = @head
    if @head.nil?
      @head = target
    else
      while current.next
        current = current.next
      end
      new_node = Node.new(target)
      current.next = new_node
    end
    current = @head
    while current
      puts "node #{current.data} => #{current.next&.data}"
      current = current.next
    end
  end

  def deletion_last
    if @head.nil?
      puts "empty  list"
    elsif !@head.next
      @head = nil
    else
      current = @head
      while current.next.next
        current = current.next
      end
      current.next = nil
      current = @head
      while current
        puts "node #{current.data} => #{current.next&.data}"
        current = current.next
      end
    end
  end

  def reverse_list
      current = @head
      # next = current.next
      prev = nil
      if current.nil?
        puts  "list is empty"
      elsif current.next.nil?
        puts "only one node in the list"
      else
        while current
          next_node = current.next
          current.next = prev
          prev = current
          current = next_node
        end
      end
      @head = prev
      current = @head
      while current
        puts "node #{current.data} => #{current.next&.data}"
        current = current.next
      end
  end



  # def delete_any(target)

  #   if @head.nil?
  #     puts "list is empty"
  #   elsif @head.data == target
  #     @head = @head.next
  #     puts "deleted from top"
  #   else
  #     current = @head
  #     while current.next && current.next&.data != target
  #       current.next = current.next.next
  #     end
  #     if current.next
  #       current.next = current.next.next
  #       puts "deleted from middle"

  #     else
  #       puts "not found"
  #     end
  #   end
  #   current = @head
  #     while current
  #       puts "node #{current.data} => #{current.next&.data}"
  #       current = current.next
  #     end

  # end
  def delete_any(value)
          if @head.nil?
            puts "list is empty"
          elsif @head.data == value
            @head = @head.next
            puts "delete from head"

          else
            current = @head
            while current.next && current.next.data != value
              current = current.next
            end
            if current.next
              current.next = current.next.next
              puts "delete from middle"
            else
              puts "not found"
            end
          end
          current = @head
          while current
            puts "node #{current.data} => #{current.next&.data}"
            current = current.next
          end
        end
end


node1 = Node.new(10)
node2 = Node.new(20)
node3 = Node.new(30)


list = LinkList.new
list.head = node1
list.head.next = node2
list.head.next.next = node3

# list.display
# list.search(40)
# list.count_node
list.insertion(40)
# list.deletion_last
# list.reverse_list
list.delete_any(40)
