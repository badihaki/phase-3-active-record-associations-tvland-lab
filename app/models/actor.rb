require "pry"

class Actor < ActiveRecord::Base

    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        roles = []
        for char in self.characters do
            role = "#{char.name} - #{char.show.name}"
            #binding.pry
            roles << role
        end
        roles
    end
  
end