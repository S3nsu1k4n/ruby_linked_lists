# frozen_string_literal: true

require './lib/node'

# represents the full list
class LinkedList
  def initialize; end

  # adds a new node containing "value" to the end of the list
  def append(value); end

  # adds a new node containing "value" to the start of the list
  def prepend(value); end

  # returns the total number of nodes in the list
  def size; end

  # returns the first node in the list
  def head; end

  # returns the last node in the list
  def tail; end

  # returns the node at the given index
  def at(index); end

  # removes the last element from the list
  def pop; end

  # returns true if the passed in value is in the list and other returns false
  def contains?(value); end

  # returns the indes of the node containing value, or nil if not found
  def find(value); end

  # represent your LinkedList objects as string, so you can print them out and preview them in the console
  # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  def to_s; end

  # that insert a new node with the provided value at the given index
  def insert_at(value, index); end

  # that removes the node at the given "index"
  def remove_at(index); end
end
