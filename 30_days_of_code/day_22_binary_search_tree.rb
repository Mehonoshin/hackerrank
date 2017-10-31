def getHeight(node)
  return 0 if node.nil?
  return 0 if node.right.nil? && node.left.nil?
  1 + [getHeight(node.left), getHeight(node.right)].max
end
