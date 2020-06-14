class Show < ActiveRecord::Base
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.characters.map do |eachcharacter|
      eachcharacter.actor
    end
  end

end
