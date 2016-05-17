module UnNumbers
  class UnNumber
    attr_reader :number, :variant, :name, :description, :valid_from, :valid_to
    def initialize(attrs)
      @number      = attrs[:number]
      @variant     = attrs[:variant]
      @name        = attrs[:name]
      @description = attrs[:description]
      @valid_from  = attrs[:valid_from]
      @valid_to    = attrs[:valid_to]
    end
  end
end
