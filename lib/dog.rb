class Dog

attr_accessor :name, :breed
attr_reader :id

  # def initialize(name:, breed:)
  #   @id = nil
  #   @name = name
  #   @breed = breed
  # end

  def initialize(attributes)
    #id: nil, name:, breed:
    attributes.each {|key, value| self.send(("#{key}="), value)}
    self.id ||= nil
  end

end
