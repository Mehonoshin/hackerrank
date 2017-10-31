def removeDuplicates(head)
  original_head = head
  prev = nil
  uniq_values = []
    
  while head
      if uniq_values.include?(head.data)
          prev.next = head.next
      else
          uniq_values.push(head.data)
          prev = head
      end
      head = head.next
  end
  original_head
end

