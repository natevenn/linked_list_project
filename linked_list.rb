require_relative 'node'
require 'pry'

class List

  attr_accessor :head

  def initialize(data = nil)
    @head = Node.new(data)
  end

  def tail
    current_node = @head
    until current_node.next_node == nil  #iterate thru list until the link = nil
      current_node = current_node.next_node
  end
    current_node
  end

  def append(data)
    new_node = Node.new(data)
    tail.next_node = new_node
  end

  def prepend(data)
    old_head = @head
    @head = Node.new(data, old_head)
  end

  def count
    count = 1
    current_node = @head
    until current_node.next_node == nil
      current_node = current_node.next_node
      count += 1
    end
      count
  end

  def pop(repeats = nil)
    new_list = []
    if @head.next_node == nil
      popped = @head.data
      @head = nil
      popped
    else
      binding.pry
    repeats.times do |i|
    current_node = @head
    until current_node.next_node.next_node == nil
      current_node = current_node.next_node
      popped = current_node.next_node.data
    end
      current_node.next_node = nil
      popped
      new_list << popped
    end
    end
  end

  def find(position, amount = nil)
    find_list = []
    count = 1
    current_node = @head
    until count == position
      current_node = current_node.next_node
      count += 1
    end
      find_list << current_node.data
      find_list.join(" ")
  end

  def include?(data)
    current_node = @head
    until current_node.data == data || current_node.next_node == nil
        current_node = current_node.next_node
    end
      if current_node.data == data
       true
     else
       false
     end
  end

  def all
    new_list = []
    current_node = @head
    until current_node.next_node == nil
      new_list << current_node.data
      current_node = current_node.next_node
    end
      new_list << current_node.data
      new_list.join(' ')
  end

  def insert(position, data)
    new_node = Node.new(data)
    count = 0
    current_node = @head
    until count == position
      current_node = current_node.next_node
      count += 1
    end
      new_link = current_node.next_node
      current_node.next_node = new_node
      current_node.next_node.next_node = new_link
      all
  end
end






























  # def insert(data, position)
  # end
