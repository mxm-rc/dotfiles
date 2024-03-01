def most_common_words(file_name, stop_words_file_name = "0", number_of_word = "0")
  # TODO: return hash of occurences of number_of_word most frequent words
  text_hash = Hash.new(0)
  stop_array = []
  File.open(stop_words_file_name, "r").each_line do |word|
    stop_array.push(word)
  end

  File.open(file_name, "r").each_line do |line|
    line.split.each do |word|
      next if stop_array.include?(word)

      text_hash[word] += 1
    end
  end
  p text_hash.sort_by{|k, v| -v }
end

# p most_common_words("lib/source-text.txt", "lib/stop_words.txt")
