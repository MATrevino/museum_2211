class Museum
  attr_reader :name, :exhibits, :recommend_exhibits

  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit_name)
    @exhibits.push(exhibit_name)
  end

  def recommend_exhibits(patron)
    patron.interests
  end
end