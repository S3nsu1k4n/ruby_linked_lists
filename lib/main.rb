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

llist.prepend(0)
puts llist