require('rspec')
require('word')
require('definition')

describe(Definition) do

  # removed because unnecessary for this exercise (because you only need to add definitions to words, not to an @@definitions array)
  # before() do
  #   Definition.clear()
  # end

  describe('#definition') do
    it('will return the definition of a word') do
      test_definition = Definition.new(:definition => 'a meeting at which people attempt to contact the dead')
      expect(test_definition.definition()).to(eq('a meeting at which people attempt to contact the dead'))
    end
  end

  # below is all removed because unnecessary to implement these methods for this exercise

  # describe('#id') do
  #   it('will return the id number of the definiton') do
  #     test_definition = Definition.new(:definition => 'a meeting at which people attempt to contact the dead')
  #     expect(test_definition.id()).to(eq(1))
  #   end
  # end

  # describe('.all') do
  #   it('will return an empty array') do
  #     expect(Definition.all()).to(eq([]))
  #   end
  # end

  # describe('.clear') do
  #   it('will clear the array of stored defintions') do
  #     test_definition = Definition.new(:definition => 'a meeting at which people attempt to contact the dead')
  #     expect(Definition.clear()).to(eq([]))
  #   end
  # end

  # describe('.find') do
  #   it('will find a defintion based on the given id number') do
  #     test_definition = Definition.new(:definition => 'a meeting at which people attempt to contact the dead')
  #     test_definition.save()
  #     expect(Definition.find(1)).to(eq(test_definition))
  #   end
  # end

end
