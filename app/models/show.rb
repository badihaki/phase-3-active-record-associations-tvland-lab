require "pry"

class Show < ActiveRecord::Base

    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters

    def actors_list
        list = []
        for thespian in self.actors do
            list << thespian.full_name
            #binding.pry
        end
        list
    end
  
end