def sentences_number(text)
  [1, text.split(".").length].max
end

def paragraph_number(text)
  [1, text.count("\n\n")].max
end

def analyze(text)
  # TODO: should analyze the text, and return the result hash with all features
  {
    character_count: text.length,
    character_count_excluding_spaces: text.gsub(' ', '').length,
    line_count: [text.count("\n"), 1].max,
    word_count: text.split.length,
    sentence_count: sentences_number(text),
    paragraph_count: paragraph_number(text),
    average_words_per_sentence: text.split.length / sentences_number(text).to_f,
    average_sentences_per_paragraph: sentences_number(text) / paragraph_number(text).to_f
  }
end
