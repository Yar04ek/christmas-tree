def create_tree(tree_height)
  tree_height = 7
  tree = ""

  (0...tree_height).each do |i|
    spaces = " " * (tree_height - i)
    stars = ""

    if i == 0
      center_spaces = " " * tree_height
      tree += "#{center_spaces}W\n"
    elsif i == 1
      center_spaces = " " * tree_height
      stars = "*"
      tree += "#{center_spaces}#{stars}\n"
    else
      if i.even?
        stars = ("* " * i) + "@"
      else
        stars = "@#{' *' * (i - 1)}"
      end
      tree += "#{spaces}#{stars}\n"
    end
  end

  last_row_length = tree_height * 2 - 1
  center_spaces = " " * ((last_row_length - 5) / 2).to_i

  tree += "#{center_spaces}TTTTT\n"
  tree += "#{center_spaces}TTTTT\n"

  return tree
end

#tree_height = 7
tree_text = create_tree(tree_height)
puts tree_text

file_path = "tree.txt"
File.write(file_path, tree_text)
puts "Елка создана и записана в файл #{file_path}"
