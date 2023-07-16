# frozen_string_literal: true

require './lib/node'

# represents the full list
class LinkedList
  def initialize
    @head_node = nil
  end

  # adds a new node containing "value" to the end of the list
  def append(value)
    if @head_node.nil?
      @head_node = Node.new(value)
    else
      tail.next_node = Node.new(value)
    end
  end

  # adds a new node containing "value" to the start of the list
  def prepend(value)
    @head_node = Node.new(value, @head_node)
  end

  # returns the total number of nodes in the list
  def size
    size = 0
    each_node_with_index { |_, index| size = index}
    size + 1
  end

  def each_node
    node = @head_node
    yield node
    until node.next_node.nil?
      node = node.next_node
      yield node
    end
  end

  def each_node_with_index
    index = 0
    each_node do |node|
      yield node, index
      index += 1
    end
  end

  # returns the first node in the list
  def head
    @head_node
  end

  # returns the last node in the list
  def tail
    last_node = nil
    each_node { |node| last_node = node}
    last_node
  end

  # returns the node at the given index
  def at(index)
    each_node_with_index do |node, i|
      return node if index == i
    end
  end

  # removes the last element from the list
  def pop
    at(size - 2).next_node = nil
  end

  # returns true if the passed in value is in the list and other returns false
  def contains?(value)
    each_node do |node|
      return true if node.value == value
    end
    false
  end

  # returns the index of the node containing value, or nil if not found
  def find(value)
    each_node_with_index do |node, index|
      return index if node.value == value
    end
  end

  # represent your LinkedList objects as string, so you can print them out and preview them in the console
  # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  def to_s
    node = @head_node
    output = "(#{node.value})"

    until node.next_node.nil?
      node = node.next_node
      output += " -> (#{node.value})"
    end
    output
  end

  # that insert a new node with the provided value at the given index
  def insert_at(value, index)
    node_before_index = at(index - 1)
    node_at_index = node_before_index.next_node
    node_before_index.next_node = Node.new(value, node_at_index)
  end

  # that removes the node at the given "index"
  def remove_at(index); end
end
