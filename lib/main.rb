# frozen_string_literal: true

require './lib/linked_list'

llist = LinkedList.new

llist.append(1)
llist.append(2)
llist.append(3)
llist.append(4)
llist.append(5)
llist.append(6)
llist.append(7)
llist.append('test')

llist.prepend(0)
puts llist
puts llist.size
puts llist.head.value
puts llist.at(8).value
llist.pop
puts llist.size
puts llist
puts llist.contains? 'test'
puts llist.contains? 6

puts llist.find 'test'
puts llist.find 3
