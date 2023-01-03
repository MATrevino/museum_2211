class Museum
  attr_reader :name, 
              :exhibits, 
              :recommend_exhibits,
              :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit_name)
    @exhibits.push(exhibit_name)
  end

  def recommend_exhibits(patron)
    patron.interests
  end

  def admit(patron)
    @patrons.push(patron)
  end

  def patrons_by_exhibit_interest
    interest_hash = {}
    keys = @exhibits.map do |exhibit|
      exhibit.name
  
    require 'pry';binding.pry
    @patrons.each do |patron|
      if patron.interests.include?(exhibit.name)
            interest_hash[keys] = patron.name
          end
      end 
    end
  end
  

  # def ticket_lottery_contestants
  #   #returns an array of patrons that do not have enough money but are interested in exhibit
  # end

  # def draw_lottery_winner

  # end

  # def announce_lottery_winner
  #   #need stub
  # end

  # def draw_lottery_winner
  #   #need stub
  # end
end