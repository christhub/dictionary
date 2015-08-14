require('rspec')
require('word')

describe(Word) do

  before() do
    Word.clear()
  end

  describe('#word') do
    it('will return the word that you want to define') do
      test_word = Word.new(:word => 'seance')
      expect(test_word.word()).to(eq('seance'))
    end
  end

  describe('#id') do
    it('will return the words index/id') do
      test_word = Word.new(:word => 'seance')
      expect(test_word.id()).to(eq(1))
    end
  end

  describe('.all') do
    it('will return an empty array') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('will save a word to the database array') do
      test_word = Word.new(:word => 'seance')
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it('will clear the stored words') do
      test_word = Word.new(:word => 'seance')
      test_word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('.find') do
      it('will find a word based on its identifier') do
        test_word = Word.new(:word => 'seance')
        test_word.save()
        expect(Word.find(1)).to(eq(test_word))
      end
    end

  describe('#add_definition') do
    it('will add a definition to a word') do
      test_word = Word.new(:word => 'seance')
      test_word.save()
      test_definition = Definition.new(:definition => 'a meeting at which people attempt to contact the dead')
      test_definition.save()
      test_word.add_definition(test_definition)
      expect(test_word.definitions()).to(eq([test_definition]))
    end
  end

end
