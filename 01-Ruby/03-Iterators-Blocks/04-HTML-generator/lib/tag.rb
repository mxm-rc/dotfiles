def tag(tag_name, attributes = nil)
  # TODO: Build HTML tags around content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
  final_name = yield
  if attributes.nil?
    "<#{tag_name}>#{final_name}</#{tag_name}>"
  else
    "<#{tag_name} #{attributes[0]}=\"#{attributes[1]}\">#{final_name}</#{tag_name}>"
  end
end
