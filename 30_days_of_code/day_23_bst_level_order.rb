def levelOrder(root)
    result, queue = [], [root]
    while !queue.empty?
        node = queue.shift
        queue.push(node.left) if node.left
        queue.push(node.right) if node.right
        result.push(node.data)
    end
    puts result.join(' ')
end
