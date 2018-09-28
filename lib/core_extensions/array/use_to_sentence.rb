class Array
  def to_sentence
    options = {
      words_connector: ", "
      two_words_connector: " and "
      last_word_connector: ", and "
    }

    case length
      when 0
        ""
      when 1
        self[0].to_s.dup
      when 2
        "#{self[0]}#{options[:two_words_connector]}#{self[1]}"
      else
        "#{self[0...-1].join(options[:words_connector])}#{options[:last_word_connector]}#{self[-1]}"
    end
  end
end