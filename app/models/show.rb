class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters

def actors_list
  show.characters.map do |eachcharacter|
    eachcharacter.actor.full_name
  end
end
  
end
