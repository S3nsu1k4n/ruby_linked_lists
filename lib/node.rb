# frozen_string_literal: true

# nodes for the values in the linked lists
class Node
  attr_reader :value, :next_node

  def initialize
    @value = nil
    @next_node = nil
  end
end
