def array_to_hash(array)
  # TODO: implement the method :)
  hash = {}
  array.map do |i|
    hash[array.index(i).to_s] = i
    if block.given?
    yield
    end
  end
  hash
end
