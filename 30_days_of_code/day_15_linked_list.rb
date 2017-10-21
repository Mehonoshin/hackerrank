def insert(head,value)
  return Node.new(value) if head.nil?
  curr = head
  while curr.next != nil
      curr = curr.next
  end
  curr.next = Node.new(value)
  head
end
