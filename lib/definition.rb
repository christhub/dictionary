class Definition

  # You only need to add definitions to words for this exercise, not to their own @@definitons array.

  # @@definitions = []

  attr_reader(:definition)

  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition)
    # @id = @@definitions.length().+(1)
  end

  # define_method(:save) do
  #   @@definitions << self
  # end

  # define_singleton_method(:all) do
  #   @@definitions
  # end

  # define_singleton_method(:clear) do
  #   @@definitions = []
  # end

  # define_singleton_method(:find) do |identifier|
  #   found_definition = nil
  #   @@definitions.each() do |definition|
  #     if definition.id == identifier
  #       found_definition = definition
  #     end
  #   end
  #   found_definition
  # end

end
