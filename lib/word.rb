class Word

  @@words = []

  attr_reader(:word, :id, :definitions)

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @id = @@words.length.+(1)
    @definitions = []
  end

  define_method(:add_definition) do |definition|
    @definitions << definition
  end

  define_singleton_method(:all) do
    @@words
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_method(:save) do
    @@words << self
  end

  define_singleton_method(:find) do |identifier|
    found_word = nil
    @@words.each() do |word|
      if word.id == identifier
        found_word = word
      end
    end
    found_word
  end

end
